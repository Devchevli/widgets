// ignore_for_file: camel_case_types

import 'package:code_struct/practical/widgets/navigation_example/view/App_Constant.dart';
import 'package:code_struct/view/utils/config/app_images.dart';
import 'package:flutter/material.dart';

import 'Electronic_model.dart';
import 'electric_store_newPage.dart';

class Add_cart extends StatefulWidget {
  const Add_cart({super.key});

  @override
  State<Add_cart> createState() => _Add_cartState();
}

class _Add_cartState extends State<Add_cart> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.square(200),
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Color(0xff283618),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, top: 45),
                    child: Text(
                      "Electronic Store",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Image(
                            image: AssetImage(ElctronicStore.cart),
                            width: 40,
                            height: 50,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => const New_page()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 1, left: 21),
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90))),
                            child: Text( "${cartList.length}",
                              style: const TextStyle(color: Colors.black),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: Container(
            height: size.height,
            width: size.width,
            color: const Color(0xfffefae0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: product.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[2],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffbc6c25),
                    ),
                    child: ListTile(
                      leading: Image.asset(product[index].image),
                      title: Text(
                        product[index].title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          "${product[index].price}",
                          style: const TextStyle(color: Color(0xfffefae0)),
                        ),
                      ),
                      trailing: InkWell(
                          onTap: () {
                            cartList.add(ProductModel(
                                image: product[index].image,
                                title: product[index].title,
                                price: product[index].price));
                            print(cartList);
                            setState(() {});
                          },
                          child:  Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.orange[200]),
                            child: const Icon(Icons.add)),
                          ),

                    ),
                  );
                })),
      ),
    );
  }
}
