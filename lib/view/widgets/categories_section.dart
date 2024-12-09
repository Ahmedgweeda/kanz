import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Categories',
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
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index)=>Container(
                padding: EdgeInsets.all(3),
                width: 100,
                height: 100,

                child:Stack(

                  children: [

                    Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('images/cake.png'),
                              fit: BoxFit.fill
                          )
                      ),

                    ),
                    Positioned(
                      bottom:0,
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        color: Colors.white.withOpacity(0.4),
                        height: 30,
                        child: Text('Cake',style: TextStyle(fontSize: 18,color: Colors.white),),
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
