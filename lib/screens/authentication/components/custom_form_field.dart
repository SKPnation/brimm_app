import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomFormField extends StatelessWidget {
  final String hint;
  final bool showCursor;
  final Function onTap;
  final bool readOnly, obscureText;
  final Function() togglePassword;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final List<TextInputFormatter> formatters;

  const CustomFormField(
      {Key key,
        this.hint,
        this.textEditingController,
        this.showCursor,
        this.formatters,
        this.readOnly = false,
        this.onTap,
        this.textInputType,
        this.obscureText,
        this.togglePassword})
      : super(key: key);

  Widget icon(){
    if(hint == 'Password'){
      return Icon(obscureText==false ? Icons.visibility : Icons.visibility_off, color: Colors.grey,);
    }else{
      return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white, fontSize: 18),
      readOnly: readOnly,
      controller: textEditingController,
      showCursor: showCursor,
      onTap: onTap,
      obscureText: obscureText ?? false,
      inputFormatters: formatters ?? [],
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
        TextStyle(fontSize: displayWidth(context) / 25, color: Colors.grey),
        fillColor: Colors.transparent,
        border: InputBorder.none,
        filled: true,
        suffix: InkWell(
            onTap: togglePassword,
            child: icon()
        ),
        contentPadding: new EdgeInsets.symmetric(
            vertical: 16.0, horizontal: displayWidth(context) * 0.04),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
