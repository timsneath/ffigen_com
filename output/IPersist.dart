// IPersist.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_IPersist = '{0000010c-0000-0000-C000-000000000046}';

typedef _GetClassID_Native = Int32 Function(
    Pointer obj, Pointer<CLSID> pClassID);
typedef _GetClassID_Dart = int Function(Pointer obj, Pointer<CLSID> pClassID);

/// {@category Interface}
/// {@category com}
class IPersist extends IUnknown {
  // vtable begins at 3, ends at 3

  IPersist(Pointer<COMObject> ptr) : super(ptr);

  int GetClassID(Pointer<CLSID> pClassID) =>
      Pointer<NativeFunction<_GetClassID_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetClassID_Dart>()(ptr.ref.lpVtbl, pClassID);
}
