// IShellItemFilter.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_IShellItemFilter = '{2659B475-EEB8-48b7-8F07-B378810F48CF}';

typedef _IncludeItem_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi);
typedef _IncludeItem_Dart = int Function(Pointer obj, Pointer<COMObject> psi);

typedef _GetEnumFlagsForItem_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi, Pointer<Uint32> pgrfFlags);
typedef _GetEnumFlagsForItem_Dart = int Function(
    Pointer obj, Pointer<COMObject> psi, Pointer<Uint32> pgrfFlags);

/// {@category Interface}
/// {@category com}
class IShellItemFilter extends IUnknown {
  // vtable begins at 3, ends at 4

  IShellItemFilter(Pointer<COMObject> ptr) : super(ptr);

  int IncludeItem(Pointer<COMObject> psi) =>
      Pointer<NativeFunction<_IncludeItem_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_IncludeItem_Dart>()(ptr.ref.lpVtbl, psi);

  int GetEnumFlagsForItem(Pointer<COMObject> psi, Pointer<Uint32> pgrfFlags) =>
      Pointer<NativeFunction<_GetEnumFlagsForItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_GetEnumFlagsForItem_Dart>()(
          ptr.ref.lpVtbl, psi, pgrfFlags);
}
