// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  dynamic dtVisibility;
  List<DtContent>? dtContent;
  List<Dt>? dtMonthlyStat;
  List<DtObsCount>? dtObsCount;
  List<DtCompPerc>? dtCompPerc;
  List<DtAbstract>? dtAbstract;
  List<DtImage>? dtImage;
  List<DtPerformance>? dtPerformance;
  dynamic dtFrequency;
  List<DtSafetyTip>? dtSafetyTips;
  dynamic dtDeptActions;
  dynamic dtPendingAction;
  List<Dt>? dtTarget;
  List<DtMvif>? dtMvif;
  List<DtLagg>? dtLagg;
  List<DtLead>? dtLead;
  List<DtPerfTrcf>? dtPerfTrcf;

  HomeModel({
    this.dtVisibility,
    this.dtContent,
    this.dtMonthlyStat,
    this.dtObsCount,
    this.dtCompPerc,
    this.dtAbstract,
    this.dtImage,
    this.dtPerformance,
    this.dtFrequency,
    this.dtSafetyTips,
    this.dtDeptActions,
    this.dtPendingAction,
    this.dtTarget,
    this.dtMvif,
    this.dtLagg,
    this.dtLead,
    this.dtPerfTrcf,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      dtVisibility: json["dtVisibility"],
      dtContent: json["dtContent"] == null
          ? []
          : List<DtContent>.from(
              json["dtContent"]!.map((x) => DtContent.fromJson(x))),
      dtMonthlyStat: json["dtMonthlyStat"] == null
          ? []
          : List<Dt>.from(json["dtMonthlyStat"]!.map((x) => Dt.fromJson(x))),
      dtObsCount: json["dtObsCount"] == null
          ? []
          : List<DtObsCount>.from(
              json["dtObsCount"]!.map((x) => DtObsCount.fromJson(x))),
      dtCompPerc: json["dtCompPerc"] == null
          ? []
          : List<DtCompPerc>.from(
              json["dtCompPerc"]!.map((x) => DtCompPerc.fromJson(x))),
      dtAbstract: json["dtAbstract"] == null
          ? []
          : List<DtAbstract>.from(
              json["dtAbstract"]!.map((x) => DtAbstract.fromJson(x))),
      dtImage: json["dtImage"] == null
          ? []
          : List<DtImage>.from(
              json["dtImage"]!.map((x) => DtImage.fromJson(x))),
      dtPerformance: json["dtPerformance"] == null
          ? []
          : List<DtPerformance>.from(
              json["dtPerformance"]!.map((x) => DtPerformance.fromJson(x))),
      dtFrequency: json["dtFrequency"],
      dtSafetyTips: json["dtSafetyTips"] == null
          ? []
          : List<DtSafetyTip>.from(
              json["dtSafetyTips"]!.map((x) => DtSafetyTip.fromJson(x))),
      dtDeptActions: json["dtDeptActions"],
      dtPendingAction: json["dtPendingAction"],
      dtTarget: json["dtTarget"] == null
          ? []
          : List<Dt>.from(json["dtTarget"]!.map((x) => Dt.fromJson(x))),
      dtMvif: json["dtMVIF"] == null
          ? []
          : List<DtMvif>.from(json["dtMVIF"]!.map((x) => DtMvif.fromJson(x))),
      dtLagg: json["dtLagg"] == null
          ? []
          : List<DtLagg>.from(json["dtLagg"]!.map((x) => DtLagg.fromJson(x))),
      dtLead: json["dtLead"] == null
          ? []
          : List<DtLead>.from(json["dtLead"]!.map((x) => DtLead.fromJson(x))),
      dtPerfTrcf: json["dtPerfTrcf"] == null
          ? []
          : List<DtPerfTrcf>.from(
              json["dtPerfTrcf"]!.map((x) => DtPerfTrcf.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "dtVisibility": dtVisibility,
        "dtContent": dtContent == null
            ? []
            : List<dynamic>.from(dtContent!.map((x) => x.toJson())),
        "dtMonthlyStat": dtMonthlyStat == null
            ? []
            : List<dynamic>.from(dtMonthlyStat!.map((x) => x.toJson())),
        "dtObsCount": dtObsCount == null
            ? []
            : List<dynamic>.from(dtObsCount!.map((x) => x.toJson())),
        "dtCompPerc": dtCompPerc == null
            ? []
            : List<dynamic>.from(dtCompPerc!.map((x) => x.toJson())),
        "dtAbstract": dtAbstract == null
            ? []
            : List<dynamic>.from(dtAbstract!.map((x) => x.toJson())),
        "dtImage": dtImage == null
            ? []
            : List<dynamic>.from(dtImage!.map((x) => x.toJson())),
        "dtPerformance": dtPerformance == null
            ? []
            : List<dynamic>.from(dtPerformance!.map((x) => x.toJson())),
        "dtFrequency": dtFrequency,
        "dtSafetyTips": dtSafetyTips == null
            ? []
            : List<dynamic>.from(dtSafetyTips!.map((x) => x.toJson())),
        "dtDeptActions": dtDeptActions,
        "dtPendingAction": dtPendingAction,
        "dtTarget": dtTarget == null
            ? []
            : List<dynamic>.from(dtTarget!.map((x) => x.toJson())),
        "dtMVIF": dtMvif == null
            ? []
            : List<dynamic>.from(dtMvif!.map((x) => x.toJson())),
        "dtLagg": dtLagg == null
            ? []
            : List<dynamic>.from(dtLagg!.map((x) => x.toJson())),
        "dtLead": dtLead == null
            ? []
            : List<dynamic>.from(dtLead!.map((x) => x.toJson())),
        "dtPerfTrcf": dtPerfTrcf == null
            ? []
            : List<dynamic>.from(dtPerfTrcf!.map((x) => x.toJson())),
      };
}

class DtAbstract {
  String? item;
  num? count;
  String? colour;
  String? screenUrl;
  String? screenCode;
  String? screenTitle;
  String? module;
  String? moduleLogo;
  String? moduleLogoNew;
  String? moduleRight;

  DtAbstract({
    this.item,
    this.count,
    this.colour,
    this.screenUrl,
    this.screenCode,
    this.screenTitle,
    this.module,
    this.moduleLogo,
    this.moduleLogoNew,
    this.moduleRight,
  });

  factory DtAbstract.fromJson(Map<String, dynamic> json) => DtAbstract(
        item: json["Item"],
        count: json["Count"],
        colour: json["Colour"],
        screenUrl: json["ScreenUrl"],
        screenCode: json["ScreenCode"],
        screenTitle: json["ScreenTitle"],
        module: json["Module"],
        moduleLogo: json["ModuleLogo"],
        moduleLogoNew: json["ModuleLogoNew"],
        moduleRight: json["ModuleRight"],
      );

  Map<String, dynamic> toJson() => {
        "Item": item,
        "Count": count,
        "Colour": colour,
        "ScreenUrl": screenUrl,
        "ScreenCode": screenCode,
        "ScreenTitle": screenTitle,
        "Module": module,
        "ModuleLogo": moduleLogo,
        "ModuleLogoNew": moduleLogoNew,
        "ModuleRight": moduleRight,
      };
}

class DtCompPerc {
  String? duration;
  num? commencedCount;

  DtCompPerc({
    this.duration,
    this.commencedCount,
  });

  factory DtCompPerc.fromJson(Map<String, dynamic> json) => DtCompPerc(
        duration: json["Duration"],
        commencedCount: json["COMMENCED_COUNT"],
      );

  Map<String, dynamic> toJson() => {
        "Duration": duration,
        "COMMENCED_COUNT": commencedCount,
      };
}

class DtContent {
  num? contentId;
  String? category;
  dynamic contentType;
  String? title;
  String? description;
  String? contentLink;
  String? status;
  DateTime? scheduleFromDate;
  DateTime? scheduleToDate;
  String? companyName;

  DtContent({
    this.contentId,
    this.category,
    this.contentType,
    this.title,
    this.description,
    this.contentLink,
    this.status,
    this.scheduleFromDate,
    this.scheduleToDate,
    this.companyName,
  });

  factory DtContent.fromJson(Map<String, dynamic> json) => DtContent(
        contentId: json["ContentId"],
        category: json["Category"],
        contentType: json["ContentType"],
        title: json["Title"],
        description: json["Description"],
        contentLink: json["ContentLink"],
        status: json["Status"],
        scheduleFromDate: json["ScheduleFromDate"] == null
            ? null
            : DateTime.parse(json["ScheduleFromDate"]),
        scheduleToDate: json["ScheduleToDate"] == null
            ? null
            : DateTime.parse(json["ScheduleToDate"]),
        companyName: json["CompanyName"],
      );

  Map<String, dynamic> toJson() => {
        "ContentId": contentId,
        "Category": category,
        "ContentType": contentType,
        "Title": title,
        "Description": description,
        "ContentLink": contentLink,
        "Status": status,
        "ScheduleFromDate": scheduleFromDate?.toIso8601String(),
        "ScheduleToDate": scheduleToDate?.toIso8601String(),
        "CompanyName": companyName,
      };
}

class DtImage {
  num? displaySequence;
  String? imageName;
  num? imageId;
  String? imagePath;
  num? docId;

  DtImage({
    this.displaySequence,
    this.imageName,
    this.imageId,
    this.imagePath,
    this.docId,
  });

  factory DtImage.fromJson(Map<String, dynamic> json) => DtImage(
        displaySequence: json["DisplaySequence"],
        imageName: json["ImageName"],
        imageId: json["ImageId"],
        imagePath: json["ImagePath"],
        docId: json["DocId"],
      );

  Map<String, dynamic> toJson() => {
        "DisplaySequence": displaySequence,
        "ImageName": imageName,
        "ImageId": imageId,
        "ImagePath": imagePath,
        "DocId": docId,
      };
}

class DtLagg {
  String? dateVal;
  num? sortOrder;
  num? anm;
  num? fac;
  num? fat;
  num? lti;
  num? ltif;
  num? ltift;
  num? mtc;
  num? nmi;
  num? rta;
  num? rtaf;
  num? rwc;
  num? rwdc;
  num? trcf;
  num? trir;
  num? trirt;
  dynamic tt;
  dynamic tot;

  DtLagg({
    this.dateVal,
    this.sortOrder,
    this.anm,
    this.fac,
    this.fat,
    this.lti,
    this.ltif,
    this.ltift,
    this.mtc,
    this.nmi,
    this.rta,
    this.rtaf,
    this.rwc,
    this.rwdc,
    this.trcf,
    this.trir,
    this.trirt,
    this.tt,
    this.tot,
  });

  factory DtLagg.fromJson(Map<String, dynamic> json) => DtLagg(
        dateVal: json["DateVal"],
        sortOrder: json["SortOrder"],
        anm: json["ANM"],
        fac: json["FAC"],
        fat: json["FAT"],
        lti: json["LTI"],
        ltif: json["LTIF"],
        ltift: json["LTIFT"],
        mtc: json["MTC"],
        nmi: json["NMI"],
        rta: json["RTA"],
        rtaf: json["RTAF"],
        rwc: json["RWC"],
        rwdc: json["RWDC"],
        trcf: json["TRCF"],
        trir: json["TRIR"],
        trirt: json["TRIRT"],
        tt: json["TT"],
        tot: json["Tot"],
      );

  Map<String, dynamic> toJson() => {
        "DateVal": dateVal,
        "SortOrder": sortOrder,
        "ANM": anm,
        "FAC": fac,
        "FAT": fat,
        "LTI": lti,
        "LTIF": ltif,
        "LTIFT": ltift,
        "MTC": mtc,
        "NMI": nmi,
        "RTA": rta,
        "RTAF": rtaf,
        "RWC": rwc,
        "RWDC": rwdc,
        "TRCF": trcf,
        "TRIR": trir,
        "TRIRT": trirt,
        "TT": tt,
        "Tot": tot,
      };
}

class DtLead {
  String? dateVal;
  num? sortOrder;
  num? tri;
  num? tot;

  DtLead({
    this.dateVal,
    this.sortOrder,
    this.tri,
    this.tot,
  });

  factory DtLead.fromJson(Map<String, dynamic> json) => DtLead(
        dateVal: json["DateVal"],
        sortOrder: json["SortOrder"],
        tri: json["TRI"],
        tot: json["Tot"],
      );

  Map<String, dynamic> toJson() => {
        "DateVal": dateVal,
        "SortOrder": sortOrder,
        "TRI": tri,
        "Tot": tot,
      };
}

class Dt {
  String? statisticMonth;
  num? monthVal;
  dynamic ltifTarget;
  num? ltif;
  dynamic trcfTarget;
  num? trcf;
  num? ltifUnit;

  Dt({
    this.statisticMonth,
    this.monthVal,
    this.ltifTarget,
    this.ltif,
    this.trcfTarget,
    this.trcf,
    this.ltifUnit,
  });

  factory Dt.fromJson(Map<String, dynamic> json) => Dt(
        statisticMonth: json["StatisticMonth"],
        monthVal: json["MONTH_VAL"],
        ltifTarget: json["LTIFTarget"],
        ltif: json["LTIF"],
        trcfTarget: json["TRCFTarget"],
        trcf: json["TRCF"],
        ltifUnit: json["LTIFUnit"],
      );

  Map<String, dynamic> toJson() => {
        "StatisticMonth": statisticMonth,
        "MONTH_VAL": monthVal,
        "LTIFTarget": ltifTarget,
        "LTIF": ltif,
        "TRCFTarget": trcfTarget,
        "TRCF": trcf,
        "LTIFUnit": ltifUnit,
      };
}

class DtMvif {
  String? statisticMonth;
  num? monthVal;
  dynamic mvifTarget;
  num? mvif;
  dynamic rofTarget;
  num? rof;
  num? mvifUnit;

  DtMvif({
    this.statisticMonth,
    this.monthVal,
    this.mvifTarget,
    this.mvif,
    this.rofTarget,
    this.rof,
    this.mvifUnit,
  });

  factory DtMvif.fromJson(Map<String, dynamic> json) => DtMvif(
        statisticMonth: json["StatisticMonth"],
        monthVal: json["MONTH_VAL"],
        mvifTarget: json["MVIFTarget"],
        mvif: json["MVIF"],
        rofTarget: json["ROFTarget"],
        rof: json["ROF"],
        mvifUnit: json["MVIFUnit"],
      );

  Map<String, dynamic> toJson() => {
        "StatisticMonth": statisticMonth,
        "MONTH_VAL": monthVal,
        "MVIFTarget": mvifTarget,
        "MVIF": mvif,
        "ROFTarget": rofTarget,
        "ROF": rof,
        "MVIFUnit": mvifUnit,
      };
}

class DtObsCount {
  String? groupName;
  num? groupOrder;
  num? obsCount;
  String? color;

  DtObsCount({
    this.groupName,
    this.groupOrder,
    this.obsCount,
    this.color,
  });

  factory DtObsCount.fromJson(Map<String, dynamic> json) => DtObsCount(
        groupName: json["GroupName"],
        groupOrder: json["GroupOrder"],
        obsCount: json["ObsCount"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "GroupName": groupName,
        "GroupOrder": groupOrder,
        "ObsCount": obsCount,
        "color": color,
      };
}

class DtPerfTrcf {
  num? year;
  String? attrName;
  double? attrValue;

  DtPerfTrcf({
    this.year,
    this.attrName,
    this.attrValue,
  });

  factory DtPerfTrcf.fromJson(Map<String, dynamic> json) => DtPerfTrcf(
        year: json["Year"],
        attrName: json["AttrName"],
        attrValue: json["AttrValue"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "Year": year,
        "AttrName": attrName,
        "AttrValue": attrValue,
      };
}

class DtPerformance {
  String? itemDescription;
  String? statisticValue;
  String? forSplit;

  DtPerformance({
    this.itemDescription,
    this.statisticValue,
    this.forSplit,
  });

  factory DtPerformance.fromJson(Map<String, dynamic> json) => DtPerformance(
        itemDescription: json["ItemDescription"],
        statisticValue: json["StatisticValue"],
        forSplit: json["ForSplit"],
      );

  Map<String, dynamic> toJson() => {
        "ItemDescription": itemDescription,
        "StatisticValue": statisticValue,
        "ForSplit": forSplit,
      };
}

class DtSafetyTip {
  String? title;
  String? description;
  num? status;

  DtSafetyTip({
    this.title,
    this.description,
    this.status,
  });

  factory DtSafetyTip.fromJson(Map<String, dynamic> json) => DtSafetyTip(
        title: json["Title"],
        description: json["Description"],
        status: json["Status"],
      );

  Map<String, dynamic> toJson() => {
        "Title": title,
        "Description": description,
        "Status": status,
      };
}
