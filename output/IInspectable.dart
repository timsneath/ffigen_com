// IInspectable.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_IInspectable = '{AF86E2E0-B12D-4c6a-9C5A-D7AA65101E90}';

typedef _GetIids_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> iidCount, Pointer<IntPtr> iids);
typedef _GetIids_Dart = int Function(
    Pointer obj, Pointer<Uint32> iidCount, Pointer<IntPtr> iids);

typedef _GetRuntimeClassName_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> className);
typedef _GetRuntimeClassName_Dart = int Function(
    Pointer obj, Pointer<IntPtr> className);

typedef _GetTrustLevel_Native = Int32 Function(
    Pointer obj, Pointer<Int32> trustLevel);
typedef _GetTrustLevel_Dart = int Function(
    Pointer obj, Pointer<Int32> trustLevel);

/// {@category Interface}
/// {@category com}
class IInspectable extends IUnknown {
  // vtable begins at 3, ends at 5

  IInspectable(Pointer<COMObject> ptr) : super(ptr);

  int GetIids(Pointer<Uint32> iidCount, Pointer<IntPtr> iids) =>
      Pointer<NativeFunction<_GetIids_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetIids_Dart>()(ptr.ref.lpVtbl, iidCount, iids);

  int GetRuntimeClassName(Pointer<IntPtr> className) =>
      Pointer<NativeFunction<_GetRuntimeClassName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetRuntimeClassName_Dart>()(ptr.ref.lpVtbl, className);

  int GetTrustLevel(Pointer<Int32> trustLevel) =>
      Pointer<NativeFunction<_GetTrustLevel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetTrustLevel_Dart>()(ptr.ref.lpVtbl, trustLevel);
}
