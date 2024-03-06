part of 'bottom_nav_view.dart';

class BottomNavActiveIcon extends ViewModelWidget<BottomNavViewModel> {
  final String icon;
  final String text;
  const BottomNavActiveIcon({
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context, BottomNavViewModel viewModel) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth,
        height: constraints.maxWidth * 0.60,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            const Spacer(),
            Icon(
              Icons.abc,
              size: 30.h,
            ),
            // SvgPicture.asset(
            //   icon,
            //   height: 30.h,
            // ),
            Text(
              text,
              style: constraints.maxWidth >= 600
                  ? TextStyle(
                      fontSize: 12.sp,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Gilroy',
                    )
                  : TextStyle(
                      fontSize: 15.sp,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Gilroy',
                    ),
            ),
          ],
        ),
      );
    });
  }
}

class BottomNavInActiveIcon extends ViewModelWidget<BottomNavViewModel> {
  final String icon;
  final String text;
  const BottomNavInActiveIcon({
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context, BottomNavViewModel viewModel) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth,
        height: constraints.maxWidth * 0.60,
        // MediaQuery.of(context).size.height * 0.065,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            const Spacer(),
            // SvgPicture.asset(
            //   icon,
            //   height: 30.h,
            //   colorFilter:
            //       ColorFilter.mode(context.colorScheme.text, BlendMode.srcIn),
            // ),
            Icon(
              Icons.abc_outlined,
              size: 30.h,
            ),
            Text(
              text,
              style: constraints.maxWidth >= 600
                  ? TextStyle(
                      fontSize: 12.sp,
                      // color: context.colorScheme.text,
                      fontWeight: FontWeight.normal,
                      // fontFamily: 'Gilroy',
                    )
                  : TextStyle(
                      fontSize: 15.sp,
                      // color: context.colorScheme.text,
                      fontWeight: FontWeight.normal,
                      // fontFamily: 'Gilroy',
                    ),
            ),
          ],
        ),
      );
    });
  }
}
