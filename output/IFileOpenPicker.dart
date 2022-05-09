// IFileOpenPicker.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IInspectable.dart';

/// @nodoc
const IID_IFileOpenPicker = '{2CA8278A-12C5-4C5F-8977-94547793C241}';

typedef _get_ViewMode_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_ViewMode_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_ViewMode_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_ViewMode_Dart = int Function(Pointer obj, int value);

typedef _get_SettingsIdentifier_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_SettingsIdentifier_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _put_SettingsIdentifier_Native = Int32 Function(
    Pointer obj, IntPtr value);
typedef _put_SettingsIdentifier_Dart = int Function(Pointer obj, int value);

typedef _get_SuggestedStartLocation_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_SuggestedStartLocation_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _put_SuggestedStartLocation_Native = Int32 Function(
    Pointer obj, Int32 value);
typedef _put_SuggestedStartLocation_Dart = int Function(Pointer obj, int value);

typedef _get_CommitButtonText_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_CommitButtonText_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _put_CommitButtonText_Native = Int32 Function(
    Pointer obj, IntPtr value);
typedef _put_CommitButtonText_Dart = int Function(Pointer obj, int value);

typedef _get_FileTypeFilter_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_FileTypeFilter_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _PickSingleFileAsync_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> operation);
typedef _PickSingleFileAsync_Dart = int Function(
    Pointer obj, Pointer<IntPtr> operation);

typedef _PickMultipleFilesAsync_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> operation);
typedef _PickMultipleFilesAsync_Dart = int Function(
    Pointer obj, Pointer<IntPtr> operation);

/// {@category Interface}
/// {@category winrt}
class IFileOpenPicker extends IInspectable {
  // vtable begins at 6, ends at 16

  IFileOpenPicker(Pointer<COMObject> ptr) : super(ptr);

  int get ViewMode {
    final retValuePtr = calloc<Int32>();

    final hr = Pointer<NativeFunction<_get_ViewMode_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(6).value)
        .asFunction<_get_ViewMode_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    calloc.free(retValuePtr);
    return retValue;
  }

  set ViewMode(int value) {
    final hr = Pointer<NativeFunction<_put_ViewMode_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<_put_ViewMode_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SettingsIdentifier {
    final retValuePtr = calloc<IntPtr>();

    final hr =
        Pointer<NativeFunction<_get_SettingsIdentifier_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(8).value)
                .asFunction<_get_SettingsIdentifier_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    calloc.free(retValuePtr);
    return retValue;
  }

  set SettingsIdentifier(int value) {
    final hr =
        Pointer<NativeFunction<_put_SettingsIdentifier_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(9).value)
            .asFunction<_put_SettingsIdentifier_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SuggestedStartLocation {
    final retValuePtr = calloc<Int32>();

    final hr =
        Pointer<NativeFunction<_get_SuggestedStartLocation_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(10).value)
                .asFunction<_get_SuggestedStartLocation_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    calloc.free(retValuePtr);
    return retValue;
  }

  set SuggestedStartLocation(int value) {
    final hr =
        Pointer<NativeFunction<_put_SuggestedStartLocation_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(11).value)
                .asFunction<_put_SuggestedStartLocation_Dart>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get CommitButtonText {
    final retValuePtr = calloc<IntPtr>();

    final hr =
        Pointer<NativeFunction<_get_CommitButtonText_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(12).value)
                .asFunction<_get_CommitButtonText_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    calloc.free(retValuePtr);
    return retValue;
  }

  set CommitButtonText(int value) {
    final hr =
        Pointer<NativeFunction<_put_CommitButtonText_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(13).value)
            .asFunction<_put_CommitButtonText_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get FileTypeFilter {
    final retValuePtr = calloc<IntPtr>();

    final hr = Pointer<NativeFunction<_get_FileTypeFilter_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(14).value)
        .asFunction<_get_FileTypeFilter_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    calloc.free(retValuePtr);
    return retValue;
  }

  int PickSingleFileAsync(Pointer<IntPtr> operation) =>
      Pointer<NativeFunction<_PickSingleFileAsync_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<_PickSingleFileAsync_Dart>()(ptr.ref.lpVtbl, operation);

  int PickMultipleFilesAsync(Pointer<IntPtr> operation) =>
      Pointer<NativeFunction<_PickMultipleFilesAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<_PickMultipleFilesAsync_Dart>()(
          ptr.ref.lpVtbl, operation);
}
