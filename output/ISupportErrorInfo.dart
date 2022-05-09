// ISupportErrorInfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_ISupportErrorInfo = '{DF0B3D60-548F-101B-8E65-08002B2BD119}';

typedef _InterfaceSupportsErrorInfo_Native = Int32 Function(
    Pointer obj, Pointer<GUID> riid);
typedef _InterfaceSupportsErrorInfo_Dart = int Function(
    Pointer obj, Pointer<GUID> riid);

/// {@category Interface}
/// {@category com}
class ISupportErrorInfo extends IUnknown {
  // vtable begins at 3, ends at 3

  ISupportErrorInfo(Pointer<COMObject> ptr) : super(ptr);

  int InterfaceSupportsErrorInfo(Pointer<GUID> riid) =>
      Pointer<NativeFunction<_InterfaceSupportsErrorInfo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_InterfaceSupportsErrorInfo_Dart>()(ptr.ref.lpVtbl, riid);
}
