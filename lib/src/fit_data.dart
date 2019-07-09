part of fit_kit;

class FitData {
  final List<FitDataField> fields;
  final DateTime dateFrom;
  final DateTime dateTo;
  final String uuid;
  final String source;

  FitData(this.fields, this.dateFrom, this.dateTo, this.source, this.uuid);

  FitData.fromJson(Map<dynamic, dynamic> json)
      : fields = json['fields'] != null ? convertToDataFieldList(json['fields']): null,
        dateFrom = DateTime.fromMillisecondsSinceEpoch(json['date_from']),
        dateTo = DateTime.fromMillisecondsSinceEpoch(json['date_to']),
        source = json['source'],
        uuid = json['uuid'];

  @override
  String toString() {
    return 'FitData{fields: $fields, dateFrom: $dateFrom, dateTo: $dateTo, uuid: $uuid, source: $source}';
  }


  static List<FitDataField> convertToDataFieldList(json){
    var fieldList = List<FitDataField>();
    (json as List).forEach((f) {
      final converted = FitDataField.fromJson(f);
      fieldList.add(converted);
    });
    return fieldList;
  }
}

class FitDataField {
  final String name;
  final num value;

  FitDataField(this.name, this.value);

  FitDataField.fromJson(Map<dynamic, dynamic> json):
      name = json['name'],
      value = json['value'];

  @override
  String toString() {
    return 'FitDataField{name: $name, value: $value}';
  }


}
