// ISequentialStream.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_ISequentialStream = '{0c733a30-2a1c-11ce-ade5-00aa0044773d}';

typedef _Read_Native = Int32 Function(
    Pointer obj, Pointer<Void> pv, Uint32 cb, Pointer<Uint32> pcbRead);
typedef _Read_Dart = int Function(
    Pointer obj, Pointer<Void> pv, int cb, Pointer<Uint32> pcbRead);

typedef _Write_Native = Int32 Function(
    Pointer obj, Pointer<Void> pv, Uint32 cb, Pointer<Uint32> pcbWritten);
typedef _Write_Dart = int Function(
    Pointer obj, Pointer<Void> pv, int cb, Pointer<Uint32> pcbWritten);

/// {@category Interface}
/// {@category com}
class ISequentialStream extends IUnknown {
  // vtable begins at 3, ends at 4

  ISequentialStream(Pointer<COMObject> ptr) : super(ptr);

  int Read(Pointer<Void> pv, int cb, Pointer<Uint32> pcbRead) =>
      Pointer<NativeFunction<_Read_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_Read_Dart>()(ptr.ref.lpVtbl, pv, cb, pcbRead);

  int Write(Pointer<Void> pv, int cb, Pointer<Uint32> pcbWritten) =>
      Pointer<NativeFunction<_Write_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_Write_Dart>()(ptr.ref.lpVtbl, pv, cb, pcbWritten);
}
