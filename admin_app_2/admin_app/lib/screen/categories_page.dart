import 'package:admin_app/provider/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  void initState() {
    // TODO: implement initState

    Provider.of<CategoryProvider>(context, listen: false).getCategory(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var categoryData = Provider.of<CategoryProvider>(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: categoryData.categoryList.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://homechef.antapp.space/category/${categoryData.categoryList[index].image}"))),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://homechef.antapp.space/category/${categoryData.categoryList[index].icon}"),
                    ),
                    Text("${categoryData.categoryList[index].name}")
                  ],
                ),
              );
            }),
      ),
    );
  }
}
