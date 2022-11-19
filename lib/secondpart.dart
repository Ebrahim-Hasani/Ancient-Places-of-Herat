import 'package:flutter/material.dart';
import 'subclass/category1.dart';
import 'subclass/category2.dart';
import 'main.dart';

class Category extends StatefulWidget {

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 65,
                        width: 196,
                        child: Center(child: Text("قلعه اختیارالدین",style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                        ),)),
                        decoration:BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(
                            color: Colors.yellow,
                          ),
                          borderRadius: BorderRadius.horizontal(left: Radius.elliptical(65,34 ),right: Radius.elliptical(65, 34)),
                        ),


                      ),
                    ],
                  ),
                  SizedBox(height: 75,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 66,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(right: Radius.elliptical(15, 20),left:Radius.elliptical(15,20) ),
                          border: Border.all(
                            color: Colors.black26,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Category1()));
                          },
                          child:  Center(
                            child: Text("تاریخچه",style: TextStyle(
                              fontSize:26,
                              color: Colors.black,
                            ),),
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 75,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 66,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(right: Radius.elliptical(15, 20),left:Radius.elliptical(15,20) ),
                          border: Border.all(
                            color: Colors.black26,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RootAll()));
                          },
                          child:  Center(
                            child: Text("آلبوم عکس ها",style: TextStyle(
                              fontSize:26,
                              color: Colors.black,
                            ),),
                          ),

                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 75,),

                  SizedBox(height: 75,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("بازگشت")))
                    ],
                  ),

                ],
              ),
            ),

      ),
    );
  }
}
