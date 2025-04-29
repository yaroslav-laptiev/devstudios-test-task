import 'package:devstudios_test_task/app/domain/entity/onboarding_data/onboarding_data.entity.dart';

class OnboardingDataModel {
  final String name;
  final String zodiacSign;
  final DateTime birthdate;

  OnboardingDataModel(
      {required this.name, required this.zodiacSign, required this.birthdate});

  Map<String, dynamic> toJson() => {
        "name": name,
        "zodiacSign": zodiacSign,
        "birthdate": birthdate,
      };

  factory OnboardingDataModel.fromEntity(OnboardingDataEntity entity) =>
      OnboardingDataModel(
        name: entity.name ?? '',
        zodiacSign: entity.zodiacSign?.name ?? '',
        birthdate: entity.birthdate ?? DateTime.now(),
      );
}
