import 'package:flutter/cupertino.dart';

class CuisinesSection extends StatelessWidget {
  const CuisinesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const  Text('View All',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            const Spacer(),
            const Text('Cuisines',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: GridView.builder(
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10, // Horizontal spacing between items
                  childAspectRatio: 0.8

              ) ,
              physics: FixedExtentScrollPhysics(),


              itemCount: 8,
              itemBuilder: (context,index)=>Column(
                children: [
                  Container(
                    width: 100,
                    height: 80,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/burger.png'),
                          fit: BoxFit.fill

                      ),
                    ),
                  ),
                  SizedBox(height: 8,),

                  Text('Burger',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),

                  ),



                ],
              )),
        ),


      ],
    );
  }
}
