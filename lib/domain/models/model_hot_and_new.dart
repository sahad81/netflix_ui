// To parse this JSON data, do
//
//     final modelHotAndNew = modelHotAndNewFromJson(jsonString);

import 'dart:convert';

ModelHotAndNew modelHotAndNewFromJson(String str) =>
    ModelHotAndNew.fromJson(json.decode(str));



class ModelHotAndNew {
  ModelHotAndNew({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,

  });

  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;
 

  factory ModelHotAndNew.fromJson(dynamic json) {
    if (json==null) {
      return ModelHotAndNew();

      
    } else {
      return ModelHotAndNew(
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
    this.backdropPath,
    this.id,
    this.title,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.name,
    this.firstAirDate,
  
  });

  String? backdropPath;
  int? id;
  String? title;
 
  String? overview;
  String? posterPath;

  DateTime? releaseDate;

  double? voteAverage;
  int? voteCount;
  String? name;

  DateTime? firstAirDate;

factory Result.fromJson(Map<String, dynamic> json) {
  // ignore: unnecessary_null_comparison
  if (json==null) {
    return Result()
    ;
  } else {
    return  Result(
        backdropPath: json["backdrop_path"],
        id: json["id"],
        title: json["title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        releaseDate: json["release_date"] == null
            ? null
            : DateTime.parse(json["release_date"]),
        name: json["name"],
        firstAirDate: json["first_air_date"] == null
            ? null
            : DateTime.parse(json["first_air_date"]),
      );
  }
}
}
