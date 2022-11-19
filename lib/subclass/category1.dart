import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../secondpart.dart';

class Category1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
           children: [
             Container(
               child: Center(child: Text("تاریخچه",style: TextStyle(
                 fontSize: 35
               ),)),
             ),
             SizedBox(height: 40,),
             Container(
               margin: EdgeInsets.all(10),
               child:Text(

                   "مسجد جامع هرات (دگرنام: مسجد جمعه هرات) کهن‌ترین مسجد در هرات است که بسیار بازسازی شده‌است. بیشتر گسترش آن در دورهٔ طلایی عهد تیموریان بود."
                   "امپراتوری تیموریان در هرات توجه خاصی به احداث بنا‌های تاریخی مانند مساجد، خانقاه‌ها، کتابخانه‌ها و سایر اماکن فرهنگی داشتند. با این وجود، گوهر‌شاد بیگم همسر شاهرخ میرزای تیموری برای اولین بار در سال ۸۲۰ هجری قمری، پروژه احداث مصلی هرات را آغاز کرد و این مصلی شامل مدرسه، مسجد جامع گوهرشاد، مدرسه و خانقاه سلطان حسین بایقرا، مسجد جامع امیر علی شیرنوایی و مانند آن می‌شد"

                  ) ,
               color: Colors.white,

             ),
             SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ElevatedButton(onPressed: (){
                   Navigator.pop(context);
                 }, child:Text("بازگشت")),
               ],
             ),
           ],
        ),
      ),
    );
  }
}
