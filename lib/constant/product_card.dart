import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  const ProductCard({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      width: MediaQuery.of(context).size.width*.8,
      height: MediaQuery.of(context).size.height*.08,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/minusicon.png'),
          ),
          Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*.6,
                  decoration: BoxDecoration(
                    color: Theme.of(context).hoverColor,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Center(
                    child: Text(title,style: TextStyle(
                      color: Theme.of(context).focusColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jameel'
                    ),),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/addicon.png'),
          ),
        ],
      ),
    );
  }
}
