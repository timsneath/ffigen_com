// IPersistStream.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IPersist.dart';

/// @nodoc
const IID_IPersistStream = '{00000109-0000-0000-C000-000000000046}';

typedef _IsDirty_Native = Int32 Function(Pointer obj);
typedef _IsDirty_Dart = int Function(Pointer obj);

typedef _Load_Native = Int32 Function(Pointer obj, Pointer<COMObject> pStm);
typedef _Load_Dart = int Function(Pointer obj, Pointer<COMObject> pStm);

typedef _Save_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pStm, Int32 fClearDirty);
typedef _Save_Dart = int Function(
    Pointer obj, Pointer<COMObject> pStm, int fClearDirty);

typedef _GetSizeMax_Native = Int32 Function(
    Pointer obj, Pointer<Uint64> pcbSize);
typedef _GetSizeMax_Dart = int Function(Pointer obj, Pointer<Uint64> pcbSize);

/// {@category Interface}
/// {@category com}
class IPersistStream extends IPersist {
  // vtable begins at 4, ends at 7

  IPersistStream(Pointer<COMObject> ptr) : super(ptr);

  int IsDirty() => Pointer<NativeFunction<_IsDirty_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(4).value)
      .asFunction<_IsDirty_Dart>()(ptr.ref.lpVtbl);

  int Load(Pointer<COMObject> pStm) =>
      Pointer<NativeFunction<_Load_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_Load_Dart>()(ptr.ref.lpVtbl, pStm);

  int Save(Pointer<COMObject> pStm, int fClearDirty) =>
      Pointer<NativeFunction<_Save_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Save_Dart>()(ptr.ref.lpVtbl, pStm, fClearDirty);

  int GetSizeMax(Pointer<Uint64> pcbSize) =>
      Pointer<NativeFunction<_GetSizeMax_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetSizeMax_Dart>()(ptr.ref.lpVtbl, pcbSize);
}
