// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationResultsStruct extends BaseStruct {
  MedicationResultsStruct({
    String? productNdc,
    String? brandName,
    String? genericName,
  })  : _productNdc = productNdc,
        _brandName = brandName,
        _genericName = genericName;

  // "product_ndc" field.
  String? _productNdc;
  String get productNdc => _productNdc ?? '';
  set productNdc(String? val) => _productNdc = val;

  bool hasProductNdc() => _productNdc != null;

  // "brand_name" field.
  String? _brandName;
  String get brandName => _brandName ?? '';
  set brandName(String? val) => _brandName = val;

  bool hasBrandName() => _brandName != null;

  // "generic_name" field.
  String? _genericName;
  String get genericName => _genericName ?? '';
  set genericName(String? val) => _genericName = val;

  bool hasGenericName() => _genericName != null;

  static MedicationResultsStruct fromMap(Map<String, dynamic> data) =>
      MedicationResultsStruct(
        productNdc: data['product_ndc'] as String?,
        brandName: data['brand_name'] as String?,
        genericName: data['generic_name'] as String?,
      );

  static MedicationResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? MedicationResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_ndc': _productNdc,
        'brand_name': _brandName,
        'generic_name': _genericName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_ndc': serializeParam(
          _productNdc,
          ParamType.String,
        ),
        'brand_name': serializeParam(
          _brandName,
          ParamType.String,
        ),
        'generic_name': serializeParam(
          _genericName,
          ParamType.String,
        ),
      }.withoutNulls;

  static MedicationResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MedicationResultsStruct(
        productNdc: deserializeParam(
          data['product_ndc'],
          ParamType.String,
          false,
        ),
        brandName: deserializeParam(
          data['brand_name'],
          ParamType.String,
          false,
        ),
        genericName: deserializeParam(
          data['generic_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MedicationResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MedicationResultsStruct &&
        productNdc == other.productNdc &&
        brandName == other.brandName &&
        genericName == other.genericName;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([productNdc, brandName, genericName]);
}

MedicationResultsStruct createMedicationResultsStruct({
  String? productNdc,
  String? brandName,
  String? genericName,
}) =>
    MedicationResultsStruct(
      productNdc: productNdc,
      brandName: brandName,
      genericName: genericName,
    );
