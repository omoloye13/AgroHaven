import 'package:agrohaven/features/onboarding/bloc/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Cubit<OnboardingState> {
  OnboardingBloc() : super(OnboardingState());

  //emitting or dispatching an action
  void updateTabIndex(int newIndex) async {
    emit(OnboardingState(tabIndex: newIndex));
  }
}
