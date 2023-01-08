import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

bool? getDistance(
  LatLng? current,
  LatLng? static,
) {
  // find distance between two geopoint in metre
  if (current != null && static != null) {
    var dlon = current.longitude == static.longitude
        ? 0.0
        : (current.longitude - static.longitude);
    var dlat = static.latitude == static.latitude
        ? 0.0
        : (current.longitude - static.longitude);
    final rlat1 = current.latitude * math.pi / 180;
    final rlat2 = static.latitude * math.pi / 180;
    final rlon1 = current.longitude * math.pi / 180;
    final rlon2 = static.longitude * math.pi / 180;
    final a = 0.5 -
        math.cos((rlat2 - rlat1) / 2) / 2 +
        math.cos(rlat1) *
            math.cos(rlat2) *
            (1 - math.cos((rlon2 - rlon1) / 2)) /
            2;
    return ((math.asin(math.sqrt(a)) * 2 * 6371500) <= 100);
  } else {
    return false;
  }
}

int? bountyCount(int? trips) {
  if (trips != null && trips != 0) {
    if (trips % 10 == 0) {
      return 10;
    }
    return (trips % 10);
  }
  return 0;
}

double? progressValue(int? bounty) {
  if (bounty != null) {
    return (bounty / 10);
  }
  return 0;
}

int? avgCost(
  int? trips,
  int? money,
) {
  if (trips != null && money != null) {
    double a = money / trips;
    return a.toInt();
  }
  return 0;
}

String? getFirstName(String? name) {
  if (name != null) {
    return name.split(" ").first;
  }
  return "";
}
