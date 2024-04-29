class UModel {
  String? id;
  String? name;
  String? address;

  UModel({this.id, this.address, this.name});

  UModel.fromJson(Map map) {
    id = map['id'].toString();
    address = map['address'];
    name = map['name'];
  }
}