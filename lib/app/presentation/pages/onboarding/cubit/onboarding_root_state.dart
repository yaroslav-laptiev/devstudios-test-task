part of 'onboarding_root_cubit.dart';

@freezed
abstract class OnboardingRootState with _$OnboardingRootState {

  const factory OnboardingRootState.initial(OnboardingRootStateData data) = _OnboardingRootStateInitial;
  const factory OnboardingRootState.failure(OnboardingRootStateData data) = _OnboardingRootStateFailure;
  const factory OnboardingRootState.success(OnboardingRootStateData data) = _OnboardingRootStateSuccess;

}

@freezed
abstract class OnboardingRootStateData with _$OnboardingRootStateData {

  const factory OnboardingRootStateData({
    required int currentPage,
    required OnboardingDataEntity onboardingData,
    @Default(false) bool isLoading,
}) = _OnboardingRootStateData;

}