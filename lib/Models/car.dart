// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class car {
  int id;
  int sellerId;
  String carType;
  String plateNumber;
  car({
    required this.id,
    required this.sellerId,
    required this.carType,
    required this.plateNumber,
  });

  car copyWith({
    int? id,
    int? sellerId,
    String? carType,
    String? plateNumber,
  }) {
    return car(
      id: id ?? this.id,
      sellerId: sellerId ?? this.sellerId,
      carType: carType ?? this.carType,
      plateNumber: plateNumber ?? this.plateNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'sellerId': sellerId,
      'carType': carType,
      'plateNumber': plateNumber,
    };
  }

  factory car.fromMap(Map<String, dynamic> map) {
    return car(
      id: map['id'] as int,
      sellerId: map['sellerId'] as int,
      carType: map['carType'] as String,
      plateNumber: map['plateNumber'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory car.fromJson(String source) =>
      car.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'car(id: $id, sellerId: $sellerId, carType: $carType, plateNumber: $plateNumber)';
  }

  @override
  bool operator ==(covariant car other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.sellerId == sellerId &&
        other.carType == carType &&
        other.plateNumber == plateNumber;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        sellerId.hashCode ^
        carType.hashCode ^
        plateNumber.hashCode;
  }
}
