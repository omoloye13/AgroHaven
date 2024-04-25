import 'package:agrohaven/features/signup/bloc/signup_state.dart';
import 'package:agrohaven/features/signup/repository/signup_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class SignupBloc extends Cubit<SignUpState> {
//we need to pass an initial state whenever we create our block

  SignupBloc() : super(SignUpState.empty);

  SignupRepository signupRepository = SignupRepository();

  //function to reset the state to the initial state
  void reset() {
    emit(SignUpState.empty);
  }

// create a function that takes the four paameters(input field) and binds it to the signup state
  // void registerUser(
  //     {required String name,
  //     required String emailAddress,
  //     required String password,
  //     required String confirmPassword}) async {
  //   //to show processing/loading state
  //   emit(state.copyWith(signupStatus: SignupStatus.Processing));

  //   try {
  //     await signupRepository.registerUser(
  //       email: emailAddress,
  //       password: password,
  //       // confirmPassword: confirmPassword,
  //     );

  //     emit(state.copyWith(signupStatus: SignupStatus.Successful));
  //   } on FirebaseAuthException catch (e) {
  //     print("Got to firebase error section");
  //     emit(state.copyWith(signupStatus: SignupStatus.Error));
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print("Got to error section");
  //     emit(state.copyWith(signupStatus: SignupStatus.Error));
  //     print(e);
  //   }
  // }

  // new logic

  void registerUser({
    required String name,
    required String emailAddress,
    required String password,
    required String confirmPassword,
    required BuildContext context, // Pass the BuildContext
  }) async {
    // To show processing/loading state
    emit(state.copyWith(signupStatus: SignupStatus.Processing));

    try {
      // successful registration of user
      await signupRepository.registerUser(
        email: emailAddress,
        password: password,
        // confirmPassword: confirmPassword,
      );
      emit(state.copyWith(signupStatus: SignupStatus.Successful));
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      emit(state.copyWith(signupStatus: SignupStatus.Error));

      if (e.code == 'weak-password') {
        _showErrorDialog(
            context, 'Weak Password', 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        _showErrorDialog(context, 'Email Already in Use',
            'The account already exists for that email.');
      }
    } catch (e) {
      // Handle other exceptions
      emit(state.copyWith(signupStatus: SignupStatus.Error));

      _showErrorDialog(
          context, 'Error', 'An error occurred during registration.');
      print(e);
    }
  }

  void _showErrorDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
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
  }
}
