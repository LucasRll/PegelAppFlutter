class GaugeZero {
  String? unit;
  int? value;
  String? validFrom;

  GaugeZero({this.unit, this.value, this.validFrom});

  GaugeZero.fromJson(Map<String, dynamic> json) {
    unit = json['unit'];
    value = json['value'];
    validFrom = json['validFrom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unit'] = this.unit;
    data['value'] = this.value;
    data['validFrom'] = this.validFrom;
    return data;
  }
}