// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screans/family_members_page.dart';
import 'package:toku_app/screans/phrases_screen.dart';

import 'colors_page.dart';
import 'numbers_page.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff483229),
      ),
      body: Column(
        children: [
          category(
            name: 'Numbers',
            color: const Color((0xffF99430)),
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => const Numbers(),
              ),);
            },
          ),
          category(
            name: 'Family Members',
            color: const Color(0xff528031),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const FamilyMembers(),
              ),);
            },
          ),
          category(
            name: 'colors',
            color: const Color(0xff7C3FA1),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const ColorsPage(),
              ),);
            },
          ),
          category(
            name: 'Phrases',
            color: const Color(0xff46A5CA),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const PhrasesScreen(),
              ),);
            },
          ),

        ],
      ),
    );
  }
}
