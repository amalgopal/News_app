
// class NewsModel{
// List<ArticlesList>? articles;
// NewsModel({this.articles});

// factory NewsModel.fromJson(Map<String,dynamic> json){
// return NewsModel(
//   articles:List<ArticlesList>.from(json['articles'].map((e)=>ArticlesList.fromJson(e))));

// }
// Map<String,dynamic> toJson(){
//   return{
//     'articles':List<dynamic>.from(articles!.map((e) =>e.toJson() ))
//   };
// }
// }

// class ArticlesList{
//   String? author;
//   String? title;
//   String? description;
//   String? url1;
//   String? imageUrl2;
//   String? publishedAt;
//   String? content;
  
//   ArticlesList({
//     this.author,
//     this.title,
//     this.description,
//     this.url1,
//     this.imageUrl2,
//     this.publishedAt,
//     this.content});

//     factory ArticlesList.fromJson(Map<String,dynamic>json){
//       return ArticlesList(
//         author: json['author'],
//         title: json['title'],
//         description: json['description'],
//         url1: json['url'],
//         imageUrl2: json['urlToImage'],
//         publishedAt: json['publishedAt'],
//         content: json['content']
//       );
//     }
//     Map<String,dynamic> toJson(){
//       return{
//         'author':author,
//         'title':title,
//         'description':description,
//         'url':url1,
//         'urlToImage':imageUrl2,
//         'publishedAt':publishedAt,
//         'content':content,
//       };
//     }
// }



class NewsModel {
  List<ArticlesList>? articles;

  NewsModel({this.articles});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      articles: List<ArticlesList>.from(
          (json['articles'] as List<dynamic>).map((e) => ArticlesList.fromJson(e))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'articles': List<dynamic>.from(articles!.map((e) => e.toJson())),
    };
  }
}

class ArticlesList {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ArticlesList(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory ArticlesList.fromJson(Map<String, dynamic> json) {
    return ArticlesList(
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
    };
  }
}
