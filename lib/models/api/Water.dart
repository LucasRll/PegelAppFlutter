class Water {
  String? shortname;
  String? longname;

  Water({this.shortname, this.longname});

  Water.fromJson(Map<String, dynamic> json) {
    shortname = json['shortname'];
    longname = json['longname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shortname'] = this.shortname;
    data['longname'] = this.longname;
    return data;
  }
}