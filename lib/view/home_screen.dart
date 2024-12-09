import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanze/view/widgets/bestreviewed_section.dart';
import 'package:kanze/view/widgets/categories_section.dart';
import 'package:kanze/view/widgets/cuisines_section.dart';
import 'package:kanze/view/widgets/customTextformfield.dart';
import 'package:kanze/view/widgets/custombutton.dart';
import 'package:kanze/view/widgets/popularfoods.dart';
import 'package:kanze/view/widgets/popularresurants_section.dart';
import 'package:kanze/view/widgets/trendingfood_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchTextEditingController = TextEditingController();  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomTextFormField(
                  controller: _searchTextEditingController,
                  labelText: 'Search your desired foods or restaurents',
                  prefixIcon: Icon(Icons.search),
                fontSize: 16,
              ),
              const SizedBox(height: 20,),
              //green Rectangle
               SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder:(context,index)=>Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 150,
                      width: 370,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/Rectangle 10.png')),

                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  padding: EdgeInsets.all(5),
                ),
              ),

              const SizedBox(height: 20,),

              const CategoriesSection(),

              const SizedBox(height: 10,),

              const  TrendingFoodSection(),

              const SizedBox(height: 10,),

              const BestReviewedSection(),

              const SizedBox(height: 10,),

              const CuisinesSection(),

              const PopularRestaurantsSection(),
              const SizedBox(height: 30,),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 80,
                decoration:BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 4.0,
                      offset: Offset(6.0, 6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 16.0,
                      spreadRadius: 3.0,
                      offset: Offset(-6.0, -6.0),
                    ),
                  ],
                  color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(10),


                ),

                child:
                Row(
                  children: [
                    Image.asset('images/findnearby.png',width: 40,height: 40,),
                    SizedBox(width: 8,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find Nearby',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Restaurant Near You',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 130,
                      child: Custombutton(
                          text: 'See Location',
                          fontSize: 16,
                          color: Color(0xff2B3D16),
                          onTap: (){}),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 30,),

              const PopularFoodsSection(),

              const SizedBox(height: 40,),








              










            ],
          ),
        ),
      ),
    );
  }
}
