import 'CurrentMeasurement.dart';
import 'GaugeZero.dart';

class Timeseries {
  String? shortname;
  String? longname;
  String? unit;
  int? equidistance;
  CurrentMeasurement? currentMeasurement;
  GaugeZero? gaugeZero;

  Timeseries(
      {this.shortname,
        this.longname,
        this.unit,
        this.equidistance,
        this.currentMeasurement,
        this.gaugeZero});

  Timeseries.fromJson(Map<String, dynamic> json) {
    shortname = json['shortname'];
    longname = json['longname'];
    unit = json['unit'];
    equidistance = json['equidistance'];
    currentMeasurement = json['currentMeasurement'] != null
        ? new CurrentMeasurement.fromJson(json['currentMeasurement'])
        : null;
    gaugeZero = json['gaugeZero'] != null
        ? new GaugeZero.fromJson(json['gaugeZero'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shortname'] = this.shortname;
    data['longname'] = this.longname;
    data['unit'] = this.unit;
    data['equidistance'] = this.equidistance;
    if (this.currentMeasurement != null) {
      data['currentMeasurement'] = this.currentMeasurement!.toJson();
    }
    if (this.gaugeZero != null) {
      data['gaugeZero'] = this.gaugeZero!.toJson();
    }
    return data;
  }
}