import 'package:get/get.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/service/get_service.dart';

class Controller extends GetxController{
  var newsModel=NewsModel().obs;
  getData()async{
    try{
      var data =await GetService().getData();
      if(data!=null){
        newsModel.value=data;
        print('/////co=newsMOdel;_$newsModel');
      }
    }catch(e){
      Get.snackbar('title', "$e");
    }
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}