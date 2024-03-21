import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/model/number.dart';
class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);
  final List<Number> familyMembers= const[
  Number(
    image: 'assets/images/family_members/family_father.png',
    enName: 'Father',
    jpName: 'Chichioya',
    sound: 'father.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_mother.png',
    enName: 'Mother',
    jpName: 'Hahaoya',
    sound: 'mother.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_grandfather.png',
    enName: 'Grand Father',
    jpName: 'Ojisan',
    sound: 'grand father.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_grandmother.png',
    enName: 'Grand Mother',
    jpName: 'Sobo',
    sound: 'grand mother.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_son.png',
    enName: 'Son',
    jpName: 'Musuko',
    sound: 'son.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_daughter.png',
    enName: 'Daughter',
    jpName: 'Musume',
    sound: 'daughter.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_older_brother.png',
    enName: 'Older Brother',
    jpName: 'Nisan',
    sound: 'older bother.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_older_sister.png',
    enName: 'Older Sister',
    jpName: 'Ane',
    sound: 'older sister.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_younger_brother.png',
    enName: 'Younger Brother',
    jpName: 'Ototo',
    sound: 'younger brohter.wav',
  ),
  Number(
    image: 'assets/images/family_members/family_younger_sister.png',
    enName: 'Younger Sister',
    jpName: 'Imoto',
    sound: 'younger sister.wav',
  ),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Family Members'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed:(){
              Navigator.pop(context);
            } ,
          ),
          backgroundColor: const Color(0xff483229) ,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Item(
              number: familyMembers[index],
              color:const Color(0xff528031),
              itemType: 'family_members',
            );
          },
          itemCount: familyMembers.length,

        )
    );
  }
}
