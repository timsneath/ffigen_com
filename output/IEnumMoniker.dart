// IEnumMoniker.dart

// THIS FILE IS GENERATED AUTOMATICALLY.

// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown, IDispatch, IInspectable;

import 'IUnknown.dart';

/// @nodoc
const IID_IEnumMoniker = '{00000102-0000-0000-C000-000000000046}';

typedef _Next_Native = Int32 Function(Pointer obj, Uint32 celt,
    Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched);
typedef _Next_Dart = int Function(
    Pointer obj, int celt, Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched);

typedef _Skip_Native = Int32 Function(Pointer obj, Uint32 celt);
typedef _Skip_Dart = int Function(Pointer obj, int celt);

typedef _Reset_Native = Int32 Function(Pointer obj);
typedef _Reset_Dart = int Function(Pointer obj);

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppenum);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppenum);

/// {@category Interface}
/// {@category com}
class IEnumMoniker extends IUnknown {
  // vtable begins at 3, ends at 6

  IEnumMoniker(Pointer<COMObject> ptr) : super(ptr);

  int Next(int celt, Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched) =>
      Pointer<NativeFunction<_Next_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_Next_Dart>()(ptr.ref.lpVtbl, celt, rgelt, pceltFetched);

  int Skip(int celt) => Pointer<NativeFunction<_Skip_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(4).value)
      .asFunction<_Skip_Dart>()(ptr.ref.lpVtbl, celt);

  int Reset() => Pointer<NativeFunction<_Reset_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(5).value)
      .asFunction<_Reset_Dart>()(ptr.ref.lpVtbl);

  int Clone(Pointer<IntPtr> ppenum) =>
      Pointer<NativeFunction<_Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppenum);
}
