class DataModel {
  List<DataList>? data;
  int? status;
  String? message;

  DataModel({this.data, this.status, this.message});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataList>[];
      json['data'].forEach((v) {
        data!.add(new DataList.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class DataList {
  int? id;
  String? name;
  String? description;
  String? image;
  bool? isSelected;
  bool? isReadMore;

  DataList(
      {this.id,
        this.name,
        this.description,
        this.image,
        this.isSelected,
        this.isReadMore});

  DataList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    isSelected = json['isSelected'];
    isReadMore = json['isReadMore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['isSelected'] = this.isSelected;
    data['isReadMore'] = this.isReadMore;
    return data;
  }
}