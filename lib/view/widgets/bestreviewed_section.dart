import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestReviewedSection extends StatelessWidget {
  const BestReviewedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Best Reviewed Food ',
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(
          height: 190,
          child: ListView.builder(
              padding: EdgeInsets.only(top: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context,index)=>Container(
                padding: EdgeInsets.all(3),
                width: 180,
                height: 180,

                child:Stack(

                  children: [

                    Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('images/image23.png'),
                              fit: BoxFit.fill
                          )
                      ),
                      // child: Image.asset('images/foodd0.png',width: 100,height: 100,)
                    ),
                    Positioned(
                      bottom:10,
                      child: Container(
                        alignment: Alignment.center,
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight:Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        child: Text('Pizza',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ),
                    Positioned(
                      top:10,
                      left: 0,
                      child: Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight:Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text('4.5',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
