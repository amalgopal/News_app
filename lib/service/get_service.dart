import 'dart:convert';

import 'package:news_app/model/news_model.dart';
import 'package:http/http.dart' as http;

class GetService{
  static const url='https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=e5da2818758140058361df180b605a21';

  Future<NewsModel?> getData()async{
 
      var response=await http.get(Uri.parse(url));
      if (response.statusCode==200) {
        var body=jsonDecode(response.body);
        print('//////////////////////////////body${body}');
      var data= NewsModel.fromJson(body);
      print('//////////////////////////////data${data}');
        return data;
        
      }else{
        return null;
      }
      
   
  }
}