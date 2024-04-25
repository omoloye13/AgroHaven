import 'package:equatable/equatable.dart';

//enum is used to keep track of the state of the status of user registration
enum SignupStatus { initial, Processing, Successful, Error }

class SignUpState extends Equatable {
  SignUpState({
    required this.name,
    required this.emailAddress,
    required this.password,
    required this.confirmPassword,
    this.signupStatus = SignupStatus.initial,
  });
// creting an initial variable for a signup state that is empty
  static SignUpState empty = SignUpState(
    name: '',
    emailAddress: '',
    password: '',
    confirmPassword: '',
    signupStatus: SignupStatus.initial,
  );

// creating final state variables for the input fields
  final String name;
  final String emailAddress;
  final String password;
  final String confirmPassword;
  final SignupStatus signupStatus;

  @override
  List<Object?> get props =>
      [name, emailAddress, password, confirmPassword, signupStatus];

//all the input fields should be represented in a copy with so hen the state changes they make a new copy of the state not that the state ill be newly created

  SignUpState copyWith({
    String? name,
    String? emailAddress,
    String? password,
    String? confirmPassword,
    SignupStatus? signupStatus,
  }) {
    return SignUpState(
      name: name ?? this.name,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      signupStatus: signupStatus ?? this.signupStatus,
    );
  }
}
