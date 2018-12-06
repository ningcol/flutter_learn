
class MovieIntroModel{
  final String title;
  final String type;
  final String year;
  final String score;

  MovieIntroModel(this.title, this.type, this.year, this.score);

  MovieIntroModel.fromJson(Map<String, dynamic> json):
        title = json['title'],
        type = json['type'],
        year = json['year'],
        score = json['score'];


  Map<String, dynamic> toJson() =>
      {
        'title': title,
        'type': type,
        'year': year,
        'score': score,
      };


}