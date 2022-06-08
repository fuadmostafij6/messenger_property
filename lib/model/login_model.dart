// To parse this JSON data, do
//
//     final loginRes = loginResFromJson(jsonString);

import 'dart:convert';

LoginRes loginResFromJson(String str) => LoginRes.fromJson(json.decode(str));

String loginResToJson(LoginRes data) => json.encode(data.toJson());

class LoginRes {
  LoginRes({
    this.status,
    this.msg,
    this.description,
    this.user,
  });

  int ?status;
  String? msg;
  String ?description;
  User ? user;

  factory LoginRes.fromJson(Map<String, dynamic> json) => LoginRes(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    description: json["description"] == null ? null : json["description"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "description": description == null ? null : description,
    "user": user == null ? null : user!.toJson(),
  };
}

class User {
  User({
    this.id,
    this.firstName,
    this.lastName,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.apiToken,
    this.spServiceCategory,
    this.description,
    this.address,
    this.lat,
    this.lng,
    this.iAmOwner,
    this.businessPermitNo,
    this.vatNo,
    this.createdAt,
    this.updatedAt,
    this.agentType,
    this.agencyName,
    this.status,
    this.userType,
    this.verified,
    this.subscription,
    this.allowedPropertyUpload,
    this.additionalPropertyUpload,
    this.accountNumber,
    this.rebuselCredit,
    this.isDeleted,
    this.isSuspended,
    this.isFeatured,
    this.isPermanentDeleted,
    this.isDeactivate,
    this.googleId,
    this.facebookId,
    this.twitterId,
    this.oauthType,
    this.mobileToken,
    this.accountd,
    this.remainingProperty,
    this.uploadedProperty,
    this.mostVisit,
    this.property,
    this.micrositeVisit,
  });

