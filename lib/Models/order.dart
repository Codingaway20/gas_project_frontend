// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:geolocator/geolocator.dart';

class order {
  //IDs==================
  int id;
  int customerId;
  int sellerId;
  //=====================
  //other Details==================
  DateTime creationDate;
  DateTime endDate;
  String status;
  int numberOfBottles;
  String notes;
  //Order Position Info =======================//
  double orderPositionAltitude;
  DateTime? orderPositiontimestamp;
  double orderPositionlongitude;
  double orderPositionlatitude;
  //====================================//
  String timeLeftForReceive;
  bool isActive;
  order({
    required this.id,
    required this.customerId,
    required this.sellerId,
    required this.creationDate,
    required this.endDate,
    required this.status,
    required this.numberOfBottles,
    required this.notes,
    required this.orderPositionAltitude,
    this.orderPositiontimestamp,
    required this.orderPositionlongitude,
    required this.orderPositionlatitude,
    required this.timeLeftForReceive,
    required this.isActive,
  });
  //=====================

  order copyWith({
    int? id,
    int? customerId,
    int? sellerId,
    DateTime? creationDate,
    DateTime? endDate,
    String? status,
    int? numberOfBottles,
    String? notes,
    double? orderPositionAltitude,
    DateTime? orderPositiontimestamp,
    double? orderPositionlongitude,
    double? orderPositionlatitude,
    String? timeLeftForReceive,
    bool? isActive,
  }) {
    return order(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      sellerId: sellerId ?? this.sellerId,
      creationDate: creationDate ?? this.creationDate,
      endDate: endDate ?? this.endDate,
      status: status ?? this.status,
      numberOfBottles: numberOfBottles ?? this.numberOfBottles,
      notes: notes ?? this.notes,
      orderPositionAltitude:
          orderPositionAltitude ?? this.orderPositionAltitude,
      orderPositiontimestamp:
          orderPositiontimestamp ?? this.orderPositiontimestamp,
      orderPositionlongitude:
          orderPositionlongitude ?? this.orderPositionlongitude,
      orderPositionlatitude:
          orderPositionlatitude ?? this.orderPositionlatitude,
      timeLeftForReceive: timeLeftForReceive ?? this.timeLeftForReceive,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'customerId': customerId,
      'sellerId': sellerId,
      'creationDate': creationDate.millisecondsSinceEpoch,
      'endDate': endDate.millisecondsSinceEpoch,
      'status': status,
      'numberOfBottles': numberOfBottles,
      'notes': notes,
      'orderPositionAltitude': orderPositionAltitude,
      'orderPositiontimestamp': orderPositiontimestamp?.millisecondsSinceEpoch,
      'orderPositionlongitude': orderPositionlongitude,
      'orderPositionlatitude': orderPositionlatitude,
      'timeLeftForReceive': timeLeftForReceive,
      'isActive': isActive,
    };
  }

  factory order.fromMap(Map<String, dynamic> map) {
    return order(
      id: map['id'] as int,
      customerId: map['customerId'] as int,
      sellerId: map['sellerId'] as int,
      creationDate:
          DateTime.fromMillisecondsSinceEpoch(map['creationDate'] as int),
      endDate: DateTime.fromMillisecondsSinceEpoch(map['endDate'] as int),
      status: map['status'] as String,
      numberOfBottles: map['numberOfBottles'] as int,
      notes: map['notes'] as String,
      orderPositionAltitude: map['orderPositionAltitude'] as double,
      orderPositiontimestamp: map['orderPositiontimestamp'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              map['orderPositiontimestamp'] as int)
          : null,
      orderPositionlongitude: map['orderPositionlongitude'] as double,
      orderPositionlatitude: map['orderPositionlatitude'] as double,
      timeLeftForReceive: map['timeLeftForReceive'] as String,
      isActive: map['isActive'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory order.fromJson(String source) =>
      order.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'order(id: $id, customerId: $customerId, sellerId: $sellerId, creationDate: $creationDate, endDate: $endDate, status: $status, numberOfBottles: $numberOfBottles, notes: $notes, orderPositionAltitude: $orderPositionAltitude, orderPositiontimestamp: $orderPositiontimestamp, orderPositionlongitude: $orderPositionlongitude, orderPositionlatitude: $orderPositionlatitude, timeLeftForReceive: $timeLeftForReceive, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant order other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.customerId == customerId &&
        other.sellerId == sellerId &&
        other.creationDate == creationDate &&
        other.endDate == endDate &&
        other.status == status &&
        other.numberOfBottles == numberOfBottles &&
        other.notes == notes &&
        other.orderPositionAltitude == orderPositionAltitude &&
        other.orderPositiontimestamp == orderPositiontimestamp &&
        other.orderPositionlongitude == orderPositionlongitude &&
        other.orderPositionlatitude == orderPositionlatitude &&
        other.timeLeftForReceive == timeLeftForReceive &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        customerId.hashCode ^
        sellerId.hashCode ^
        creationDate.hashCode ^
        endDate.hashCode ^
        status.hashCode ^
        numberOfBottles.hashCode ^
        notes.hashCode ^
        orderPositionAltitude.hashCode ^
        orderPositiontimestamp.hashCode ^
        orderPositionlongitude.hashCode ^
        orderPositionlatitude.hashCode ^
        timeLeftForReceive.hashCode ^
        isActive.hashCode;
  }
}
