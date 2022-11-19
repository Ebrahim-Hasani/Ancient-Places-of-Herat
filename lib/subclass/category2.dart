import 'package:flutter/material.dart';

import '../secondpart.dart';

const productListg=[
  {
    'image':'asset/khaja.jpg',
    'name':'خواجه عبدالله انصاری'
  },{
    'image':'asset/hakhteyaroden.jpg',
    'name':'قلعه اختیار الدین'
  },{
    'image':'asset/manarse_herat.jpg',
    'name':'مناره های هرات'
  },{
    'image':'asset/moziyam.jpg',
    'name':'موزیم ملی افغانستان'
  }
];


class RootAll extends StatefulWidget {
  const RootAll({Key? key}) : super(key: key);

  @override
  State<RootAll> createState() => _RootAllState();
}

class _RootAllState extends State<RootAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("آلبوم عکس ها",style: TextStyle(
                 fontSize: 35
                ),),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Container(
            height: 700,
            child: Category2(),
          ),

        ],
      ),
    );
  }
}




class Category2 extends StatefulWidget {
  @override
  State<Category2> createState() => _Category2State();
}

class _Category2State extends State<Category2> {

  @override
  Widget build(BuildContext context) {
    // now i create grid how column product want to show
    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: productListg.length,
      itemBuilder: (BuildContext context, int index){
        return DisplayAlbom(
          name:productListg[index]['name'],
          image: productListg[index]['image'],
        );
      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,childAspectRatio: 1),
    );
  }
}



class DisplayAlbom extends StatefulWidget {
  final  name;
  final  image;
  DisplayAlbom({
    required this.name,
    required this.image
    });
  @override
  _DisplayAlbomState createState() => _DisplayAlbomState();
}

class _DisplayAlbomState extends State<DisplayAlbom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:180,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child:
              Image(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.name),
              ],
            ),

          ],
        ),
      )
    );

  }
}