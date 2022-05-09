// IModalWindow.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

typedef _Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef _Show_Dart = int Function(Pointer obj, int hwndOwner);

/// {@category Interface}
/// {@category com}
class IModalWindow extends IUnknown {
  // vtable begins at 3, ends at 3

  IModalWindow(Pointer<COMObject> ptr) : super(ptr);

  int Show(int hwndOwner) => Pointer<NativeFunction<_Show_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(3).value)
      .asFunction<_Show_Dart>()(ptr.ref.lpVtbl, hwndOwner);
}
