import 'Timeseries.dart';
import 'Water.dart';

class Station {
  String? uuid;
  String? number;
  String? shortname;
  String? longname;
  double? km;
  String? agency;
  double? longitude;
  double? latitude;
  Water? water;
  List<Timeseries>? timeseries;

  Station(
      {this.uuid,
        this.number,
        this.shortname,
        this.longname,
        this.km,
        this.agency,
        this.longitude,
        this.latitude,
        this.water,
        this.timeseries});

  Station.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    number = json['number'];
    shortname = json['shortname'];
    longname = json['longname'];
    km = json['km'];
    agency = json['agency'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    water = json['water'] != null ? new Water.fromJson(json['water']) : null;
    if (json['timeseries'] != null) {
      timeseries = <Timeseries>[];
      json['timeseries'].forEach((v) {
        timeseries!.add(new Timeseries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['number'] = this.number;
    data['shortname'] = this.shortname;
    data['longname'] = this.longname;
    data['km'] = this.km;
    data['agency'] = this.agency;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    if (this.water != null) {
      data['water'] = this.water!.toJson();
    }
    if (this.timeseries != null) {
      data['timeseries'] = this.timeseries!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}