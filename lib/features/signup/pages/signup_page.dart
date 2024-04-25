import 'package:agrohaven/features/signup/bloc/signup_bloc.dart';
import 'package:agrohaven/features/signup/bloc/signup_state.dart';
import 'package:agrohaven/gen/assets.gen.dart';
import 'package:agrohaven/shared/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // creating empty state variables for the input fields
  String name = '';
  String emailAddress = '';
  String password = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    SignupBloc bloc = context.watch<SignupBloc>();
    SignUpState state = bloc.state;

    // using a switch statement
    switch (state.signupStatus) {
      case SignupStatus.initial:
        break;
      case SignupStatus.Processing:
        break;
      case SignupStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          //if signup is successful navigate to  HomeScreen()
          context.go('/home');
          bloc.reset();
        });
        break;
      case SignupStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
        break;
    }
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(24)),
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(60),
                  bottom: ScreenUtil().setHeight(10),
                ),
                child: Assets.images.agrohavenLogo.image(
                  width: ScreenUtil().setWidth(83),
                  height: ScreenUtil().setHeight(102),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create an account',
                    style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(24),
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF013718)),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              CustomTextField(
                  label: 'Name',
                  icon: (Icon(Icons.account_box)),
                  onChanged: (newText) {
                    name = newText;
                  },
                  textInputType: TextInputType.name),
              CustomTextField(
                  label: 'Email',
                  icon: (Icon(Icons.mail)),
                  onChanged: (newText) {
                    emailAddress = newText;
                  },
                  textInputType: TextInputType.emailAddress),
              CustomTextField(
                  label: 'Password',
                  icon: (Icon(Icons.password_rounded)),
                  onChanged: (newText) {
                    password = newText;
                  },
                  isAPassword: true,
                  textInputType: TextInputType.visiblePassword),
              CustomTextField(
                  label: 'Confirm Password',
                  icon: (Icon(Icons.password_rounded)),
                  onChanged: (newText) {
                    password = newText;
                  },
                  isAPassword: true,
                  textInputType: TextInputType.visiblePassword),
              Padding(
                padding: EdgeInsets.all(ScreenUtil().setHeight(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w300,
                          color: Color(0XFF013718)),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/login');
                      },
                      child: Text(
                        'Sign-In',
                        style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context).textTheme.displaySmall,
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w300,
                            color: Color(0XFFFF7810)),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state.signupStatus == SignupStatus.Processing)
                    CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(0)),
                    child: Container(
                      width: ScreenUtil().setWidth(380),
                      height: ScreenUtil().setHeight(50),
                      child: ElevatedButton(
                        // onPressed: () {},
                        onPressed: state.signupStatus == SignupStatus.Processing
                            ? null
                            : () {
                                if (_isUserInputValid()) {
                                  bloc.registerUser(
                                    name: name,
                                    emailAddress: emailAddress,
                                    password: password,
                                    confirmPassword: confirmPassword,
                                    context: context,
                                  );
                                }
                              },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF3CAD6D),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Sign-Up',
                          style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '- OR Continue with -',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF013718),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.google.image(
                    width: 54,
                    height: 54,
                  ),
                  Assets.images.apple.image(
                    width: 54,
                    height: 54,
                  ),
                  Assets.images.facebook.image(
                    width: 54,
                    height: 54,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isUserInputValid() {
    String errorMessage = '';
    String title = '';

    if (name.isEmpty) {
      errorMessage = 'Name cannot be empty';
    } else if (emailAddress.isEmpty) {
      errorMessage = 'Email Address must not be empty ';
    } else if (password.isEmpty) {
      errorMessage = 'Password must not be empty';
    }

    if (errorMessage.isNotEmpty) {
      //to alert the error message to the user, we display it using a dialog box

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(errorMessage),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return false;
    }
    return true;
  }
}
