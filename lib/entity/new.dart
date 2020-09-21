import 'package:json_annotation/json_annotation.dart';
part 'new.g.dart';

@JsonSerializable()
class New{
  String sid;
  String text;
  String thumbnail;
  String video;
  String images;
  String up;
  String down;
  String forward;
  String comment;
  String uid;
  String name;
  String header;
  String top_comments_content;
  String top_comments_voiceuri;
  String top_comments_uid;
  String top_comments_name;
  String top_comments_header;
  String passtime;

  New(){}
  factory New.fromJson(Map<String, dynamic> json) => _$NewFromJson(json);
  Map<String, dynamic> toJson() => _$NewToJson(this);

}
