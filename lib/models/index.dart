class Pictures {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Pictures({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Pictures.fromJson(Map<String, dynamic> json){
    return Pictures(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl']
    );
  }

}
