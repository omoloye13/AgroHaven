import 'package:agrohaven/features/login/bloc/login_bloc.dart';
import 'package:agrohaven/features/login/bloc/login_state.dart';
import 'package:agrohaven/gen/assets.gen.dart';
import 'package:agrohaven/shared/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // creating empty state variables for the input fields
  String emailAddress = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<LoginBloc>();
    var state = bloc.state;

    switch (state.loginStatus) {
      case LoginStatus.Initial:
        break;
      case LoginStatus.Processing:
        break;
      case LoginStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          // Navigator.pushReplacement(
          //   context,
          //   HomeScreen.route(),
          // );
          context.go('/home');
          bloc.reset();
        });
        break;
      case LoginStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Password or Email is Incorrect")));
          bloc.resetStatusToInitial();
        });
        break;
      case LoginStatus.InvalidEmailAddress:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("You entered and invalid email address")));
          bloc.resetStatusToInitial();
        });

        break;
      case LoginStatus.InvalidPassword:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("You entered an invalid password")));
          bloc.resetStatusToInitial();
        });
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
                    'Welcome Back!',
                    style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(24),
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF013718)),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(30)),
              CustomTextField(
                  label: 'Email',
                  icon: (Icon(Icons.mail)),
                  onChanged: (newText) {
                    // name = newText;
                    bloc.setEmailAddress(newText);
                  },
                  textInputType: TextInputType.name),
              CustomTextField(
                  label: 'Password',
                  icon: (Icon(Icons.password_rounded)),
                  onChanged: (newText) {
                    // password = newText;
                    bloc.setPassword(newText);
                  },
                  isAPassword: true,
                  textInputType: TextInputType.visiblePassword),
              Padding(
                padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w300,
                          color: Color(0XFF013718)),
                    ),
                    TextButton(
                        onPressed: () {
                          context.go('/signup');
                        },
                        child: Text(
                          'Sign-Up',
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displaySmall,
                              fontSize: ScreenUtil().setSp(16),
                              fontWeight: FontWeight.w300,
                              color: Color(0XFFFF7810)),
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state.loginStatus == LoginStatus.Processing)
                    CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(0)),
                    child: Container(
                      width: ScreenUtil().setWidth(370),
                      height: ScreenUtil().setHeight(50),
                      child: ElevatedButton(
                        onPressed: () {
                          bloc.onSubmit();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFF3CAD6D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Sign-In',
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
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
