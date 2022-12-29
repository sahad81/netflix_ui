import 'dart:convert';

Copymodel copymodelFromJson(String str) => Copymodel.fromJson(json.decode(str));


class Copymodel {
    Copymodel({
        this.page,
        this.results,
        this.totalPages,
        this.totalResults,
    });

    int? page;
    List<Result>? results;
    int? totalPages;
    int? totalResults;

    factory Copymodel.fromJson(Map<String, dynamic> json) => Copymodel(
        page: json["page"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );


}

class Result {
    Result({
        this.adult,
        this.backdropPath,
        this.id,
        this.title,
      
        this.originalTitle,
        this.overview,
        this.posterPath,

        this.genreIds,
        this.popularity,
        this.releaseDate,
        this.video,
        this.voteAverage,
        this.voteCount,
        this.name,
        this.originalName,
        this.firstAirDate,
        this.originCountry,
    });

    bool? adult;
    String? backdropPath;
    int? id;
    String? title;
  
    String? originalTitle;
    String? overview;
    String? posterPath;
   
    List<int>? genreIds;
    double? popularity;
    DateTime? releaseDate;
    bool? video;
    double? voteAverage;
    int? voteCount;
    String? name;
    String? originalName;
    DateTime? firstAirDate;
    List<String>? originCountry;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        id: json["id"],
        title: json["title"] == null ? null : json["title"],
    
        originalTitle: json["original_title"] == null ? null : json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
       
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        popularity: json["popularity"].toDouble(),
     
        video: json["video"] == null ? null : json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
        name: json["name"] == null ? null : json["name"],
        originalName: json["original_name"] == null ? null : json["original_name"]);
       
}
