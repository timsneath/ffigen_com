// IBindCtx.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_IBindCtx = '{0000000e-0000-0000-C000-000000000046}';

typedef _RegisterObjectBound_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> punk);
typedef _RegisterObjectBound_Dart = int Function(
    Pointer obj, Pointer<COMObject> punk);

typedef _RevokeObjectBound_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> punk);
typedef _RevokeObjectBound_Dart = int Function(
    Pointer obj, Pointer<COMObject> punk);

typedef _ReleaseBoundObjects_Native = Int32 Function(Pointer obj);
typedef _ReleaseBoundObjects_Dart = int Function(Pointer obj);

typedef _SetBindOptions_Native = Int32 Function(
    Pointer obj, Pointer<BIND_OPTS> pbindopts);
typedef _SetBindOptions_Dart = int Function(
    Pointer obj, Pointer<BIND_OPTS> pbindopts);

typedef _GetBindOptions_Native = Int32 Function(
    Pointer obj, Pointer<BIND_OPTS> pbindopts);
typedef _GetBindOptions_Dart = int Function(
    Pointer obj, Pointer<BIND_OPTS> pbindopts);

typedef _GetRunningObjectTable_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> pprot);
typedef _GetRunningObjectTable_Dart = int Function(
    Pointer obj, Pointer<IntPtr> pprot);

typedef _RegisterObjectParam_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszKey, Pointer<COMObject> punk);
typedef _RegisterObjectParam_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszKey, Pointer<COMObject> punk);

typedef _GetObjectParam_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszKey, Pointer<IntPtr> ppunk);
typedef _GetObjectParam_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszKey, Pointer<IntPtr> ppunk);

typedef _EnumObjectParam_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppenum);
typedef _EnumObjectParam_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppenum);

typedef _RevokeObjectParam_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszKey);
typedef _RevokeObjectParam_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszKey);

/// {@category Interface}
/// {@category com}
class IBindCtx extends IUnknown {
  // vtable begins at 3, ends at 12

  IBindCtx(Pointer<COMObject> ptr) : super(ptr);

  int RegisterObjectBound(Pointer<COMObject> punk) =>
      Pointer<NativeFunction<_RegisterObjectBound_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_RegisterObjectBound_Dart>()(ptr.ref.lpVtbl, punk);

  int RevokeObjectBound(Pointer<COMObject> punk) =>
      Pointer<NativeFunction<_RevokeObjectBound_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_RevokeObjectBound_Dart>()(ptr.ref.lpVtbl, punk);

  int ReleaseBoundObjects() =>
      Pointer<NativeFunction<_ReleaseBoundObjects_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_ReleaseBoundObjects_Dart>()(ptr.ref.lpVtbl);

  int SetBindOptions(Pointer<BIND_OPTS> pbindopts) =>
      Pointer<NativeFunction<_SetBindOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_SetBindOptions_Dart>()(ptr.ref.lpVtbl, pbindopts);

  int GetBindOptions(Pointer<BIND_OPTS> pbindopts) =>
      Pointer<NativeFunction<_GetBindOptions_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetBindOptions_Dart>()(ptr.ref.lpVtbl, pbindopts);

  int GetRunningObjectTable(Pointer<IntPtr> pprot) =>
      Pointer<NativeFunction<_GetRunningObjectTable_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_GetRunningObjectTable_Dart>()(ptr.ref.lpVtbl, pprot);

  int RegisterObjectParam(Pointer<Utf16> pszKey, Pointer<COMObject> punk) =>
      Pointer<NativeFunction<_RegisterObjectParam_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_RegisterObjectParam_Dart>()(
          ptr.ref.lpVtbl, pszKey, punk);

  int GetObjectParam(Pointer<Utf16> pszKey, Pointer<IntPtr> ppunk) =>
      Pointer<NativeFunction<_GetObjectParam_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_GetObjectParam_Dart>()(ptr.ref.lpVtbl, pszKey, ppunk);

  int EnumObjectParam(Pointer<IntPtr> ppenum) =>
      Pointer<NativeFunction<_EnumObjectParam_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_EnumObjectParam_Dart>()(ptr.ref.lpVtbl, ppenum);

  int RevokeObjectParam(Pointer<Utf16> pszKey) =>
      Pointer<NativeFunction<_RevokeObjectParam_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_RevokeObjectParam_Dart>()(ptr.ref.lpVtbl, pszKey);
}
