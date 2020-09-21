// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

New _$NewFromJson(Map<String, dynamic> json) {
  return New()
    ..sid = json['sid'] as String
    ..text = json['text'] as String
    ..thumbnail = json['thumbnail'] as String
    ..video = json['video'] as String
    ..images = json['images'] as String
    ..up = json['up'] as String
    ..down = json['down'] as String
    ..forward = json['forward'] as String
    ..comment = json['comment'] as String
    ..uid = json['uid'] as String
    ..name = json['name'] as String
    ..header = json['header'] as String
    ..top_comments_content = json['top_comments_content'] as String
    ..top_comments_voiceuri = json['top_comments_voiceuri'] as String
    ..top_comments_uid = json['top_comments_uid'] as String
    ..top_comments_name = json['top_comments_name'] as String
    ..top_comments_header = json['top_comments_header'] as String
    ..passtime = json['passtime'] as String;
}

Map<String, dynamic> _$NewToJson(New instance) => <String, dynamic>{
      'sid': instance.sid,
      'text': instance.text,
      'thumbnail': instance.thumbnail,
      'video': instance.video,
      'images': instance.images,
      'up': instance.up,
      'down': instance.down,
      'forward': instance.forward,
      'comment': instance.comment,
      'uid': instance.uid,
      'name': instance.name,
      'header': instance.header,
      'top_comments_content': instance.top_comments_content,
      'top_comments_voiceuri': instance.top_comments_voiceuri,
      'top_comments_uid': instance.top_comments_uid,
      'top_comments_name': instance.top_comments_name,
      'top_comments_header': instance.top_comments_header,
      'passtime': instance.passtime,
    };
