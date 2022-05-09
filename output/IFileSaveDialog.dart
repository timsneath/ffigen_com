// IFileSaveDialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IFileDialog.dart';

/// @nodoc
const CLSID_FileSaveDialog = '{C0B4E2F3-BA21-4773-8DBA-335EC946EB8B}';

/// @nodoc
const IID_IFileSaveDialog = '{84bccd23-5fde-4cdb-aea4-af64b83d78ab}';

typedef _SetSaveAsItem_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi);
typedef _SetSaveAsItem_Dart = int Function(Pointer obj, Pointer<COMObject> psi);

typedef _SetProperties_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pStore);
typedef _SetProperties_Dart = int Function(
    Pointer obj, Pointer<COMObject> pStore);

typedef _SetCollectedProperties_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pList, Int32 fAppendDefault);
typedef _SetCollectedProperties_Dart = int Function(
    Pointer obj, Pointer<COMObject> pList, int fAppendDefault);

typedef _GetProperties_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppStore);
typedef _GetProperties_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppStore);

typedef _ApplyProperties_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> psi,
    Pointer<COMObject> pStore,
    IntPtr hwnd,
    Pointer<COMObject> pSink);
typedef _ApplyProperties_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> psi,
    Pointer<COMObject> pStore,
    int hwnd,
    Pointer<COMObject> pSink);

/// {@category Interface}
/// {@category com}
class IFileSaveDialog extends IFileDialog {
  // vtable begins at 27, ends at 31

  IFileSaveDialog(Pointer<COMObject> ptr) : super(ptr);

  int SetSaveAsItem(Pointer<COMObject> psi) =>
      Pointer<NativeFunction<_SetSaveAsItem_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<_SetSaveAsItem_Dart>()(ptr.ref.lpVtbl, psi);

  int SetProperties(Pointer<COMObject> pStore) =>
      Pointer<NativeFunction<_SetProperties_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(28).value)
          .asFunction<_SetProperties_Dart>()(ptr.ref.lpVtbl, pStore);

  int SetCollectedProperties(Pointer<COMObject> pList, int fAppendDefault) =>
      Pointer<NativeFunction<_SetCollectedProperties_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(29).value)
              .asFunction<_SetCollectedProperties_Dart>()(
          ptr.ref.lpVtbl, pList, fAppendDefault);

  int GetProperties(Pointer<IntPtr> ppStore) =>
      Pointer<NativeFunction<_GetProperties_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(30).value)
          .asFunction<_GetProperties_Dart>()(ptr.ref.lpVtbl, ppStore);

  int ApplyProperties(Pointer<COMObject> psi, Pointer<COMObject> pStore,
          int hwnd, Pointer<COMObject> pSink) =>
      Pointer<NativeFunction<_ApplyProperties_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(31).value)
              .asFunction<_ApplyProperties_Dart>()(
          ptr.ref.lpVtbl, psi, pStore, hwnd, pSink);
}

/// {@category com}
class FileSaveDialog extends IFileSaveDialog {
  FileSaveDialog(Pointer<COMObject> ptr) : super(ptr);

  factory FileSaveDialog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FileSaveDialog);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFileSaveDialog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FileSaveDialog(ptr);
    } finally {
      calloc.free(clsid);
      calloc.free(iid);
    }
  }
}
