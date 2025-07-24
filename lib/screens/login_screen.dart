import 'package:flutter/material.dart';
import 'package:training2/widgets/custom_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nameFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();
  final passwordFormKey1 = GlobalKey<FormState>();
  final passwordFormKey2 = GlobalKey<FormState>();
  final passwordFormKey3 = GlobalKey<FormState>();
  final passwordFormKey4 = GlobalKey<FormState>();
  final passwordFormKey5 = GlobalKey<FormState>();
  final passwordFormKey6 = GlobalKey<FormState>();
  final passwordFormKey7 = GlobalKey<FormState>();
  final passwordFormKey8 = GlobalKey<FormState>();
  final passwordFormKey9 = GlobalKey<FormState>();
  final passwordFormKey10 = GlobalKey<FormState>();
  final nameCotroller = TextEditingController();
  final passwordCotroller = TextEditingController();
bool isPasswordShowing=true;
   void _scrollToKey(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0.2, // optional: how far from top you want the field
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFormField(
                  formkey: nameFormKey,
                  labelText: 'Name',
                  controller: nameCotroller,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Name is required";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    print("Name on change:$value");
                  },
                  onFieldSubmitted: (p0) {},
                ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",

                   isPasswordShowing: isPasswordShowing,
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },
                   showPassord: (){
                    print("isPasswordShowing........");
                    setState(() {
                      isPasswordShowing=!isPasswordShowing;
                    });
                                        print("isPasswordShowing........ $isPasswordShowing");

                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey1,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey2,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey3,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey4,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey5,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey6,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey7,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey8,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey9,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                const SizedBox(height: 16),
                CustomFormField(
                  formkey: passwordFormKey10,
                  labelText: "Password",
                   controller: passwordCotroller,
                   hintText: "Enter your passord.",
                   isPassword: true,
                   validator: (value){
                    if(value==null || value.trim().isEmpty){
                      return "Password is required.";
                    }
                    else{
                      return null;
                    }
                   },

                   ),
                   const SizedBox(height: 20,),
                   ElevatedButton(
                    onPressed: (){
            if (nameFormKey.currentState!.validate() && passwordFormKey.currentState!.validate()) {
              print("Name:${nameCotroller.text}");
              print("Password:${passwordCotroller.text}");
            }
            else{
                      _scrollToKey(nameFormKey);

            }
                   }, child: Text("Submit"),
                   )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
