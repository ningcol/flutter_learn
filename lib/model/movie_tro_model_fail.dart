

// 自己写的模型类 ！！ 没能转成功
class MovieIntroModel{
  final RatingBean rating;
  final List<String> genres;
  final String title;
  final List<CastsBean> casts;
  final String collectCount;
  final String originalTitle;
  final String subtype;
  final List<CastsBean> directors;
  final String year;
  final AvatarsBean images;
  final String alt;
  final String id;



  MovieIntroModel(this.rating, this.genres, this.title, this.casts, this.collectCount, this. originalTitle, this.subtype, this.directors, this.year, this.images, this.alt, this.id);


  static List<MovieIntroModel> movieList(Map<String, dynamic> json){
    return  List<MovieIntroModel>.generate(json['subjects'].length, (index) => new MovieIntroModel.fromJson(json['subjects'][index]));
  }
        

  MovieIntroModel.fromJson(Map<String, dynamic> json):
      rating = new RatingBean.fromJson(json['rating']),
      genres = json['genres']!=null? List<String>.generate(json['genres'].length, (index) =>json['genres'][index]) : null,
      title = json['title'],
      casts = json['casts']!=null? List<CastsBean>.generate(json['casts'].length, (index) => new CastsBean.fromJson(json['casts'][index])): null,
      collectCount = json['collectCount'].toString(),
      originalTitle = json['originalTitle'],
      subtype = json['subtype'],
      directors = json['directors']!=null? List<CastsBean>.generate(json['directors'].length, (index) => new CastsBean.fromJson(json['directors'][index])): null,
      year = json['year'],
      images = new AvatarsBean.fromJson(json['images']),
      alt = json['alt'],
      id = json['id'];

//  Map<String, dynamic> toJson() =>
//      {
//        'title': title,
//        'type': type,
//        'year': year,
//        'score': score,
//      };

      

}

class RatingBean {
  final String max;
  final String average;
  final String stars;
  final String min;

  RatingBean(this.max, this.average, this.stars, this.min);

  RatingBean.fromJson(Map<String, dynamic> json):
      max = json['max'].toString(),
      average = json['average'].toString(),
      stars = json['stars'].toString(),
      min = json['min'].toString();
}


class CastsBean {
  final String alt;
  final AvatarsBean avatars;
  final String name;
  final String id;

  CastsBean(this.alt, this.avatars, this.name, this.id);

  CastsBean.fromJson(Map<String, dynamic> json):
      alt = json['alt'],
      avatars =  new AvatarsBean.fromJson(json['avatars']),
      name = json['name'],
      id = json['id'];

}

class AvatarsBean {
  final String small;
  final String large;
  final String medium;

  AvatarsBean(this.small, this.large, this.medium);

  AvatarsBean.fromJson(Map<String, dynamic> json):
      small = json['small'],
      large = json['large'],
      medium = json['medium'];

}

