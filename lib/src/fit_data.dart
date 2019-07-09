part of fit_kit;

class FitData {
  final num value;
  final DateTime dateFrom;
  final DateTime dateTo;
  final String uuid;
  final String source;

  FitData(this.value, this.dateFrom, this.dateTo, this.source, this.uuid);

  FitData.fromJson(Map<dynamic, dynamic> json)
      : value = json['value'],
        dateFrom = DateTime.fromMillisecondsSinceEpoch(json['date_from']),
        dateTo = DateTime.fromMillisecondsSinceEpoch(json['date_to']),
        source = json['source'],
        uuid = json['uuid'];

  @override
  String toString() =>
      'FitData(value: $value, dateFrom: $dateFrom, dateTo: $dateTo, source: $source, uuid: $uuid)';
}
