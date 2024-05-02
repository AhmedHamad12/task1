class UserModel {
  int? id;
  String? name;
  String? address;

  UserModel({this.id, this.name, this.address});

  UserModel.fromJson(Map map) {
    id = map['id'];
    address = map['address'];
    name = map['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
    };
  }
}
