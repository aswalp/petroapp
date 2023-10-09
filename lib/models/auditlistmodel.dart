// To parse this JSON data, do
//
//     final auditListModel = auditListModelFromJson(jsonString);

import 'dart:convert';

List<AuditListModel> auditListModelFromJson(String str) =>
    List<AuditListModel>.from(
        json.decode(str).map((x) => AuditListModel.fromJson(x)));

String auditListModelToJson(List<AuditListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AuditListModel {
  int? auditId;
  int? headerId;
  int? scheduleId;
  int? templateId;
  int? conductedByEmp;
  dynamic hseComplaintRating;
  int? uiid;
  dynamic auditTeam;
  String? auditNo;
  String? auditType;
  AuditTypeDesc? auditTypeDesc;
  String? auditTitle;
  TemplateName? templateName;
  dynamic btnDeleteData;
  String? condutedByDept;
  CondutedByDeptName? condutedByDeptName;
  String? conductedByEmpName;
  String? auditDesc;
  String? auditLocation;
  dynamic locationId;
  String? auditLocationDesc;
  String? reference;
  AuditStatus? auditStatus;
  dynamic actionId;
  dynamic closureComments;
  dynamic closureCode;
  dynamic closureCodeDesc;
  dynamic closedBy;
  bool? isBtnStart;
  bool? isBtnSave;
  bool? isBtnFinalSave;
  bool? isBtnFinish;
  bool? isAuTab;
  DateTime? startDate;
  DateTime? endDate;
  dynamic closureDate;
  List<dynamic>? attrValues;
  dynamic actionNo;
  dynamic priority;
  dynamic status;
  dynamic actionOwner;
  dynamic actionStatus;
  dynamic targetDate;
  dynamic year;
  int? userId;
  int? keyId;
  int? companyCode;
  dynamic opsMode;
  dynamic appType;
  dynamic date1;
  dynamic date2;

  AuditListModel({
    this.auditId,
    this.headerId,
    this.scheduleId,
    this.templateId,
    this.conductedByEmp,
    this.hseComplaintRating,
    this.uiid,
    this.auditTeam,
    this.auditNo,
    this.auditType,
    this.auditTypeDesc,
    this.auditTitle,
    this.templateName,
    this.btnDeleteData,
    this.condutedByDept,
    this.condutedByDeptName,
    this.conductedByEmpName,
    this.auditDesc,
    this.auditLocation,
    this.locationId,
    this.auditLocationDesc,
    this.reference,
    this.auditStatus,
    this.actionId,
    this.closureComments,
    this.closureCode,
    this.closureCodeDesc,
    this.closedBy,
    this.isBtnStart,
    this.isBtnSave,
    this.isBtnFinalSave,
    this.isBtnFinish,
    this.isAuTab,
    this.startDate,
    this.endDate,
    this.closureDate,
    this.attrValues,
    this.actionNo,
    this.priority,
    this.status,
    this.actionOwner,
    this.actionStatus,
    this.targetDate,
    this.year,
    this.userId,
    this.keyId,
    this.companyCode,
    this.opsMode,
    this.appType,
    this.date1,
    this.date2,
  });

  factory AuditListModel.fromJson(Map<String, dynamic> json) => AuditListModel(
        auditId: json["auditId"],
        headerId: json["headerId"],
        scheduleId: json["scheduleId"],
        templateId: json["templateId"],
        conductedByEmp: json["conductedByEmp"],
        hseComplaintRating: json["hseComplaintRating"],
        uiid: json["uiid"],
        auditTeam: json["auditTeam"],
        auditNo: json["auditNo"],
        auditType: json["auditType"],
        auditTypeDesc: auditTypeDescValues.map[json["auditTypeDesc"]],
        auditTitle: json["auditTitle"],
        templateName: templateNameValues.map[json["templateName"]],
        btnDeleteData: json["btnDeleteData"],
        condutedByDept: json["condutedByDept"],
        condutedByDeptName:
            condutedByDeptNameValues.map[json["condutedByDeptName"]],
        conductedByEmpName: json["conductedByEmpName"],
        auditDesc: json["auditDesc"],
        auditLocation: json["auditLocation"],
        locationId: json["locationId"],
        auditLocationDesc: json["auditLocationDesc"],
        reference: json["reference"],
        auditStatus: auditStatusValues.map[json["auditStatus"]],
        actionId: json["actionId"],
        closureComments: json["closureComments"],
        closureCode: json["closureCode"],
        closureCodeDesc: json["closureCodeDesc"],
        closedBy: json["closedBy"],
        isBtnStart: json["isBtnStart"],
        isBtnSave: json["isBtnSave"],
        isBtnFinalSave: json["isBtnFinalSave"],
        isBtnFinish: json["isBtnFinish"],
        isAuTab: json["isAuTab"],
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        closureDate: json["closureDate"],
        attrValues: json["attrValues"] == null
            ? []
            : List<dynamic>.from(json["attrValues"]!.map((x) => x)),
        actionNo: json["actionNo"],
        priority: json["priority"],
        status: json["status"],
        actionOwner: json["actionOwner"],
        actionStatus: json["actionStatus"],
        targetDate: json["targetDate"],
        year: json["year"],
        userId: json["userId"],
        keyId: json["keyId"],
        companyCode: json["companyCode"],
        opsMode: json["opsMode"],
        appType: json["appType"],
        date1: json["date1"],
        date2: json["date2"],
      );

  Map<String, dynamic> toJson() => {
        "auditId": auditId,
        "headerId": headerId,
        "scheduleId": scheduleId,
        "templateId": templateId,
        "conductedByEmp": conductedByEmp,
        "hseComplaintRating": hseComplaintRating,
        "uiid": uiid,
        "auditTeam": auditTeam,
        "auditNo": auditNo,
        "auditType": auditType,
        "auditTypeDesc": auditTypeDescValues.reverse[auditTypeDesc],
        "auditTitle": auditTitle,
        "templateName": templateNameValues.reverse[templateName],
        "btnDeleteData": btnDeleteData,
        "condutedByDept": condutedByDept,
        "condutedByDeptName":
            condutedByDeptNameValues.reverse[condutedByDeptName],
        "conductedByEmpName": conductedByEmpName,
        "auditDesc": auditDesc,
        "auditLocation": auditLocation,
        "locationId": locationId,
        "auditLocationDesc": auditLocationDesc,
        "reference": reference,
        "auditStatus": auditStatusValues.reverse[auditStatus],
        "actionId": actionId,
        "closureComments": closureComments,
        "closureCode": closureCode,
        "closureCodeDesc": closureCodeDesc,
        "closedBy": closedBy,
        "isBtnStart": isBtnStart,
        "isBtnSave": isBtnSave,
        "isBtnFinalSave": isBtnFinalSave,
        "isBtnFinish": isBtnFinish,
        "isAuTab": isAuTab,
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "closureDate": closureDate,
        "attrValues": attrValues == null
            ? []
            : List<dynamic>.from(attrValues!.map((x) => x)),
        "actionNo": actionNo,
        "priority": priority,
        "status": status,
        "actionOwner": actionOwner,
        "actionStatus": actionStatus,
        "targetDate": targetDate,
        "year": year,
        "userId": userId,
        "keyId": keyId,
        "companyCode": companyCode,
        "opsMode": opsMode,
        "appType": appType,
        "date1": date1,
        "date2": date2,
      };
}

enum AuditStatus { CLOSED, IN_PROGRESS, PENDING }

final auditStatusValues = EnumValues({
  "Closed": AuditStatus.CLOSED,
  "In Progress": AuditStatus.IN_PROGRESS,
  "Pending": AuditStatus.PENDING
});

enum AuditTypeDesc {
  EAU,
  EXTERNAL_AUDIT,
  FINANCE,
  IAU,
  INTERNAL_AUDIT,
  PAY_ROLL
}

final auditTypeDescValues = EnumValues({
  "EAU": AuditTypeDesc.EAU,
  "External Audit": AuditTypeDesc.EXTERNAL_AUDIT,
  "Finance": AuditTypeDesc.FINANCE,
  "IAU": AuditTypeDesc.IAU,
  "Internal Audit": AuditTypeDesc.INTERNAL_AUDIT,
  "Pay Roll": AuditTypeDesc.PAY_ROLL
});

enum CondutedByDeptName {
  ALL,
  COPRPORATE_SUPPLY_CHAIN_MANAGEMENT,
  CORPORATE_HSE,
  CORPORATE_OPERATIONS,
  CORPORATE_PEOPLE_AND_AFFAIRS,
  CPL,
  EMPTY,
  FINANCE,
  HR_ADMIN,
  HSE,
  OPERATION_PRODUCTION
}

final condutedByDeptNameValues = EnumValues({
  "ALL": CondutedByDeptName.ALL,
  "COPRPORATE SUPPLY CHAIN MANAGEMENT":
      CondutedByDeptName.COPRPORATE_SUPPLY_CHAIN_MANAGEMENT,
  "Corporate HSE": CondutedByDeptName.CORPORATE_HSE,
  "Corporate Operations": CondutedByDeptName.CORPORATE_OPERATIONS,
  "CORPORATE PEOPLE AND AFFAIRS":
      CondutedByDeptName.CORPORATE_PEOPLE_AND_AFFAIRS,
  "CPL": CondutedByDeptName.CPL,
  "": CondutedByDeptName.EMPTY,
  "Finance": CondutedByDeptName.FINANCE,
  "HR-Admin": CondutedByDeptName.HR_ADMIN,
  "HSE": CondutedByDeptName.HSE,
  "Operation & Production": CondutedByDeptName.OPERATION_PRODUCTION
});

enum TemplateName {
  CONTRACTORS_SAFETY_AUDIT_CHECKLIST,
  MONTHLY,
  QA,
  SECURITY,
  SHE_MANAGEMENT,
  TEST_TEMPLATE,
  VEHICLE_DAILY_CHECKLIST,
  WORKING_PROCEDURES_AND_EQUIPMENT
}

final templateNameValues = EnumValues({
  "CONTRACTORS SAFETY AUDIT CHECKLIST":
      TemplateName.CONTRACTORS_SAFETY_AUDIT_CHECKLIST,
  "MONTHLY": TemplateName.MONTHLY,
  "QA": TemplateName.QA,
  "SECURITY": TemplateName.SECURITY,
  "SHE MANAGEMENT": TemplateName.SHE_MANAGEMENT,
  "Test Template": TemplateName.TEST_TEMPLATE,
  "Vehicle Daily Checklist": TemplateName.VEHICLE_DAILY_CHECKLIST,
  "WORKING PROCEDURES AND EQUIPMENT":
      TemplateName.WORKING_PROCEDURES_AND_EQUIPMENT
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
