import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/controller.dart';
import 'package:news_app/widget/tranding_cards.dart';

class ScreenHome extends StatelessWidget {
    ScreenHome({super.key});
   final controller =Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'NEWS',
          style: Theme.of(context).textTheme.headlineLarge,
        )),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hot News',
                        style: Theme.of(context).textTheme.bodyLarge),
                    Text(
                      'see all',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
          SizedBox(
            width: double.infinity,
            
            child: CarouselSlider.builder(
              
              itemCount:controller.newsModel.value.articles!.length, 
              options: CarouselOptions(
                
                height:280,
                autoPlay: true,
                viewportFraction: 0.55,
                autoPlayCurve: Curves.fastOutSlowIn
              ),
              itemBuilder: (context,itemeIntex,pageViweIntex){
                var data= controller.newsModel.value.articles;
                print('///////////:-$data');
              return  TrandingCard( data:data![itemeIntex],);
            }, ),
          ),
            ],
          ),
        ));
  }
}
