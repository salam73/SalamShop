import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salamshop/logic/controllers/product_controller.dart';
import 'package:salamshop/utils/theme.dart';

class CardItems extends StatelessWidget {
   CardItems({Key? key}) : super(key: key);
  final controller =Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return
      Obx(() {
        if(controller.isLoading.value) {
          return const CircularProgressIndicator(
            color: mainColor,
          );
        } else {
        return  Expanded(
            child: GridView.builder(
              itemCount: 15,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.8,
                mainAxisSpacing: 9.0,
                crossAxisSpacing: 6.0,
                maxCrossAxisExtent: 210,
              ),
              itemBuilder: (context,index){
                return builderCardItems(image: controller.productList[index].image);
              },
            ),
          );
        }
      }


            )
      /*Expanded(
      child: GridView.builder(
        itemCount: 15,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 0.8,
          mainAxisSpacing: 9.0,
          crossAxisSpacing: 6.0,
          maxCrossAxisExtent: 200,
        ),
        itemBuilder: (context,index){
          return builderCardItems();
        },
      ),
    )*/;
  }

  Widget builderCardItems({required String image}) {

    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                image,
                fit: BoxFit.fitHeight,
              ),
              //fit: BoxFit.fitHeight,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$ 12",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
