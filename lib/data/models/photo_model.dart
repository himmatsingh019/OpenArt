import 'dart:convert';

class PhotoModel {
  PhotoModel({
    required this.id,
    required this.width,
    required this.height,
    required this.color,
    required this.urls,
    required this.links,
  });

  final String id;
  final int width;
  final int height;
  final String color;
  final Urls urls;
  final PhotoModelLinks links;

  factory PhotoModel.fromJson(String str) => PhotoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PhotoModel.fromMap(Map<String, dynamic> json) => PhotoModel(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        color: json["color"],
        urls: Urls.fromMap(json["urls"]),
        links: PhotoModelLinks.fromMap(json["links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "width": width,
        "height": height,
        "color": color,
        "urls": urls.toMap(),
        "links": links.toMap(),
      };
}

class PhotoModelLinks {
  PhotoModelLinks({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  });

  final String self;
  final String html;
  final String download;
  final String downloadLocation;

  factory PhotoModelLinks.fromJson(String str) => PhotoModelLinks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PhotoModelLinks.fromMap(Map<String, dynamic> json) => PhotoModelLinks(
        self: json["self"],
        html: json["html"],
        download: json["download"],
        downloadLocation: json["download_location"],
      );

  Map<String, dynamic> toMap() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
      };
}

class Urls {
  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });

  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;
  final String smallS3;

  factory Urls.fromJson(String str) => Urls.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Urls.fromMap(Map<String, dynamic> json) => Urls(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
        smallS3: json["small_s3"],
      );

  Map<String, dynamic> toMap() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}
