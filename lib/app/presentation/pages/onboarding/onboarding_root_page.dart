import 'package:auto_route/auto_route.dart';
import 'package:devstudios_test_task/app/presentation/pages/onboarding/cubit/onboarding_root_cubit.dart';
import 'package:devstudios_test_task/app/presentation/pages/onboarding/widgets/onboarding_dob_subpage.dart';
import 'package:devstudios_test_task/app/presentation/pages/onboarding/widgets/onboarding_first_name_subpage.dart';
import 'package:devstudios_test_task/app/presentation/pages/onboarding/widgets/onboarding_stepped_appbar.dart';
import 'package:devstudios_test_task/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OnboardingRootPage extends StatefulWidget implements AutoRouteWrapper {
  const OnboardingRootPage({super.key});

  @override
  State<OnboardingRootPage> createState() => _OnboardingRootPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingRootCubit(),
      child: this,
    );
  }
}

class _OnboardingRootPageState extends State<OnboardingRootPage> {
  late PageController _pageController;

  double _buttonBorderRadius = 6;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final OnboardingRootCubit cubit = BlocProvider.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/onboarding_bg_shimmer.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                BlocBuilder<OnboardingRootCubit, OnboardingRootState>(
                    builder: (context, state) {
                  return OnboardingSteppedAppbar(
                    currentPage: state.data.currentPage + 1,
                    pageCount: 6,
                    size: Size(double.infinity, 48.h),
                    onBackTapped: () {
                      if (context
                              .read<OnboardingRootCubit>()
                              .state
                              .data
                              .currentPage >
                          0) {
                        context.read<OnboardingRootCubit>().goPreviousPage();
                      } else {
                        context.maybePop();
                      }
                    },
                  );
                }),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: BlocListener<OnboardingRootCubit, OnboardingRootState>(
                    listener: (c, s) => _pageController.animateToPage(
                      s.data.currentPage,
                      duration: const Duration(milliseconds: 150),
                      curve: Curves.decelerate,
                    ),
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (i) {

                        setState(() {
                          _buttonBorderRadius = switch (i) {
                            1 => 100,
                            _ => 6,
                          };
                        });
                      },
                      itemCount: 5,
                      pageSnapping: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (c, i) => switch (i) {
                        0 => OnboardingFirstNameSubpage(),
                        1 => OnboardingDateOfBirthSubpage(),
                        _ => SizedBox(),
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20).r,
                child: ElevatedButton(
                  onPressed: cubit.goNextPage,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_buttonBorderRadius).r,
                    ),
                    backgroundColor: Color(0xFF3F4A5E),
                    minimumSize: Size(double.infinity, 56.h),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle().interMedium16.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
