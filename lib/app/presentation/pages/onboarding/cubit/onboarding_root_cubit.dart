import 'package:bloc/bloc.dart';
import 'package:devstudios_test_task/app/domain/entity/onboarding_data/onboarding_data.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_root_state.dart';

part 'onboarding_root_cubit.freezed.dart';

class OnboardingRootCubit extends Cubit<OnboardingRootState> {
  OnboardingRootCubit()
      : super(
          OnboardingRootState.initial(
            OnboardingRootStateData(
              onboardingData: OnboardingDataEntity(),
              currentPage: 0,
            ),
          ),
        );

  void setName(String value) {
    emit(
      state.copyWith(
        data: state.data.copyWith(
          onboardingData: state.data.onboardingData.copyWith(name: value),
        ),
      ),
    );
  }

  void setBirthDate(DateTime value) {
    emit(
      state.copyWith(
        data: state.data.copyWith(
          onboardingData: state.data.onboardingData.copyWith(
            birthdate: value,
            zodiacSign: ZodiacSign.fromDate(value),
          ),
        ),
      ),
    );
  }

  void goNextPage() {
    emit(
      state.copyWith(
        data: state.data.copyWith(currentPage: state.data.currentPage + 1),
      ),
    );
  }

  void goPreviousPage() {
    emit(
      state.copyWith(
        data: state.data.copyWith(currentPage: state.data.currentPage - 1),
      ),
    );
  }
}
