// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'function.dart';
import 'signature.dart';
import 'win32api.dart';
import 'win32types.dart';

String wrapCommentText(String inputText, [int wrapLength = 76]) {
  final words = inputText.split(' ');
  final textLine = StringBuffer('/// ');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine.clear();
      textLine.write('/// $word ');
    } else {
      textLine.write('$word ');
    }
  }

  outputText.write(textLine);
  return outputText.toString().trimRight();
}

String generateDocComment(Win32Function func) {
  final comment = StringBuffer();

  if (func.comment.isNotEmpty) {
    comment.writeln(wrapCommentText(func.comment));
    comment.writeln('///');
  }

  comment.writeln('/// ```c');
  comment.write('/// ');
  comment.writeln(func.prototype.first.split('\\n').join('\n/// '));
  comment.writeln('/// ```');

  comment.write('/// {@category ${func.category}}');
  return comment.toString();
}

void generateFfiFiles(Win32API win32) {
  // Generate a list of libs, e.g. [kernel32, gdi32, ...]
  // The .toSet() removes duplicates.
  final libraries =
      win32.functions.values.map((e) => e.dllLibrary).toSet().toList();

  for (final library in libraries) {
    final writer = File('lib/src/$library.dart').openSync(mode: FileMode.write);

    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_');

    writer.writeStringSync('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'com/combase.dart';
import 'structs.dart';

final _$libraryDartName = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');\n
''');

    final filteredFunctionList =
        win32.functions.values.where((func) => func.dllLibrary == library);

    for (final function in filteredFunctionList) {
      final apiName = function.signature.nameWithoutEncoding;
      final returnFFIType = ffiFromWin32(function.signature.returnType);
      final returnDartType = Win32Param([returnFFIType, '']).dartType;

      final nativeParams = function.signature.params
          .map((param) => '${param.ffiType} ${param.name}')
          .join(', ');

      final dartParams = function.signature.params
          .map((param) => '${param.dartType} ${param.name}')
          .join(', ');

      final paramsList =
          function.signature.params.map((param) => param.name).join(', ');

      writer.writeStringSync('''
${generateDocComment(function)}
$returnDartType $apiName(${function.signature.params.map((param) => '${param.dartType} ${param.name}').join(', ')}) {
  final _$apiName = _$libraryDartName.lookupFunction<
    $returnFFIType Function($nativeParams),
    $returnDartType Function($dartParams)>
    ('${function.signature.name}');
  return _$apiName($paramsList);
}
''');
    }

    writer.closeSync();
  }
}

void main() {
  final win32 = Win32API('tool/win32/win32api.json');

  generateFfiFiles(win32);
  print('${win32.functions.length} typedefs generated.');
}
