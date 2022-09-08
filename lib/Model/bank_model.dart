// To parse this JSON data, do
//
//     final bankModel = bankModelFromJson(jsonString);

import 'dart:convert';

BankModel bankModelFromJson(String str) => BankModel.fromJson(json.decode(str));

String bankModelToJson(BankModel data) => json.encode(data.toJson());

class BankModel {
  BankModel({
    this.id,
    this.security,
    this.industryId,
    this.industry,
    this.sectorId,
    this.sector,
    this.mcap,
    this.ev,
    this.evDateEnd,
    this.bookNavPerShare,
    this.ttmpe,
    this.ttmYearEnd,
    this.bankModelYield,
    this.yearEnd,
    this.sectorSlug,
    this.industrySlug,
    this.securitySlug,
    this.pegRatio,
  });

  int? id;
  String? security;
  int? industryId;
  String? industry;
  int? sectorId;
  String? sector;
  double? mcap;
  dynamic ev;
  dynamic evDateEnd;
  double? bookNavPerShare;
  double? ttmpe;
  int? ttmYearEnd;
  double? bankModelYield;
  int? yearEnd;
  String? sectorSlug;
  String? industrySlug;
  String? securitySlug;
  double? pegRatio;

  factory BankModel.fromJson(Map<String, dynamic> json) => BankModel(
    id: json["ID"],
    security: json["Security"],
    industryId: json["IndustryID"],
    industry: json["Industry"],
    sectorId: json["SectorID"],
    sector: json["Sector"],
    mcap: json["MCAP"].toDouble(),
    ev: json["EV"],
    evDateEnd: json["EVDateEnd"],
    bookNavPerShare: json["BookNavPerShare"].toDouble(),
    ttmpe: json["TTMPE"].toDouble(),
    ttmYearEnd: json["TTMYearEnd"],
    bankModelYield: json["Yield"].toDouble(),
    yearEnd: json["YearEnd"],
    sectorSlug: json["SectorSlug"],
    industrySlug: json["IndustrySlug"],
    securitySlug: json["SecuritySlug"],
    pegRatio: json["PEGRatio"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Security": security,
    "IndustryID": industryId,
    "Industry": industry,
    "SectorID": sectorId,
    "Sector": sector,
    "MCAP": mcap,
    "EV": ev,
    "EVDateEnd": evDateEnd,
    "BookNavPerShare": bookNavPerShare,
    "TTMPE": ttmpe,
    "TTMYearEnd": ttmYearEnd,
    "Yield": bankModelYield,
    "YearEnd": yearEnd,
    "SectorSlug": sectorSlug,
    "IndustrySlug": industrySlug,
    "SecuritySlug": securitySlug,
    "PEGRatio": pegRatio,
  };
}
