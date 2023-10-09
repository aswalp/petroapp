import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petroapp/models/auditlistmodel.dart';
import 'package:petroapp/models/homemodel.dart';
import 'package:petroapp/services/servicesapi.dart';

import '../models/auditbarmodel.dart';

final homedataProvider = FutureProvider<HomeModel>((ref) async {
  return Apiservices.homedata();
});

final auditProvider = FutureProvider<List<AuditBarModel>>((ref) async {
  return Apiservices.auditbardata();
});

final auditlistProvider = FutureProvider<List<AuditListModel>>((ref) async {
  return Apiservices.auditlistdata();
});
