class NewsModel {
  String? id;
  String? url;
  String? title;
  String? text;
  String? publisher;
  String? auther;
  String? img;
  String? date;
  NewsModel(this.id, this.url, this.title, this.text, this.publisher,
      this.auther, this.img, this.date);

  NewsModel.fromjson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
    text = json['text'];
    publisher = json['publisher'];
    auther = json['auther'];
    img = json['image'];
    date = json['date'];

  }
}
