import 'dart:convert';

// ignore: non_constant_identifier_names
TrandingModel TrandingModelFromJson(String str) =>
    TrandingModel.fromJson(json.decode(str));

class TrandingModel {
  TrandingModel({
    this.results,
  });

  List<Result>? results;

  factory TrandingModel.fromJson(dynamic json) {
      
      return TrandingModel(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );
    
  }
}

class Result {
  Result({
    this.backdropPath,
    this.posterpath
  });
  String? backdropPath;
  String? posterpath;

  factory Result.fromJson(dynamic json) {
    if (json == null) {
      return Result();
    }
    return Result(
      posterpath: json["poster_path"],
      backdropPath: json["backdrop_path"],
    );
  }
}
