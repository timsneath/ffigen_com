// IProvideClassInfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_IProvideClassInfo = '{B196B283-BAB4-101A-B69C-00AA00341D07}';

typedef _GetClassInfo_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppTI);
typedef _GetClassInfo_Dart = int Function(Pointer obj, Pointer<IntPtr> ppTI);

/// {@category Interface}
/// {@category com}
class IProvideClassInfo extends IUnknown {
  // vtable begins at 3, ends at 3

  IProvideClassInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetClassInfo(Pointer<IntPtr> ppTI) =>
      Pointer<NativeFunction<_GetClassInfo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetClassInfo_Dart>()(ptr.ref.lpVtbl, ppTI);
}
