// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  @JsonKey(fromJson: _parseString)
  final String id;
  final String title;
  final String message;
  @JsonKey(name: 'createdAt', fromJson: _parseDate)
  final String date;

  NotificationModel({
    required this.id,
    required this.title,
    required this.message,
    required this.date,
  });

  factory NotificationModel.fromRemote(RemoteMessage message) =>
      NotificationModel(
        // id: int.parse(message.messageId!),
        id: message.messageId ?? "no id",
        title: message.notification!.title!,
        message: message.notification!.body!,
        date: message.sentTime!.toString(),
      );

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);

  @override
  String toString() {
    return 'NotificationModel(id: $id, title: $title, message: $message, date: $date)';
  }

  static String _parseDate(String date) => DateFormat("dd MMM yyyy - hh:mm a")
      .format(DateTime.parse(date).toLocal());
  static String _parseString(dynamic data) => data.toString();
  @override
  bool operator ==(covariant NotificationModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.message == message &&
        other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ message.hashCode ^ date.hashCode;
  }
}
