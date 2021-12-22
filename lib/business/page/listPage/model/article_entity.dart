import 'package:json_annotation/json_annotation.dart';
/// apkLink : ""
/// audit : 1
/// author : "郭霖"
/// canEdit : false
/// chapterId : 409
/// chapterName : "郭霖"
/// collect : false
/// courseId : 13
/// desc : ""
/// descMd : ""
/// envelopePic : ""
/// fresh : false
/// host : ""
/// id : 20873
/// link : "https://mp.weixin.qq.com/s/OEPg38Gcom0Tr_qiuP_-YQ"
/// niceDate : "2021-12-17 00:00"
/// niceShareDate : "1天前"
/// origin : ""
/// prefix : ""
/// projectLink : ""
/// publishTime : 1639670400000
/// realSuperChapterId : 407
/// selfVisible : 0
/// shareDate : 1639925788000
/// shareUser : ""
/// superChapterId : 408
/// superChapterName : "公众号"
/// tags : [{"name":"公众号","url":"/wxarticle/list/409/1"}]
/// title : "Android筑基&mdash;&mdash;Kotlin by 关键字详解"
/// type : 0
/// userId : -1
/// visible : 1
/// zan : 0

part 'article_entity.g.dart';
@JsonSerializable()
class ArticleEntity {
  ArticleEntity({
    this.apkLink,
    this.audit,
    this.author,
    this.canEdit,
    this.chapterId,
    this.chapterName,
    this.collect,
    this.courseId,
    this.desc,
    this.descMd,
    this.envelopePic,
    this.fresh,
    this.host,
    this.id,
    this.link,
    this.niceDate,
    this.niceShareDate,
    this.origin,
    this.prefix,
    this.projectLink,
    this.publishTime,
    this.realSuperChapterId,
    this.selfVisible,
    this.shareDate,
    this.shareUser,
    this.superChapterId,
    this.superChapterName,
    this.title,
    this.type,
    this.userId,
    this.visible,
    this.zan,
    this.test
  });



  String? apkLink;
  String? test;
  int? audit;
  String? author;
  bool? canEdit;
  int? chapterId;
  String? chapterName;
  bool? collect;
  int? courseId;
  String? desc;
  String? descMd;
  String? envelopePic;
  bool? fresh;
  String? host;
  int? id;
  String? link;
  String? niceDate;
  String? niceShareDate;
  String? origin;
  String? prefix;
  String? projectLink;
  int? publishTime;
  int? realSuperChapterId;
  int? selfVisible;
  int? shareDate;
  String? shareUser;
  int? superChapterId;
  String? superChapterName;
  String? title;
  int? type;
  int? userId;
  int? visible;
  int? zan;


factory ArticleEntity.fromJson(Map<String, dynamic> json) => _$ArticleEntityFromJson(json);

Map<String, dynamic> toJson() => _$ArticleEntityToJson(this);
}

