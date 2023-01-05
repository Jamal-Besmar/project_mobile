
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';
import '../../main/main_screen.dart';

class SignUpForm extends StatefulWidget{
  @override
  _SignUpFormState createState() => _SignUpFormState();


}
class _SignUpFormState extends State<SignUpForm>{
  final _formKey =GlobalKey<FormState>();
  late String mobile;
  late String password;
  late String confirm_password;
  List<DropdownMenuItem<String>> specialization =[
    DropdownMenuItem(child: Text("LAW"),value: "LAW"),
    DropdownMenuItem(child: Text("Informatics"),value: "Informatics"),

   ];
  String selectedItem="LAW";



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
            buildConfirmPasswordFormFiled(),
            SizedBox(height: getProportionScreenHeight(30)),
           DropdownButtonFormField(

                items: specialization,
                value:selectedItem ,
                onChanged: (String ? theSpec){
                  setState(() {
                    selectedItem=theSpec!;
                  });

                },
             decoration:InputDecoration(
               labelText: "Specialization",
               hintText: "Enter Your Phone Number",
               floatingLabelBehavior: FloatingLabelBehavior.always,
               suffixIcon: Icon(Icons.account_balance),
             ),
            ),
            SizedBox(height: getProportionScreenHeight(20)),
            DefaultButton(text: "Create Account",
                press:() {
                  Navigator.pushNamed(context, MainScreen.routename);
                }
            )


          ],
        ));

  }



}

TextFormField buildMobileFormFiled(){
  return TextFormField(
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      labelText: "Phone",
      hintText: "Enter Your Phone Number",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: Icon(Icons.image_outlined ,color: Colors.grey,),
    ),
  );
}

TextFormField buildPasswordFormFiled(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: "Password",
      hintText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:Icon(Icons.password,color: Colors.grey,)


    ),
  );
}

TextFormField buildConfirmPasswordFormFiled(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: "Password",
      hintText: "Confirm Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:Icon(Icons.password,color: Colors.grey,)

    ),
  );
}


