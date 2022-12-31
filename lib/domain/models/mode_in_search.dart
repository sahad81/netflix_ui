import 'dart:convert';

// ignore: non_constant_identifier_names
ModelSerarch ModelSerarchFromJson(String str) =>
    ModelSerarch.fromJson(json.decode(str));

class ModelSerarch {
  ModelSerarch({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  factory ModelSerarch.fromJson(dynamic json) {
    // ignore: unnecessary_null_comparison
    if (ModelSerarch == null) {
      return ModelSerarch();
    } else {
      return ModelSerarch(
        page: json["page"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
    }
  }
}

class Result {
  Result({
    this.posterpath,
    this.id,
    this.title,
    this.name,
  });

  String? posterpath;
  int? id;
  String? title;

  String? name;

  factory Result.fromJson(dynamic json) {
    // ignore: unnecessary_null_comparison
    if (Result == null) {
      return Result();
    } else {
      return Result(
        posterpath: json["poster_path"],
        id: json["id"],
        title: json["title"],
        name: json["name"],
      );
    }
  }
}
