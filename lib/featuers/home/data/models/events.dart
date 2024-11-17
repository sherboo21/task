class EventsDataModel {
  List<Data>? data;
  int? status;
  String? message;

  EventsDataModel({this.data, this.status, this.message});

  EventsDataModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
  }
}

class Data {
  int? id;
  String? title;
  String? hijriStartsAt;
  String? startsAt;
  String? remainingDays;
  String? eventDate;
  String? eventDateEn;
  String? eventDay;
  String? eventDateAr;
  String? endsAt;
  String? startsEn;
  String? details;
  String? createdAt;
  String? publishedAt;
  bool? pinned;

  Data(
      {this.id,
      this.title,
      this.hijriStartsAt,
      this.startsAt,
      this.remainingDays,
      this.eventDate,
      this.eventDateEn,
      this.eventDay,
      this.eventDateAr,
      this.endsAt,
      this.startsEn,
      this.details,
      this.createdAt,
      this.publishedAt,
      this.pinned});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    hijriStartsAt = json['hijri_starts_at'];
    startsAt = json['starts_at'];
    remainingDays = json['remaining_days'];
    eventDate = json['event_date'];
    eventDateEn = json['event_date_en'];
    eventDay = json['event_day'];
    eventDateAr = json['event_date_ar'];
    endsAt = json['ends_at'];
    startsEn = json['starts_en'];
    details = json['details'];
    createdAt = json['created_at'];
    publishedAt = json['published_at'];
    pinned = json['pinned'];
  }
}
