import 'dart:convert';

class ResponModelBenner {
  final List<DataBenner>? data;

  ResponModelBenner({
    this.data,
  });

  factory ResponModelBenner.fromJson(String str) =>
      ResponModelBenner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResponModelBenner.fromMap(Map<String, dynamic> json) =>
      ResponModelBenner(
        data: json["data"] == null
            ? []
            : List<DataBenner>.from(
                json["data"]!.map((x) => DataBenner.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class DataBenner {
  final int? id;
  final String? slug;
  final String? type;
  final String? title;
  final dynamic distance;
  final int? diffDay;
  final String? description;
  final String? imageUrl;
  final int? status;
  final String? statusText;
  final String? howToUse;
  final String? termsAndCondition;
  final String? url;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? standingAvailable;
  final String? standingAvailableText;
  final DateTime? createdAt;
  final String? whatsapp;
  final DateTime? eventDate;
  final String? openGate;
  final int? reservationType;
  final String? reservationTypeText;
  final int? availabilityType;
  final String? availabilityTypeText;
  final int? isPromoted;
  final String? isPromotedText;
  final bool? isPriceUploaded;
  final int? reservationPaymentType;
  final String? reservationPaymentTypeText;
  final int? isSoldOut;
  final int? isSoldOutStanding;
  final dynamic credit;
  final dynamic sponsor;
  final String? generalAdmissionUrl;
  final dynamic inclusionList;
  final bool? useAffiliatorCode;
  final int? maxStandingCapacity;
  final dynamic talentDescriptionUrl;
  final bool? isUsingTicket;
  final dynamic houseRulesUrl;
  final dynamic location;
  final List<String>? tags;
  final String? potraitImage;
  final RedirectInternalSetting? redirectInternalSetting;

  DataBenner({
    this.id,
    this.slug,
    this.type,
    this.title,
    this.distance,
    this.diffDay,
    this.description,
    this.imageUrl,
    this.status,
    this.statusText,
    this.howToUse,
    this.termsAndCondition,
    this.url,
    this.startDate,
    this.endDate,
    this.standingAvailable,
    this.standingAvailableText,
    this.createdAt,
    this.whatsapp,
    this.eventDate,
    this.openGate,
    this.reservationType,
    this.reservationTypeText,
    this.availabilityType,
    this.availabilityTypeText,
    this.isPromoted,
    this.isPromotedText,
    this.isPriceUploaded,
    this.reservationPaymentType,
    this.reservationPaymentTypeText,
    this.isSoldOut,
    this.isSoldOutStanding,
    this.credit,
    this.sponsor,
    this.generalAdmissionUrl,
    this.inclusionList,
    this.useAffiliatorCode,
    this.maxStandingCapacity,
    this.talentDescriptionUrl,
    this.isUsingTicket,
    this.houseRulesUrl,
    this.location,
    this.tags,
    this.potraitImage,
    this.redirectInternalSetting,
  });

  factory DataBenner.fromJson(String str) =>
      DataBenner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataBenner.fromMap(Map<String, dynamic> json) => DataBenner(
        id: json["id"],
        slug: json["slug"],
        type: json["type"],
        title: json["title"],
        distance: json["distance"],
        diffDay: json["diff_day"],
        description: json["description"],
        imageUrl: json["image_url"],
        status: json["status"],
        statusText: json["status_text"],
        howToUse: json["how_to_use"],
        termsAndCondition: json["terms_and_condition"],
        url: json["url"],
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        standingAvailable: json["standing_available"],
        standingAvailableText: json["standing_available_text"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        whatsapp: json["whatsapp"],
        eventDate: json["event_date"] == null
            ? null
            : DateTime.parse(json["event_date"]),
        openGate: json["open_gate"],
        reservationType: json["reservation_type"],
        reservationTypeText: json["reservation_type_text"],
        availabilityType: json["availability_type"],
        availabilityTypeText: json["availability_type_text"],
        isPromoted: json["is_promoted"],
        isPromotedText: json["is_promoted_text"],
        isPriceUploaded: json["is_price_uploaded"],
        reservationPaymentType: json["reservation_payment_type"],
        reservationPaymentTypeText: json["reservation_payment_type_text"],
        isSoldOut: json["is_sold_out"],
        isSoldOutStanding: json["is_sold_out_standing"],
        credit: json["credit"],
        sponsor: json["sponsor"],
        generalAdmissionUrl: json["general_admission_url"],
        inclusionList: json["inclusion_list"],
        useAffiliatorCode: json["use_affiliator_code"],
        maxStandingCapacity: json["max_standing_capacity"],
        talentDescriptionUrl: json["talent_description_url"],
        isUsingTicket: json["is_using_ticket"],
        houseRulesUrl: json["house_rules_url"],
        location: json["location"],
        tags: json["tags"] == null
            ? []
            : List<String>.from(json["tags"]!.map((x) => x)),
        potraitImage: json["potrait_image"],
        redirectInternalSetting: json["redirect_internal_setting"] == null
            ? null
            : RedirectInternalSetting.fromMap(
                json["redirect_internal_setting"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "slug": slug,
        "type": type,
        "title": title,
        "distance": distance,
        "diff_day": diffDay,
        "description": description,
        "image_url": imageUrl,
        "status": status,
        "status_text": statusText,
        "how_to_use": howToUse,
        "terms_and_condition": termsAndCondition,
        "url": url,
        "start_date": startDate?.toIso8601String(),
        "end_date": endDate?.toIso8601String(),
        "standing_available": standingAvailable,
        "standing_available_text": standingAvailableText,
        "created_at": createdAt?.toIso8601String(),
        "whatsapp": whatsapp,
        "event_date": eventDate?.toIso8601String(),
        "open_gate": openGate,
        "reservation_type": reservationType,
        "reservation_type_text": reservationTypeText,
        "availability_type": availabilityType,
        "availability_type_text": availabilityTypeText,
        "is_promoted": isPromoted,
        "is_promoted_text": isPromotedText,
        "is_price_uploaded": isPriceUploaded,
        "reservation_payment_type": reservationPaymentType,
        "reservation_payment_type_text": reservationPaymentTypeText,
        "is_sold_out": isSoldOut,
        "is_sold_out_standing": isSoldOutStanding,
        "credit": credit,
        "sponsor": sponsor,
        "general_admission_url": generalAdmissionUrl,
        "inclusion_list": inclusionList,
        "use_affiliator_code": useAffiliatorCode,
        "max_standing_capacity": maxStandingCapacity,
        "talent_description_url": talentDescriptionUrl,
        "is_using_ticket": isUsingTicket,
        "house_rules_url": houseRulesUrl,
        "location": location,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "potrait_image": potraitImage,
        "redirect_internal_setting": redirectInternalSetting?.toMap(),
      };
}

class RedirectInternalSetting {
  final String? redirectInternalSettingEnum;
  final String? enumDescription;
  final dynamic additionalParam;

  RedirectInternalSetting({
    this.redirectInternalSettingEnum,
    this.enumDescription,
    this.additionalParam,
  });

  factory RedirectInternalSetting.fromJson(String str) =>
      RedirectInternalSetting.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RedirectInternalSetting.fromMap(Map<String, dynamic> json) =>
      RedirectInternalSetting(
        redirectInternalSettingEnum: json["enum"],
        enumDescription: json["enum_description"],
        additionalParam: json["additional_param"],
      );

  Map<String, dynamic> toMap() => {
        "enum": redirectInternalSettingEnum,
        "enum_description": enumDescription,
        "additional_param": additionalParam,
      };
}

List<DataBenner> listFromJson(String str) {
  final jsonData = json.decode(str);
  return List<DataBenner>.from(
      jsonData["data"].map((x) => DataBenner.fromMap(x)));
}
