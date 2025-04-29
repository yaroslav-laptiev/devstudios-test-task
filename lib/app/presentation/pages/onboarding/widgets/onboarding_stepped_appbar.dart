import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingSteppedAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final int currentPage;
  final int pageCount;
  final Size size;
  final VoidCallback onBackTapped;

  const OnboardingSteppedAppbar({
    super.key,
    required this.currentPage,
    required this.pageCount,
    required this.size,
    required this.onBackTapped,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(13, 0, 20, 0).r,
        child: Row(
          children: [
            GestureDetector(
              onTap: onBackTapped,
              behavior: HitTestBehavior.opaque,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18.r,
              ),
            ),
            SizedBox(width: 43.w),
            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    height: 6.h,
                    width: 230.w,
                    color: Color(0xFFEFEBE8),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    height: 6.h,
                    color: Color(0xFF75563D),
                    width: 230.w * (currentPage/pageCount),
                  )
                ],
              ),
            ),
            Container(
              width: 48.w,
              height: 24.h,
              decoration: BoxDecoration(
                color: Color(0xFFEFEBE8),
                borderRadius: BorderRadius.circular(24.r)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4).r,
                child: Text(
                  "${(currentPage/pageCount * 100).round()}%",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      color: Color(0xFF2B303B),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      height: 18.sp / 12.sp,
                      letterSpacing: -.2),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => size;
}
