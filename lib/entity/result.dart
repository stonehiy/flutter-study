import 'package:json_annotation/json_annotation.dart';
part 'result.g.dart';

///flutter pub run build_runner build
@JsonSerializable()
class Result {
  int code;
  String message;
  dynamic result;

  Result({this.code, this.message, this.result});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
