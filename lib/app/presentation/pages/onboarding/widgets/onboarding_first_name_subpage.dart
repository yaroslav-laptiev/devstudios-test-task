import 'package:devstudios_test_task/app/presentation/pages/onboarding/cubit/onboarding_root_cubit.dart';
import 'package:devstudios_test_task/core/theme/app_text_style.dart';
import 'package:devstudios_test_task/core/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingFirstNameSubpage extends StatelessWidget {
  const OnboardingFirstNameSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingRootCubit cubit = BlocProvider.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: Text(
              'What’s your name?',
              style: TextStyle().tiemposHeadline32Regular.copyWith(
                    fontSize: 20.sp,
                    height: 28.sp / 20.sp,
                    color: Color(0xFF414042),
                  ),
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: AppTextField(
              onChanged: cubit.setName,
              hintText: 'Your name',
              style: TextStyle().interRegular14.copyWith(
                    fontSize: 14.sp,
                    height: 24.sp / 14.sp,
                  ),
              prefixIcon: SvgPicture.asset(
                'assets/svg/user_tf_ic.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
