class CurrentMeasurement {
  String? timestamp;
  int? value;
  int? trend;
  String? stateMnwMhw;
  String? stateNswHsw;

  CurrentMeasurement(
      {this.timestamp,
        this.value,
        this.trend,
        this.stateMnwMhw,
        this.stateNswHsw});

  CurrentMeasurement.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    value = json['value'];
    trend = json['trend'];
    stateMnwMhw = json['stateMnwMhw'];
    stateNswHsw = json['stateNswHsw'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['timestamp'] = this.timestamp;
    data['value'] = this.value;
    data['trend'] = this.trend;
    data['stateMnwMhw'] = this.stateMnwMhw;
    data['stateNswHsw'] = this.stateNswHsw;
    return data;
  }
}