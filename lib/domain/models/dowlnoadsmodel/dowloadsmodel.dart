import 'dart:convert';

DownloadModel downloadModelFromJson(String str) =>
    DownloadModel.fromJson(json.decode(str));

class DownloadModel {
  DownloadModel({
    this.results,
  });

  List<Result>? results;

  factory DownloadModel.fromJson(dynamic json) {
    if (json == null) {
      return DownloadModel();
    } else {
      return DownloadModel(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );
    }
  }
}

class Result {
  Result({
    this.backdropPath,
  });
  String? backdropPath;

  factory Result.fromJson(dynamic json) {
    if (json == null) {
      return Result();
    }
    return Result(
      backdropPath: json["backdrop_path"],
    );
  }
}
