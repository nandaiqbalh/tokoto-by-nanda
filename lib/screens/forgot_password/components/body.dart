// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/components/default_button.dart';
import 'package:tokoto_by_nanda/components/form_error.dart';
import 'package:tokoto_by_nanda/components/no_account_text.dart';
import 'package:tokoto_by_nanda/constants.dart';
import 'package:tokoto_by_nanda/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account!",
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  List<String> errors = [];

  late String email;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(
                Icons.mail_outline_rounded,
                color: kTextColor,
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(
            errors: errors,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(56),
            child: DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  // _formKey.currentState!.save();
                }
              },
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          NoAccountText()
        ],
      ),
    );
  }
}
