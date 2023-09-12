import 'package:flutter/material.dart';

class SamanDropDownButton extends StatefulWidget {
  const SamanDropDownButton({Key? key}) : super(key: key);

  @override
  SamanDropDownButtonState createState() => SamanDropDownButtonState();
}

class SamanDropDownButtonState extends State<SamanDropDownButton> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).shadowColor,
        borderRadius: const BorderRadius.all(Radius.circular(8))
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down,color: Theme.of(context).primaryColorDark,size: 40,),
            iconSize: 24,
            elevation: 16,
            focusColor: Theme.of(context).shadowColor,
            dropdownColor: Theme.of(context).shadowColor,
            underline: Container(),
            style: TextStyle(color: Theme.of(context).focusColor,),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['','One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SizedBox(
                    width:MediaQuery.of(context).size.width*.2,child: Text(value)),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
