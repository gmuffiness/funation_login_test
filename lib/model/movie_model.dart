class Movie {
  final String title;
  final String keyword;
  final String poster;
  final String money;
  final String percentage;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        money = map['money'],
        percentage = map['percentage'],
        like = map['like'];

  @override
  String toString() => "Movie<$title:$keyword>";
}
