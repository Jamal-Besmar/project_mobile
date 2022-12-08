import 'package:flutter/material.dart';
import 'package:untitled1/components/default_button.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/screens/main/main_screen.dart';
import 'package:untitled1/size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}
class _SignFormState extends State<SignForm>
{
  final _formKey =GlobalKey<FormState>();
  late String mobile;
  late String password;
  bool remember = false;
  //final List<String> errors =[];



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildMobileFormFiled(),
          SizedBox(height: getProportionScreenHeight(30)),
          buildPasswordFormFiled(),
          SizedBox(height: getProportionScreenHeight(30)),
          Row(
            children: [
              Checkbox(value: remember,
                  activeColor: KPrimaryColor,
                  onChanged: null,
              ),
              Text("Remeber me "),
              Spacer(),
            GestureDetector(
              child: Text("Forget Password",
                  style: TextStyle(decoration: TextDecoration.underline)
              ),
            )
            ],
          ),
          SizedBox(height: getProportionScreenHeight(20)),
          DefaultButton(text: "Log in",
            press:() {
              Navigator.pushNamed(context, MainScreen.routename);
            }
          )
        ],
        //,
      ),
    );
  }
}
TextFormField buildMobileFormFiled(){
  return TextFormField(
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      labelText: "Phone",
      hintText: "Enter Your Phone Number",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: Icon(Icons.image_outlined),
    ),
  );
}
TextFormField buildPasswordFormFiled(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",


    ),
  );
}