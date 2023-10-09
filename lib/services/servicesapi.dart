import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:petroapp/models/auditbarmodel.dart';
import 'package:petroapp/models/auditlistmodel.dart';

import '../models/Loginpostmodel.dart';
import '../models/homemodel.dart';

class Apiservices {
  static late LoginModel userdata;
  static Dio dio = Dio(
    BaseOptions(baseUrl: "https://www.petroinfotech.com/PetroHSE/api"),
  );
//?for auth verfication post method
  static Future<LoginModel> authVerfication(
      {required String userName, required String password}) async {
    try {
      Response response = await dio.post("/Admin/ValidateLogin", data: {
        "userName": userName,
        "password": password,
        "authType": "FORMS",
        "ipAddress": ""
      });

      if (response.statusCode == 200) {
        final json = jsonEncode(response.data);

        return loginModelFromJson(json);
      }
    } on DioException catch (e) {
      log("Error:-${e.toString()}}");
      throw Exception(e);
    }
    throw Exception();
  }

//?to get home page date get method

  static Future<HomeModel> homedata() async {
    try {
      Response response = await dio.get(
        "/Dashboard/GetHomePage",
        queryParameters: {"companyCode": "1", "userId": userdata.id},
        options: Options(
          headers: {
            "Authorization": "Bearer ${userdata.token}",
            "CompanyCode": "1",
            "UserId": userdata.id,
            "appType": "MOB",
            "content-type": "application/json",
            "accept": "application/json",
          },
        ),
      );

      if (response.statusCode == 200) {
        // final String json = json.encode(response.data);

        log("userid:-${userdata.compCode}");

        return homeModelFromJson(response.data);
      }
    } on DioException catch (e) {
      log("Error:-${e.toString()}}");
      throw Exception(e);
    }
    throw Exception();
  }

  //?to get auditbar date get method

  static Future<List<AuditBarModel>> auditbardata() async {
    try {
      Response response = await dio.get(
        "/Audit/GetDashboardAuditList",
        queryParameters: {
          "UserCompanyCode": "1",
          "loggedInUserID": userdata.id
        },
        options: Options(
          headers: {
            "Authorization": "Bearer ${userdata.token}",
            "CompanyCode": "1",
            "UserId": userdata.id,
            "appType": "MOB",
            "content-type": "application/json",
            "accept": "application/json",
          },
        ),
      );

      if (response.statusCode == 200) {
        final json = jsonEncode(response.data);

        log("userid:-${userdata.id}");
        log("${response.data}");
        log("${response.data}");
        log("userid:-${userdata.compCode}");

        return auditBarModelFromJson(json);
      }
    } on DioException catch (e) {
      log("Error:-${e.toString()}}");
      throw Exception(e);
    }
    throw Exception();
  }

  //?to get auditlist date get method

  static Future<List<AuditListModel>> auditlistdata() async {
    try {
      Response response = await dio.get(
        "/Audit/GetAuditList",
        queryParameters: {"mode": "ALL", "status": "ALL"},
        options: Options(
          headers: {
            "Authorization": "Bearer ${userdata.token}",
            "CompanyCode": "1",
            "UserId": userdata.id,
            "appType": "MOB",
            "content-type": "application/json",
            "accept": "application/json",
          },
        ),
      );

      if (response.statusCode == 200) {
        final json = jsonEncode(response.data);

        log("userid:-${userdata.id}");

        return auditListModelFromJson(json);
      }
    } on DioException catch (e) {
      log("Error:-${e.toString()}}");
      throw Exception(e);
    }
    throw Exception();
  }
}
