import 'package:devstudios_test_task/app/domain/entity/onboarding_data/onboarding_data.entity.dart';
import 'package:devstudios_test_task/app/presentation/pages/onboarding/cubit/onboarding_root_cubit.dart';
import 'package:devstudios_test_task/app/presentation/pages/onboarding/widgets/zodiac_sign_selector.dart';
import 'package:devstudios_test_task/core/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingDateOfBirthSubpage extends StatelessWidget {
  const OnboardingDateOfBirthSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<OnboardingRootCubit>();
    return Column(
      children: [
        Text(
          'Date of birth',
          style: TextStyle().tiemposHeadline32Regular.copyWith(
                fontSize: 28.sp,
                height: 1,
                color: Color(0xFF414042),
              ),
        ),
        SizedBox(height: 8.h),
        Text(
          'Date is important for determining your \nSun sign, numerology, and compatibility.',
          textAlign: TextAlign.center,
          style: TextStyle().interRegular14.copyWith(
                fontSize: 16.sp,
                height: 24.sp / 16.sp,
                letterSpacing: -0.2,
                color: Color(0xFF414042).withAlpha(200),
              ),
        ),
        SizedBox(height: 16.h),
        ZodiacWheel(value: cubit.state.data.onboardingData.zodiacSign ?? ZodiacSign.aries),
        SizedBox(height: 16.h),
        SizedBox(
          height: 168.h,
          child: CupertinoDatePicker(
            onDateTimeChanged: cubit.setBirthDate,
            mode: CupertinoDatePickerMode.date,
          ),
        ),
      ],
    );
  }
}
