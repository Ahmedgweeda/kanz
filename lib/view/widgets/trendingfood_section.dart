import 'package:flutter/cupertino.dart';

class TrendingFoodSection extends StatelessWidget {
  const TrendingFoodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Trending Food Offer',
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(
          height: 200,
          child: ListView.builder(
              padding: EdgeInsets.only(top: 5),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index)=>Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  width: 150,
                  height: 180,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/Rectangle 21.png'),
                          fit: BoxFit.fill

                      )
                  ),
                ),
              )),
        ),

      ],
    );
  }
}
