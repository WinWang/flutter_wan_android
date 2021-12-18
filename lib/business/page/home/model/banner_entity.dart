import 'package:json_annotation/json_annotation.dart';

part 'banner_entity.g.dart';

@JsonSerializable()
class BannerEntity {
  List<DataBean>? data;
  num? errorCode;
  String? errorMsg;

  BannerEntity({this.data, this.errorCode, this.errorMsg});

  factory BannerEntity.fromJson(Map<String, dynamic> json) => _$BannerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BannerEntityToJson(this);
}

@JsonSerializable()
class DataBean {
  String? desc;
  num? id;
  String? imagePath;
  num? isVisible;
  num? order;
  String? title;
  num? type;
  String? url;

  DataBean({this.desc, this.id, this.imagePath, this.isVisible, this.order, this.title, this.type, this.url});

  factory DataBean.fromJson(Map<String, dynamic> json) => _$DataBeanFromJson(json);

  Map<String, dynamic> toJson() => _$DataBeanToJson(this);
}

