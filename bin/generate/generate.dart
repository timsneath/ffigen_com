// generate.dart

// The main entrypoint for the generate tool.

// This utility takes three parameters -- an input and an output directory, and
// an optional tests directory. It reads IDL or H files from the input
// directory, parses them into an internal representation and then emits them as
// Dart files in the output directory, overwriting existing files as necessary.

import 'dart:io';

import 'parse.dart';

void main(List<String> args) {
  final inputDirectory = Directory(args.length >= 2 ? args[0] : 'input');
  final outputDirectory = Directory(args.length >= 2 ? args[1] : 'output');

  for (final inputFile in inputDirectory.listSync()) {
    if (inputFile is File) {
      print('Converting:    ${inputFile.path}');
      final parsedFile = loadSource(inputFile);
      File('${outputDirectory.uri.toFilePath()}${parsedFile.name}.dart')
          .writeAsStringSync(parsedFile.toString());
    }
  }
}
