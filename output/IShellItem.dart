// IShellItem.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_IShellItem = '{43826d1e-e718-42ee-bc55-a1e261c37bfe}';

typedef _BindToHandler_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<GUID> bhid,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppv);
typedef _BindToHandler_Dart = int Function(Pointer obj, Pointer<COMObject> pbc,
    Pointer<GUID> bhid, Pointer<GUID> riid, Pointer<IntPtr> ppv);

typedef _GetParent_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppsi);
typedef _GetParent_Dart = int Function(Pointer obj, Pointer<IntPtr> ppsi);

typedef _GetDisplayName_Native = Int32 Function(
    Pointer obj, Uint32 sigdnName, Pointer<Utf16> ppszName);
typedef _GetDisplayName_Dart = int Function(
    Pointer obj, int sigdnName, Pointer<Utf16> ppszName);

typedef _GetAttributes_Native = Int32 Function(
    Pointer obj, Uint32 sfgaoMask, Pointer<Uint32> psfgaoAttribs);
typedef _GetAttributes_Dart = int Function(
    Pointer obj, int sfgaoMask, Pointer<Uint32> psfgaoAttribs);

typedef _Compare_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi, Uint32 hint, Pointer<Int32> piOrder);
typedef _Compare_Dart = int Function(
    Pointer obj, Pointer<COMObject> psi, int hint, Pointer<Int32> piOrder);

/// {@category Interface}
/// {@category com}
class IShellItem extends IUnknown {
  // vtable begins at 3, ends at 7

  IShellItem(Pointer<COMObject> ptr) : super(ptr);

  int BindToHandler(Pointer<COMObject> pbc, Pointer<GUID> bhid,
          Pointer<GUID> riid, Pointer<IntPtr> ppv) =>
      Pointer<NativeFunction<_BindToHandler_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_BindToHandler_Dart>()(
          ptr.ref.lpVtbl, pbc, bhid, riid, ppv);

  int GetParent(Pointer<IntPtr> ppsi) =>
      Pointer<NativeFunction<_GetParent_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetParent_Dart>()(ptr.ref.lpVtbl, ppsi);

  int GetDisplayName(int sigdnName, Pointer<Utf16> ppszName) =>
      Pointer<NativeFunction<_GetDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_GetDisplayName_Dart>()(
          ptr.ref.lpVtbl, sigdnName, ppszName);

  int GetAttributes(int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      Pointer<NativeFunction<_GetAttributes_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_GetAttributes_Dart>()(
          ptr.ref.lpVtbl, sfgaoMask, psfgaoAttribs);

  int Compare(Pointer<COMObject> psi, int hint, Pointer<Int32> piOrder) =>
      Pointer<NativeFunction<_Compare_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_Compare_Dart>()(ptr.ref.lpVtbl, psi, hint, piOrder);
}
