import 'package:auto_route/auto_route.dart';
import 'package:devstudios_test_task/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.25, 0.65, 1],
                  colors: [
                    Color(0xFF3F4A5E),
                    Color(0x003F4A5E),
                    Color(0x00FAF4F0),
                    Color(0xFFFAF4F0),
                  ],
                ),
              ),
              child: Image.asset(
                'assets/png/onboarding_bg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            right: 20.w,
            bottom: 0,
            top: 0,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 181.h),
                  SvgPicture.asset(
                    'assets/svg/logo.svg',
                    height: 104.r,
                    width: 104.r,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'rising woman'.toUpperCase(),
                    style: GoogleFonts.rufina(
                        color: Color(0xFF0E121B),
                        fontSize: 24.sp,
                        letterSpacing: -0.2),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'EMBRACE YOUR SHADOWS \nEMBODY LIGHT',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        height: 20.sp / 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF414042).withAlpha(200),
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 40.h),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ).r,
                      child: Column(
                        children: [
                          SizedBox(height: 26.h),
                          SmoothPageIndicator(
                            controller: _pageController,
                            count: 3,
                            effect: ExpandingDotsEffect(
                              activeDotColor: Color(0xFF75563D),
                              dotColor: Color(0xFF75563D).withAlpha(80),
                              dotHeight: 8.r,
                              dotWidth: 8.r,
                              expansionFactor: 2,
                              spacing: 4.r,
                            ),
                          ),
                          SizedBox(height: 18.h),
                          SizedBox(
                            height: 120.h,
                            child: PageView(
                              controller: _pageController,
                              pageSnapping: true,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Discover yourself Through the Stars',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'TiemposHeadline',
                                        fontSize: 32.sp,
                                        height: 1.0,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'Explore self-awareness through astrology. Navigate life with clarity.',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        fontSize: 16.sp,
                                        height: 24.sp / 16.sp,
                                        letterSpacing: -0.1,
                                        color: Color(0xFF717784),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(),
                                Container(),
                              ],
                            ),
                          ),
                          SizedBox(height: 32.h),
                          ElevatedButton(
                            onPressed: _navigateToOnboarding,
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Color(0xFF3F4A5E),
                              minimumSize: Size(double.infinity, 56.h),
                            ),
                            child: Text(
                              'Get Started',
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  height: 24.sp / 16.sp,
                                  fontSize: 16.sp,
                                  letterSpacing: -0.2),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          GestureDetector(
                            onTap: _navigateToSignIn,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Already have an account?',
                                style: GoogleFonts.inter(
                                    color: Color(0xFF525866),
                                    fontWeight: FontWeight.w400,
                                    height: 24.sp / 16.sp,
                                    fontSize: 16.sp,
                                    letterSpacing: -0.2),
                                children: [
                                  WidgetSpan(
                                    child: SizedBox(width: 8.w),
                                  ),
                                  WidgetSpan(
                                    child: Text(
                                      'Sign in',
                                      style: TextStyle(
                                          fontFamily: 'SFProDisplay',
                                          color: Color(0xFF75563D),
                                          fontWeight: FontWeight.w600,
                                          height: 24.sp / 16.sp,
                                          fontSize: 16.sp,
                                          letterSpacing: -0.2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 36.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToSignIn() {
    // nav logic
  }

  void _navigateToOnboarding() {
    context.pushRoute(OnboardingRootRoute());
  }

}
