import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularFoodsSection extends StatelessWidget {
  const PopularFoodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            const Text('Popular Foods Nearby',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            const Spacer(),
            const  Text('View All',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
          ],
        ),

        SizedBox(
          height: 120,
          child: ListView.builder(
            padding: EdgeInsets.only(top: 10),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context,index)=>Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.1),
              ),
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(8),
              height: 120,
              width: 380,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(

                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:const DecorationImage(
                          image:AssetImage('images/meta pizza.jpeg'),
                          fit: BoxFit.fill
                      ),

                    ),
                  ),
                  const SizedBox(width: 5,),
                 const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'Meta Pizza',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Burger',
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
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
                                color:Colors.black),

                          ),

                        ],
                      ),
                      Text(
                        '\$ 250.00',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                  Spacer(),
                  FloatingActionButton(
                    mini: true,
                    shape: CircleBorder(),
                    backgroundColor: Color(0xff7C0631),
                    onPressed: (){},
                    child: Icon(Icons.add,size: 40,color: Colors.white,),

                  )
                ],
              ),
            ),),
        ),
      ],
    );
  }
}
