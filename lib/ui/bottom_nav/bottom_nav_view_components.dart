part of 'bottom_nav_view.dart';

class BottomNavActiveIcon extends ViewModelWidget<BottomNavViewModel> {
  final IconData icon;
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
        decoration: BoxDecoration(
          color: context.colorScheme.primaryColor.withOpacity(0.12),
        ),
        child: Column(
          children: [
            const Spacer(),
            Icon(
              icon,
              size: 30.h,
              color: context.colorScheme.primaryColor,
            ),
            Text(
              text,
              style: constraints.maxWidth >= 600
                  ? TextStyle(
                      fontSize: 12.sp,
                      color: context.colorScheme.text,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Gilroy',
                    )
                  : TextStyle(
                      fontSize: 15.sp,
                      color: context.colorScheme.text,
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
  final IconData icon;
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
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            const Spacer(),
            Icon(
              icon,
              size: 30.h,
              color: context.colorScheme.lightGrey.withOpacity(0.45),
            ),
            Text(
              text,
              style: constraints.maxWidth >= 600
                  ? TextStyle(
                      fontSize: 12.sp,
                      color: context.colorScheme.text,
                      fontWeight: FontWeight.normal,
                      // fontFamily: 'Gilroy',
                    )
                  : TextStyle(
                      fontSize: 15.sp,
                      color: context.colorScheme.text,
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
