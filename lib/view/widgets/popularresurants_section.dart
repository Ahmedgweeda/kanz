import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularRestaurantsSection extends StatelessWidget {
  const PopularRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Popular Restaurants',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            const Spacer(),
            const  Text('View All',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
                child:Container(
                  padding: EdgeInsets.all(3),
                  width: 200,
                  height: 180,

                  child:Stack(

                    children: [

                      Container(
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('images/pasta.png'),
                                fit: BoxFit.fill
                            )
                        ),

                      ),
                      Positioned(
                        top: 15,
                          right: 3,
                          child:Icon(Icons.favorite_border,color: Colors.grey,size: 30,) ),
                      Positioned(
                        bottom:0,
                        child: Container(
                            width: 200,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            color: Colors.white.withOpacity(0.4),

                            child:Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pasta',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Pasta',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Text('4.5',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:Colors.white),

                                      )

                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ) ),

            Expanded(
                child:Container(
                  padding: EdgeInsets.all(3),
                  width: 200,
                  height: 180,

                  child:Stack(

                    children: [

                      Container(
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('images/pasta.png'),
                                fit: BoxFit.fill
                            )
                        ),

                      ),
                      Positioned(
                          top: 15,
                          right: 3,
                          child:Icon(Icons.favorite_border,color: Colors.grey,size: 30,) ),
                      Positioned(
                        bottom:0,
                        child: Container(
                            width: 200,
                            height: 80,
                            alignment: Alignment.centerLeft,
                            color: Colors.white.withOpacity(0.4),

                            child:Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pasta',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Pasta',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                                      Text('4.5',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:Colors.white),

                                      )

                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ) ),
        ],),
      ],
    );
  }
}
