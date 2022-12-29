//  final downloadModel = downloadModelFromJson(jsonStrin);
import 'dart:convert';
DownloadModel downloadModelFromJson(String str) =>
    DownloadModel.fromJson(json.decode(str));
class DownloadModel {
  DownloadModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;
  factory DownloadModel.fromJson(dynamic json) {
    if (json == null) {
      return DownloadModel();
    } else {
      return DownloadModel(
        page: json["page"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );
    }
  }
}

class Result {
  Result({
    this.backdropPath,
    this.title,
    this.posterPath,
  });
  String? backdropPath;
  String? title;
  String? posterPath;
  factory Result.fromJson(dynamic json) {
    if (json == null) {
      return Result();
    }
    return Result(
      backdropPath: json["backdrop_path"],
      title: json["title"],
      posterPath: json["poster_path"],
    );
  }
}
