import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/model/number.dart';
class Item extends StatelessWidget {
  const Item({Key? key, required this.number, required this.color,required this.itemType}) : super(key: key);
  final Number number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
      color:   color,
      child: Row(
        children: [
          Container(
            child: Image.asset(number.image!),
            color:  const Color(0xfffee7b1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),

              ],
            ),
          ),
          const Spacer(flex: 1,),
           Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: (){
                AudioCache player =AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              },
              icon:const Icon(
                  Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.number, required this.color, required this.itemType}) : super(key: key);
  final Number number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
      color:   const Color(0xff46A5CA),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),

              ],
            ),
          ),
          const Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: (){
                AudioCache player =AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              },
              icon:const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
