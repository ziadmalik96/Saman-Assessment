import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_erp/constant/drop_down_button.dart';
import 'package:saman_erp/constant/text_form_fied.dart';
import 'package:saman_erp/views/products_cart_view.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  OrderViewState createState() => OrderViewState();
}

class OrderViewState extends State<OrderView> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController shopPrice = TextEditingController();

  bool price = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'عمیر اقبال',
                  style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jameel'),
                ),
                Text(
                  '00000',
                  style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jameel'),
                ),
                Text(
                  'حسن گلاس',
                  style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jameel'),
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///     نام ////////
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'نام',
                      style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 36,
                          fontFamily: 'Jameel'),
                    ),
                  ),
                  Expanded(
                      flex: 6,
                      child: SamanTextForm(
                        hint: 'نام',
                        name: name,
                      )),
                ],
              ),
            ),

            ///    فون نمبر //////
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'فون نمبر',
                      style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 36,
                          fontFamily: 'Jameel'),
                    ),
                  ),
                  Expanded(
                      flex: 6,
                      child: SamanTextForm(
                        hint: 'فون نمبر',
                        name: phone,
                      )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'مقررہ قیمت',
                    style: TextStyle(
                        color: Theme.of(context).cardColor,
                        fontSize: 36,
                        fontFamily: 'Jameel'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: CupertinoSwitch(
                      value: false,
                      onChanged: (value) {
                        setState(() {
                          price = value;
                        });
                      },
                      trackColor: Theme.of(context).cardColor,
                      thumbColor: Theme.of(context).primaryColorDark,
                      focusColor: Theme.of(context).cardColor,
                      activeColor: Theme.of(context).cardColor,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'مقررہ قیمت',
                        style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 36,
                            fontFamily: 'Jameel'),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * .45,
                          height: MediaQuery.of(context).size.height * .06,
                          decoration: BoxDecoration(
                              color: Theme.of(context).shadowColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)))),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: SamanDropDownButton(),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'گاڑی کی قسم',
                        style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 36,
                            fontFamily: 'Jameel'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: SamanDropDownButton(),
                      ),
                      const SamanDropDownButton()
                    ],
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'سامان',
                  style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jameel'),
                )
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => const ProductCart()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                height: MediaQuery.of(context).size.height * .07,
                decoration: BoxDecoration(
                    color: Theme.of(context).focusColor,
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: Center(
                  child: Text(
                    'سامان داخل کریں',
                    style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontFamily: 'Jameel',
                        fontSize: 28,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    height: MediaQuery.of(context).size.height * .07,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width * .2,
                    height: MediaQuery.of(context).size.height * .07,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Center(
                        child: Icon(
                      Icons.check,
                      color: Theme.of(context).primaryColorDark,
                    )),
                  ),
                ],
              ),
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width * .7,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text(
                  'آرڈر درج کریں',
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontFamily: 'Jameel',
                      fontSize: 28,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
