import 'package:flutter/material.dart';

import '../constant/product_card.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({Key? key}) : super(key: key);

  @override
  _ProductCartState createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  List<String> productList = [
    'منی ریفریجریٹر',
    'ریفریجریٹر',
    'فریزر',
    'واشنگ مشین',
    'واشنگ مشین ڈرائر کے ساتھ',
    'اے سی',
    'واٹر ڈسپنسر',
    'ایل سی ڈی ٹی وی',
    'پنکھا',
    'مائیکرو ویو',
    'چولہا'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).focusColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).focusColor,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'عمیر اقبال',
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jameel'),
                ),
                Text(
                  '00000',
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jameel'),
                ),
                Text(
                  'حسن گلاس',
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jameel'),
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).primaryColorDark,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                _image('assets/images/sofaicon.png'),
                _image('assets/images/tableicon.png'),
                _image('assets/images/cowicon.png'),
                _image('assets/images/wallicon.png'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    title: productList[index],
                  );
                }),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border.all(
                  color: Theme.of(context).cardColor,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width * .7,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text(
                  'واپس',
                  style: TextStyle(
                      color: Theme.of(context).focusColor,
                      fontFamily: 'Jameel',
                      fontSize: 28,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image(String image) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Image.asset(image),
      ),
    );
  }
}
