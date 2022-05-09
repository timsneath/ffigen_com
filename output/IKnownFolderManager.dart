// IKnownFolderManager.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const CLSID_KnownFolderManager = '{4df0c730-df9d-4ae3-9153-aa6b82e9795a}';

/// @nodoc
const IID_IKnownFolderManager = '{8BE2D872-86AA-4d47-B776-32CCA40C7018}';

typedef _FolderIdFromCsidl_Native = Int32 Function(
    Pointer obj, Int32 nCsidl, Pointer<GUID> pfid);
typedef _FolderIdFromCsidl_Dart = int Function(
    Pointer obj, int nCsidl, Pointer<GUID> pfid);

typedef _FolderIdToCsidl_Native = Int32 Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<Int32> pnCsidl);
typedef _FolderIdToCsidl_Dart = int Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<Int32> pnCsidl);

typedef _GetFolderIds_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppKFId, Pointer<Uint32> pCount);
typedef _GetFolderIds_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppKFId, Pointer<Uint32> pCount);

typedef _GetFolder_Native = Int32 Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<IntPtr> ppkf);
typedef _GetFolder_Dart = int Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<IntPtr> ppkf);

typedef _GetFolderByName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszCanonicalName, Pointer<IntPtr> ppkf);
typedef _GetFolderByName_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszCanonicalName, Pointer<IntPtr> ppkf);

typedef _RegisterFolder_Native = Int32 Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<KNOWNFOLDER_DEFINITION> pKFD);
typedef _RegisterFolder_Dart = int Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<KNOWNFOLDER_DEFINITION> pKFD);

typedef _UnregisterFolder_Native = Int32 Function(
    Pointer obj, Pointer<GUID> rfid);
typedef _UnregisterFolder_Dart = int Function(Pointer obj, Pointer<GUID> rfid);

typedef _FindFolderFromPath_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszPath, Int32 mode, Pointer<IntPtr> ppkf);
typedef _FindFolderFromPath_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszPath, int mode, Pointer<IntPtr> ppkf);

typedef _FindFolderFromIDList_Native = Int32 Function(
    Pointer obj, Pointer<SHITEMID> pidl, Pointer<IntPtr> ppkf);
typedef _FindFolderFromIDList_Dart = int Function(
    Pointer obj, Pointer<SHITEMID> pidl, Pointer<IntPtr> ppkf);

typedef _Redirect_Native = Int32 Function(
    Pointer obj,
    Pointer<GUID> rfid,
    IntPtr hwnd,
    Uint32 flags,
    Pointer<Utf16> pszTargetPath,
    Uint32 cFolders,
    Pointer<GUID> pExclusion,
    Pointer<Utf16> ppszError);
typedef _Redirect_Dart = int Function(
    Pointer obj,
    Pointer<GUID> rfid,
    int hwnd,
    int flags,
    Pointer<Utf16> pszTargetPath,
    int cFolders,
    Pointer<GUID> pExclusion,
    Pointer<Utf16> ppszError);

/// {@category Interface}
/// {@category com}
class IKnownFolderManager extends IUnknown {
  // vtable begins at 3, ends at 12

  IKnownFolderManager(Pointer<COMObject> ptr) : super(ptr);

  int FolderIdFromCsidl(int nCsidl, Pointer<GUID> pfid) =>
      Pointer<NativeFunction<_FolderIdFromCsidl_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_FolderIdFromCsidl_Dart>()(ptr.ref.lpVtbl, nCsidl, pfid);

  int FolderIdToCsidl(Pointer<GUID> rfid, Pointer<Int32> pnCsidl) =>
      Pointer<NativeFunction<_FolderIdToCsidl_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_FolderIdToCsidl_Dart>()(ptr.ref.lpVtbl, rfid, pnCsidl);

  int GetFolderIds(Pointer<IntPtr> ppKFId, Pointer<Uint32> pCount) =>
      Pointer<NativeFunction<_GetFolderIds_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetFolderIds_Dart>()(ptr.ref.lpVtbl, ppKFId, pCount);

  int GetFolder(Pointer<GUID> rfid, Pointer<IntPtr> ppkf) =>
      Pointer<NativeFunction<_GetFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetFolder_Dart>()(ptr.ref.lpVtbl, rfid, ppkf);

  int GetFolderByName(Pointer<Utf16> pszCanonicalName, Pointer<IntPtr> ppkf) =>
      Pointer<NativeFunction<_GetFolderByName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_GetFolderByName_Dart>()(
          ptr.ref.lpVtbl, pszCanonicalName, ppkf);

  int RegisterFolder(
          Pointer<GUID> rfid, Pointer<KNOWNFOLDER_DEFINITION> pKFD) =>
      Pointer<NativeFunction<_RegisterFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_RegisterFolder_Dart>()(ptr.ref.lpVtbl, rfid, pKFD);

  int UnregisterFolder(Pointer<GUID> rfid) =>
      Pointer<NativeFunction<_UnregisterFolder_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_UnregisterFolder_Dart>()(ptr.ref.lpVtbl, rfid);

  int FindFolderFromPath(
          Pointer<Utf16> pszPath, int mode, Pointer<IntPtr> ppkf) =>
      Pointer<NativeFunction<_FindFolderFromPath_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_FindFolderFromPath_Dart>()(
          ptr.ref.lpVtbl, pszPath, mode, ppkf);

  int FindFolderFromIDList(Pointer<SHITEMID> pidl, Pointer<IntPtr> ppkf) =>
      Pointer<NativeFunction<_FindFolderFromIDList_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_FindFolderFromIDList_Dart>()(ptr.ref.lpVtbl, pidl, ppkf);

  int Redirect(
          Pointer<GUID> rfid,
          int hwnd,
          int flags,
          Pointer<Utf16> pszTargetPath,
          int cFolders,
          Pointer<GUID> pExclusion,
          Pointer<Utf16> ppszError) =>
      Pointer<NativeFunction<_Redirect_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<_Redirect_Dart>()(ptr.ref.lpVtbl, rfid, hwnd, flags,
          pszTargetPath, cFolders, pExclusion, ppszError);
}

/// {@category com}
class KnownFolderManager extends IKnownFolderManager {
  KnownFolderManager(Pointer<COMObject> ptr) : super(ptr);

  factory KnownFolderManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_KnownFolderManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IKnownFolderManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return KnownFolderManager(ptr);
    } finally {
      calloc.free(clsid);
      calloc.free(iid);
    }
  }
}
