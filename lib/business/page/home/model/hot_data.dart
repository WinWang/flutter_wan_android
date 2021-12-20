import 'package:json_annotation/json_annotation.dart';

part 'hot_data.g.dart';

@JsonSerializable()
class HotData {
  int? id;
  String? link;
  String? name;
  int? order;
  int? visible;

  HotData(this.id, this.link, this.name, this.order, this.visible);

  factory HotData.fromJson(Map<String, dynamic> json) =>
      _$HotDataFromJson(json);

  Map<String, dynamic> toJson() => _$HotDataToJson(this);
}
