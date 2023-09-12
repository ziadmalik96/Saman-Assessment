import 'package:flutter/material.dart';

class SamanTextForm extends StatelessWidget {
  final TextEditingController name;
  final String hint;
  const SamanTextForm({Key? key,required this.name,required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: name,
      cursorColor: Theme.of(context).focusColor,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
          color: Theme.of(context).primaryColorDark,
          fontSize: 16,
          fontWeight: FontWeight.w600),
      decoration: InputDecoration(
          focusColor: Theme.of(context).cardColor,
          hoverColor: Theme.of(context).cardColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).cardColor,
                width: 0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).cardColor,
                width: 0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: hint,
          hintStyle: TextStyle(
              color: Theme.of(context).hintColor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
          filled: true,
          fillColor: Theme.of(context).cardColor,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).cardColor,
                width: 0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).cardColor,
                width: 0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return "Email is required";
        } else {
          return null;
        }
      },
    );
  }
}
