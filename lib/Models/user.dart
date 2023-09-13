// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:geolocator/geolocator.dart';

class user {
  int id;
  String username;
  String phoneNumber;

  //Position Info =======================//
  double speedAccuracy;
  double speed;
  double heading;
  double accuracy;
  double altitude;
  DateTime timestamp;
  double longitude;
  double latitude;
  //====================================//

  bool avaiLability;
  String accountStatus;
  String role;
  user({
    required this.id,
    required this.username,
    required this.phoneNumber,
    required this.speedAccuracy,
    required this.speed,
    required this.heading,
    required this.accuracy,
    required this.altitude,
    required this.timestamp,
    required this.longitude,
    required this.latitude,
    required this.avaiLability,
    required this.accountStatus,
    required this.role,
  });

  user copyWith({
    int? id,
    String? username,
    String? phoneNumber,
    double? speedAccuracy,
    double? speed,
    double? heading,
    double? accuracy,
    double? altitude,
    DateTime? timestamp,
    double? longitude,
    double? latitude,
    bool? avaiLability,
    String? accountStatus,
    String? role,
  }) {
    return user(
      id: id ?? this.id,
      username: username ?? this.username,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      speedAccuracy: speedAccuracy ?? this.speedAccuracy,
      speed: speed ?? this.speed,
      heading: heading ?? this.heading,
      accuracy: accuracy ?? this.accuracy,
      altitude: altitude ?? this.altitude,
      timestamp: timestamp ?? this.timestamp,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
      avaiLability: avaiLability ?? this.avaiLability,
      accountStatus: accountStatus ?? this.accountStatus,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'phoneNumber': phoneNumber,
      'speedAccuracy': speedAccuracy,
      'speed': speed,
      'heading': heading,
      'accuracy': accuracy,
      'altitude': altitude,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'longitude': longitude,
      'latitude': latitude,
      'avaiLability': avaiLability,
      'accountStatus': accountStatus,
      'role': role,
    };
  }

  factory user.fromMap(Map<String, dynamic> map) {
    return user(
      id: map['id'] as int,
      username: map['username'] as String,
      phoneNumber: map['phoneNumber'] as String,
      speedAccuracy: map['speedAccuracy'] as double,
      speed: map['speed'] as double,
      heading: map['heading'] as double,
      accuracy: map['accuracy'] as double,
      altitude: map['altitude'] as double,
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] as int),
      longitude: map['longitude'] as double,
      latitude: map['latitude'] as double,
      avaiLability: map['avaiLability'] as bool,
      accountStatus: map['accountStatus'] as String,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory user.fromJson(String source) =>
      user.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'user(id: $id, username: $username, phoneNumber: $phoneNumber, speedAccuracy: $speedAccuracy, speed: $speed, heading: $heading, accuracy: $accuracy, altitude: $altitude, timestamp: $timestamp, longitude: $longitude, latitude: $latitude, avaiLability: $avaiLability, accountStatus: $accountStatus, role: $role)';
  }

  @override
  bool operator ==(covariant user other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.username == username &&
        other.phoneNumber == phoneNumber &&
        other.speedAccuracy == speedAccuracy &&
        other.speed == speed &&
        other.heading == heading &&
        other.accuracy == accuracy &&
        other.altitude == altitude &&
        other.timestamp == timestamp &&
        other.longitude == longitude &&
        other.latitude == latitude &&
        other.avaiLability == avaiLability &&
        other.accountStatus == accountStatus &&
        other.role == role;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        phoneNumber.hashCode ^
        speedAccuracy.hashCode ^
        speed.hashCode ^
        heading.hashCode ^
        accuracy.hashCode ^
        altitude.hashCode ^
        timestamp.hashCode ^
        longitude.hashCode ^
        latitude.hashCode ^
        avaiLability.hashCode ^
        accountStatus.hashCode ^
        role.hashCode;
  }
}
