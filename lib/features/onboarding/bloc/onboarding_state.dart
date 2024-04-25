import 'package:equatable/equatable.dart';

class OnboardingState extends Equatable {
  final int tabIndex;

  OnboardingState({
    this.tabIndex = 0,
  });
  @override
  List<Object> get props => [
        tabIndex,
      ];
}
