// IEnumNetworks.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IDispatch.dart';

/// @nodoc
const IID_IEnumNetworks = '{DCB00003-570F-4A9B-8D69-199FDBA5723B}';

typedef _get__NewEnum_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppEnumVar);
typedef _get__NewEnum_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppEnumVar);

typedef _Next_Native = Int32 Function(Pointer obj, Uint32 celt,
    Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched);
typedef _Next_Dart = int Function(
    Pointer obj, int celt, Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched);

typedef _Skip_Native = Int32 Function(Pointer obj, Uint32 celt);
typedef _Skip_Dart = int Function(Pointer obj, int celt);

typedef _Reset_Native = Int32 Function(Pointer obj);
typedef _Reset_Dart = int Function(Pointer obj);

typedef _Clone_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppEnumNetwork);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppEnumNetwork);

/// {@category Interface}
/// {@category com}
class IEnumNetworks extends IDispatch {
  // vtable begins at 7, ends at 11

  IEnumNetworks(Pointer<COMObject> ptr) : super(ptr);

  int get NewEnum {
    final retValuePtr = calloc<IntPtr>();

    final hr = Pointer<NativeFunction<_get__NewEnum_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<_get__NewEnum_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    calloc.free(retValuePtr);
    return retValue;
  }

  int Next(int celt, Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched) =>
      Pointer<NativeFunction<_Next_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_Next_Dart>()(ptr.ref.lpVtbl, celt, rgelt, pceltFetched);

  int Skip(int celt) => Pointer<NativeFunction<_Skip_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(9).value)
      .asFunction<_Skip_Dart>()(ptr.ref.lpVtbl, celt);

  int Reset() => Pointer<NativeFunction<_Reset_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(10).value)
      .asFunction<_Reset_Dart>()(ptr.ref.lpVtbl);

  int Clone(Pointer<IntPtr> ppEnumNetwork) =>
      Pointer<NativeFunction<_Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppEnumNetwork);
}
