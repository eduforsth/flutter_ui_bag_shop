import 'package:flutter/material.dart';
import 'package:ui_online_shop/constants.dart';
import 'package:ui_online_shop/models/product.dart';
import 'package:ui_online_shop/screens/custom_textstyle.dart';
import 'package:ui_online_shop/screens/details/detail_header.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  Product product;
  DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedIndex = 0;

int num = 01;
  bool isFavorite = true;

  List<Color> selectedColor = [
    Colors.red.shade200,
    Colors.green.shade200,
    Colors.blue.shade200
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: selectedColor[selectedIndex],
        appBar: AppBar(backgroundColor: selectedColor[selectedIndex], actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: sTextColor,
          )),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: sTextColor,
          )),]),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
      margin: EdgeInsets.only(top: size.height * 0.3),
      padding: EdgeInsets.only(top: size.height * 0.1, left: 10, right: 10),
      height: size.height * 0.6 - 16,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                CustomTextStyle(text: 'Color', color: Colors.grey.shade800),
                Row(
                  children: [
                    sttCircleAvatar(index: 0, color: selectedColor[0]),
                    const SizedBox(
                      width: 3,
                    ),
                    sttCircleAvatar(index: 1, color: selectedColor[1]),
                    const SizedBox(
                      width: 3,
                    ),
                    sttCircleAvatar(index: 2, color: selectedColor[2])
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 60,
            ),
            Column(
              children: [
                CustomTextStyle(text: 'Size', color: Colors.grey.shade800),
                CustomTextStyle(
                  text: widget.product.size!.toString(),
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
        CustomTextStyle(text: widget.product.description!, color: Colors.green),
        Row(
          children: [
            addAndSubBtn(icon: const Icon(Icons.add), sign: '+'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: CustomTextStyle(text: num.toString().length==1? '0$num': num.toString(), color: Colors.green),
            ),
            addAndSubBtn(icon: const Icon(Icons.remove),sign: '-'),

            const Expanded(
                child: SizedBox(
              width: 100,
            )),
            CircleAvatar(
              backgroundColor: Colors.red,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite ? isFavorite = false : isFavorite = true;
                    });
                  },
                  icon: isFavorite
                      ? const Icon(Icons.favorite, 
                        color: Colors.white,)
                      : const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        )),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 43,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green),
                    borderRadius: BorderRadius.circular(7)),
                child: const Icon(Icons.add_shopping_cart_outlined),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 5,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ))),
                  // style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: CustomTextStyle(
                    text: 'BUY NOW',
                    color: Colors.white,
                  )),
            ),
          ],
        )
      ]),
    ),
  
                DetailHeader(product: widget.product),
              ],
            ),
          ],
        ));
  }

  Widget addAndSubBtn({required Icon icon, required String sign}) {
    return InkWell(
      onTap: (){
        setState(() {
          sign =='+'? num++ : num--;
          if(num < 0)num = 0;
        });
      },
      child: Container(
              width: 50,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, ),
                borderRadius: BorderRadius.circular(12)
              ),
              child: icon,
            ),
    );
  }

    Widget sttCircleAvatar({required int index, required Color color}) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: CircleAvatar(
            radius: 13,
            backgroundColor: selectedIndex == index
                ? Colors.green
                : Colors.transparent,
            child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: color,
                ))),
      );

}
