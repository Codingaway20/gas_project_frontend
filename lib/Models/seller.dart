// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:gas_project_frontend/Models/User.dart';
import 'package:gas_project_frontend/Models/order.dart';

class seller extends user {
  List<order> customersOrders;
  int numberOfGasBotlles;
  int numberOfFilledGasBotlles;
  int numberOfEmptyGasBotlles;
  seller({
    required this.customersOrders,
    required this.numberOfGasBotlles,
    required this.numberOfFilledGasBotlles,
    required this.numberOfEmptyGasBotlles,
    required super.id,
    required super.username,
    required super.phoneNumber,
    required super.speedAccuracy,
    required super.speed,
    required super.heading,
    required super.accuracy,
    required super.altitude,
    required super.timestamp,
    required super.longitude,
    required super.latitude,
    required super.avaiLability,
    required super.accountStatus,
    required super.role,
  });
}
