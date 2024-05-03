import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';

// ignore: must_be_immutable
class TrandingCard extends StatefulWidget {
  ArticlesList data;
    TrandingCard({Key? key,required this.data});

  @override
  State<TrandingCard> createState() => _TrandingCardState();
}

class _TrandingCardState extends State<TrandingCard> {
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
                  // height: screenSize.height * 0.3,
                  width: screenSize.width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.6,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                              child: Image.network(widget.data.url!),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.004,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tranding no:1 ',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            Text(
                              '2days ago',
                              style: Theme.of(context).textTheme.labelSmall,
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                                child: Text('Save water save life is best News',
                                    maxLines: 2, style: TextStyle(fontSize: 20)))
                          ],
                        ),
                        // SizedBox(height:screenSize.height*0.00,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            Text(
                              'Ajumal',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
    ) ;
  }
}