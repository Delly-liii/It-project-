import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function()? showPassord;
  final GlobalKey formkey;
  final String labelText;
  final String? hintText;
  final TextEditingController controller;
  final bool isPassword;
  final bool isPasswordShowing;
  final TextInputType keyboardType;

  const CustomFormField({
    super.key,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    required this.labelText,
    this.hintText,
    required this.controller,
    required this.formkey,
    this.isPassword = false,
    this.isPasswordShowing = false,
    this.showPassord=_defaultShowPassword,
    this.keyboardType = TextInputType.name,
  });
    static void _defaultShowPassword() {}

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPasswordShowing,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          suffixIcon:
              widget.isPassword
                  ? IconButton(
                    onPressed:
                      widget.showPassord
                    ,
                    icon: Icon(
                      widget.isPassword ? Icons.visibility_off : Icons.visibility,
                    ),
                  )
                  : null,
        ),
      ),
    );
  }
}