  int? id;
  String? firstName;
  String ?lastName;
  String ?name;
  String ?email;
  dynamic emailVerifiedAt;
  String ?apiToken;
  dynamic spServiceCategory;
  dynamic description;
  String ?address;
  String ?lat;
  String ?lng;
  String ?iAmOwner;
  dynamic businessPermitNo;
  dynamic vatNo;
  DateTime? createdAt;
  DateTime ?updatedAt;
  String? agentType;
  dynamic agencyName;
  String ?status;
  String ?userType;
  String ?verified;
  String ?subscription;
  String ?allowedPropertyUpload;
  String ?additionalPropertyUpload;
  String ?accountNumber;
  String ?rebuselCredit;
  String ?isDeleted;
  String ?isSuspended;
  String ?isFeatured;
  String ?isPermanentDeleted;
  String ?isDeactivate;
  dynamic googleId;
  dynamic facebookId;
  dynamic twitterId;
  dynamic oauthType;
  String? mobileToken;
  String? accountd;
  int? remainingProperty;
  int? uploadedProperty;
  int ?mostVisit;
  List<Property> ? property;
  List<Visit>? micrositeVisit;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] == null ? null : json["id"],
    firstName: json["first_name"] == null ? null : json["first_name"],
    lastName: json["last_name"] == null ? null : json["last_name"],
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
    emailVerifiedAt: json["email_verified_at"],
    apiToken: json["api_token"] == null ? null : json["api_token"],
    spServiceCategory: json["sp_service_category"],
    description: json["description"],
    address: json["address"] == null ? null : json["address"],
    lat: json["lat"] == null ? null : json["lat"],
    lng: json["lng"] == null ? null : json["lng"],
    iAmOwner: json["i_am_owner"] == null ? null : json["i_am_owner"],
    businessPermitNo: json["business_permit_no"],
    vatNo: json["vat_no"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    agentType: json["agent_type"] == null ? null : json["agent_type"],
    agencyName: json["agency_name"],
    status: json["status"] == null ? null : json["status"],
    userType: json["user_type"] == null ? null : json["user_type"],
    verified: json["verified"] == null ? null : json["verified"],
    subscription: json["subscription"] == null ? null : json["subscription"],
    allowedPropertyUpload: json["allowed_property_upload"] == null ? null : json["allowed_property_upload"],
    additionalPropertyUpload: json["additional_property_upload"] == null ? null : json["additional_property_upload"],
    accountNumber: json["account_number"] == null ? null : json["account_number"],
    rebuselCredit: json["rebusel_credit"] == null ? null : json["rebusel_credit"],
    isDeleted: json["is_deleted"] == null ? null : json["is_deleted"],
    isSuspended: json["is_suspended"] == null ? null : json["is_suspended"],
    isFeatured: json["is_featured"] == null ? null : json["is_featured"],
    isPermanentDeleted: json["is_permanent_deleted"] == null ? null : json["is_permanent_deleted"],
    isDeactivate: json["is_deactivate"] == null ? null : json["is_deactivate"],
    googleId: json["google_id"],
    facebookId: json["facebook_id"],
    twitterId: json["twitter_id"],
    oauthType: json["oauth_type"],
    mobileToken: json["mobile_token"] == null ? null : json["mobile_token"],
    accountd: json["accountd"] == null ? null : json["accountd"],
    remainingProperty: json["remaining_property"] == null ? null : json["remaining_property"],
    uploadedProperty: json["uploaded_property"] == null ? null : json["uploaded_property"],
    mostVisit: json["most_visit"] == null ? null : json["most_visit"],
    property: json["property"] == null ? null : List<Property>.from(json["property"].map((x) => Property.fromJson(x))),
    micrositeVisit: json["microsite_visit"] == null ? null : List<Visit>.from(json["microsite_visit"].map((x) => Visit.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "first_name": firstName == null ? null : firstName,
    "last_name": lastName == null ? null : lastName,
    "name": name == null ? null : name,
    "email": email == null ? null : email,
    "email_verified_at": emailVerifiedAt,
    "api_token": apiToken == null ? null : apiToken,
    "sp_service_category": spServiceCategory,
    "description": description,
    "address": address == null ? null : address,
    "lat": lat == null ? null : lat,
    "lng": lng == null ? null : lng,
    "i_am_owner": iAmOwner == null ? null : iAmOwner,
    "business_permit_no": businessPermitNo,
    "vat_no": vatNo,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "agent_type": agentType == null ? null : agentType,
    "agency_name": agencyName,
    "status": status == null ? null : status,
    "user_type": userType == null ? null : userType,
    "verified": verified == null ? null : verified,
    "subscription": subscription == null ? null : subscription,
    "allowed_property_upload": allowedPropertyUpload == null ? null : allowedPropertyUpload,
    "additional_property_upload": additionalPropertyUpload == null ? null : additionalPropertyUpload,
    "account_number": accountNumber == null ? null : accountNumber,
    "rebusel_credit": rebuselCredit == null ? null : rebuselCredit,
    "is_deleted": isDeleted == null ? null : isDeleted,
    "is_suspended": isSuspended == null ? null : isSuspended,
    "is_featured": isFeatured == null ? null : isFeatured,
    "is_permanent_deleted": isPermanentDeleted == null ? null : isPermanentDeleted,
    "is_deactivate": isDeactivate == null ? null : isDeactivate,
    "google_id": googleId,
    "facebook_id": facebookId,
    "twitter_id": twitterId,
    "oauth_type": oauthType,
    "mobile_token": mobileToken == null ? null : mobileToken,
    "accountd": accountd == null ? null : accountd,
    "remaining_property": remainingProperty == null ? null : remainingProperty,
    "uploaded_property": uploadedProperty == null ? null : uploadedProperty,
    "most_visit": mostVisit == null ? null : mostVisit,
    "property": property == null ? null : List<dynamic>.from(property!.map((x) => x.toJson())),
    "microsite_visit": micrositeVisit == null ? null : List<dynamic>.from(micrositeVisit!.map((x) => x.toJson())),
  };
}

class Visit {
  Visit({
    this.id,
    this.userId,
    this.ip,
    this.dateVisit,
    this.dateCreated,
    this.dateUpdated,
    this.isDeleted,
    this.propertyId,
  });

  int ?id;
  String? userId;
  String ?ip;
  DateTime? dateVisit;
  DateTime ?dateCreated;
  DateTime ?dateUpdated;
  String? isDeleted;
  String ?propertyId;

  factory Visit.fromJson(Map<String, dynamic> json) => Visit(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"] == null ? null : json["user_id"],
    ip: json["ip"] == null ? null : json["ip"],
    dateVisit: json["date_visit"] == null ? null : DateTime.parse(json["date_visit"]),
    dateCreated: json["date_created"] == null ? null : DateTime.parse(json["date_created"]),
    dateUpdated: json["date_updated"] == null ? null : DateTime.parse(json["date_updated"]),
    isDeleted: json["is_deleted"] == null ? null : json["is_deleted"],
    propertyId: json["property_id"] == null ? null : json["property_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "user_id": userId == null ? null : userId,
    "ip": ip == null ? null : ip,
    "date_visit": dateVisit == null ? null : "${dateVisit!.year.toString().padLeft(4, '0')}-${dateVisit!.month.toString().padLeft(2, '0')}-${dateVisit!.day.toString().padLeft(2, '0')}",
    "date_created": dateCreated == null ? null : dateCreated!.toIso8601String(),
    "date_updated": dateUpdated == null ? null : dateUpdated!.toIso8601String(),
    "is_deleted": isDeleted == null ? null : isDeleted,
    "property_id": propertyId == null ? null : propertyId,
  };
}

class Property {
  Property({
    this.id,
    this.name,
    this.price,
    this.inquiry,
    this.propertyType,
    this.furnishingType,
    this.beds,
    this.lat,
    this.lng,
    this.locationText,
    this.map,
    this.videoLink,
    this.description,
    this.utilities,
    this.amenityPetsAllowed,
    this.amenityLaundryType,
    this.amenityParkingType,
    this.amenityParkingFee,
    this.amenityExtra,
    this.contactRole,
    this.contactFirstName,
    this.contactLastName,
    this.contactEmail,
    this.contactPhone,
    this.dateCreated,
    this.dateUpdated,
    this.status,
    this.addedBy,
    this.updatedBy,
    this.isDuplicate,
    this.isDeleted,
    this.isFeatured,
    this.isAds,
    this.pesoPrice,
    this.location,
    this.firstImage,
    this.mostVisit,
    this.label,
    this.value,
    this.utilitiesArray,
    this.amenityExtraArray,
    this.amenityLaundryTypeArray,
    this.propertyLocation,
    this.propertyPhoto,
    this.propertyVisit,
  });

  int ?id;
  String? name;
  String? price;
  String? inquiry;
  String ?propertyType;
  dynamic furnishingType;
  dynamic beds;
  String ?lat;
  String ?lng;
  String ?locationText;
  dynamic map;
  dynamic videoLink;
  dynamic description;
  String ?utilities;
  dynamic amenityPetsAllowed;
  String ?amenityLaundryType;
  dynamic amenityParkingType;
  String ?amenityParkingFee;
  String ?amenityExtra;
  dynamic contactRole;
  dynamic contactFirstName;
  dynamic contactLastName;
  dynamic contactEmail;
  dynamic contactPhone;
  DateTime? dateCreated;
  DateTime ?dateUpdated;
  String? status;
  String ?addedBy;
  dynamic updatedBy;
  String ?isDuplicate;
  String ?isDeleted;
  String ?isFeatured;
  String ?isAds;
  String? pesoPrice;
  String ?location;
  String ?firstImage;
  int? mostVisit;
  String? label;
  String ?value;
  List<dynamic>? utilitiesArray;
  List<dynamic> ?amenityExtraArray;
  List<dynamic> ?amenityLaundryTypeArray;
  PropertyLocation? propertyLocation;
  List<dynamic>? propertyPhoto;
  List<Visit> ? propertyVisit;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    price: json["price"] == null ? null : json["price"],
    inquiry: json["inquiry"] == null ? null : json["inquiry"],
    propertyType: json["property_type"] == null ? null : json["property_type"],
    furnishingType: json["furnishing_type"],
    beds: json["beds"],
    lat: json["lat"] == null ? null : json["lat"],
    lng: json["lng"] == null ? null : json["lng"],
    locationText: json["location_text"] == null ? null : json["location_text"],
    map: json["map"],
    videoLink: json["video_link"],
    description: json["description"],
    utilities: json["utilities"] == null ? null : json["utilities"],
    amenityPetsAllowed: json["amenity_pets_allowed"],
    amenityLaundryType: json["amenity_laundry_type"] == null ? null : json["amenity_laundry_type"],
    amenityParkingType: json["amenity_parking_type"],
    amenityParkingFee: json["amenity_parking_fee"] == null ? null : json["amenity_parking_fee"],
    amenityExtra: json["amenity_extra"] == null ? null : json["amenity_extra"],
    contactRole: json["contact_role"],
    contactFirstName: json["contact_first_name"],
    contactLastName: json["contact_last_name"],
    contactEmail: json["contact_email"],
    contactPhone: json["contact_phone"],
    dateCreated: json["date_created"] == null ? null : DateTime.parse(json["date_created"]),
    dateUpdated: json["date_updated"] == null ? null : DateTime.parse(json["date_updated"]),
    status: json["status"] == null ? null : json["status"],
    addedBy: json["added_by"] == null ? null : json["added_by"],
    updatedBy: json["updated_by"],
    isDuplicate: json["is_duplicate"] == null ? null : json["is_duplicate"],
    isDeleted: json["is_deleted"] == null ? null : json["is_deleted"],
    isFeatured: json["is_featured"] == null ? null : json["is_featured"],
    isAds: json["is_ads"] == null ? null : json["is_ads"],
    pesoPrice: json["peso_price"] == null ? null : json["peso_price"],
    location: json["location"] == null ? null : json["location"],
    firstImage: json["first_image"] == null ? null : json["first_image"],
    mostVisit: json["most_visit"] == null ? null : json["most_visit"],
    label: json["label"] == null ? null : json["label"],
    value: json["value"] == null ? null : json["value"],
    utilitiesArray: json["utilities_array"] == null ? null : List<dynamic>.from(json["utilities_array"].map((x) => x)),
    amenityExtraArray: json["amenity_extra_array"] == null ? null : List<dynamic>.from(json["amenity_extra_array"].map((x) => x)),
    amenityLaundryTypeArray: json["amenity_laundry_type_array"] == null ? null : List<dynamic>.from(json["amenity_laundry_type_array"].map((x) => x)),
    propertyLocation: json["property_location"] == null ? null : PropertyLocation.fromJson(json["property_location"]),
    propertyPhoto: json["property_photo"] == null ? null : List<dynamic>.from(json["property_photo"].map((x) => x)),
    propertyVisit: json["property_visit"] == null ? null : List<Visit>.from(json["property_visit"].map((x) => Visit.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "price": price == null ? null : price,
    "inquiry": inquiry == null ? null : inquiry,
    "property_type": propertyType == null ? null : propertyType,
    "furnishing_type": furnishingType,
    "beds": beds,
    "lat": lat == null ? null : lat,
    "lng": lng == null ? null : lng,
    "location_text": locationText == null ? null : locationText,
    "map": map,
    "video_link": videoLink,
    "description": description,
    "utilities": utilities == null ? null : utilities,
    "amenity_pets_allowed": amenityPetsAllowed,
    "amenity_laundry_type": amenityLaundryType == null ? null : amenityLaundryType,
    "amenity_parking_type": amenityParkingType,
    "amenity_parking_fee": amenityParkingFee == null ? null : amenityParkingFee,
    "amenity_extra": amenityExtra == null ? null : amenityExtra,
    "contact_role": contactRole,
    "contact_first_name": contactFirstName,
    "contact_last_name": contactLastName,
    "contact_email": contactEmail,
    "contact_phone": contactPhone,
    "date_created": dateCreated == null ? null : dateCreated!.toIso8601String(),
    "date_updated": dateUpdated == null ? null : dateUpdated!.toIso8601String(),
    "status": status == null ? null : status,
    "added_by": addedBy == null ? null : addedBy,
    "updated_by": updatedBy,
    "is_duplicate": isDuplicate == null ? null : isDuplicate,
    "is_deleted": isDeleted == null ? null : isDeleted,
    "is_featured": isFeatured == null ? null : isFeatured,
    "is_ads": isAds == null ? null : isAds,
    "peso_price": pesoPrice == null ? null : pesoPrice,
    "location": location == null ? null : location,
    "first_image": firstImage == null ? null : firstImage,
    "most_visit": mostVisit == null ? null : mostVisit,
    "label": label == null ? null : label,
    "value": value == null ? null : value,
    "utilities_array": utilitiesArray == null ? null : List<dynamic>.from(utilitiesArray!.map((x) => x)),
    "amenity_extra_array": amenityExtraArray == null ? null : List<dynamic>.from(amenityExtraArray!.map((x) => x)),
    "amenity_laundry_type_array": amenityLaundryTypeArray == null ? null : List<dynamic>.from(amenityLaundryTypeArray!.map((x) => x)),
    "property_location": propertyLocation == null ? null : propertyLocation!.toJson(),
    "property_photo": propertyPhoto == null ? null : List<dynamic>.from(propertyPhoto!.map((x) => x)),
    "property_visit": propertyVisit == null ? null : List<dynamic>.from(propertyVisit!.map((x) => x.toJson())),
  };
}

class PropertyLocation {
  PropertyLocation({
    this.id,
    this.propertyId,
    this.unit,
    this.building,
    this.block,
    this.lot,
    this.phase,
    this.houseNo,
    this.street,
    this.subdivision,
    this.barangay,
    this.zipcodeId,
    this.zipCode,
  });

  int? id;
  String? propertyId;
  dynamic unit;
  dynamic building;
  dynamic block;
  dynamic lot;
  dynamic phase;
  dynamic houseNo;
  dynamic street;
  dynamic subdivision;
  dynamic barangay;
  dynamic zipcodeId;
  dynamic zipCode;

  factory PropertyLocation.fromJson(Map<String, dynamic> json) => PropertyLocation(
    id: json["id"] == null ? null : json["id"],
    propertyId: json["property_id"] == null ? null : json["property_id"],
    unit: json["unit"],
    building: json["building"],
    block: json["block"],
    lot: json["lot"],
    phase: json["phase"],
    houseNo: json["house_no"],
    street: json["street"],
    subdivision: json["subdivision"],
    barangay: json["barangay"],
    zipcodeId: json["zipcode_id"],
    zipCode: json["zip_code"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "property_id": propertyId == null ? null : propertyId,
    "unit": unit,
    "building": building,
    "block": block,
    "lot": lot,
    "phase": phase,
    "house_no": houseNo,
    "street": street,
    "subdivision": subdivision,
    "barangay": barangay,
    "zipcode_id": zipcodeId,
    "zip_code": zipCode,
  };
}
