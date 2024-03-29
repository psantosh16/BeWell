
part of "home_view.dart";


class MindfulTrackerCard extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final bool actionButton;

  const MindfulTrackerCard({
    Key? key,
    required this.imagePath,
    required this.backgroundColor,
    required this.title,
    required this.subtitle,
    this.actionButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      margin: const EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        color: const Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 66,
            height: 66,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              color: backgroundColor,
            ),
            child: Image(
              image: AssetImage(imagePath),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                subtitle,
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const Spacer(),
          actionButton
              ? Container(
                  width: 45,
                  height: 45,
                  margin: const EdgeInsets.all(16),
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/home/Storage.png'),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

class MindfulAiCard extends StatelessWidget {
  const MindfulAiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 239,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image: const DecorationImage(
          image: AssetImage('assets/home/aiCard.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 60,
                height: 60,
                image: AssetImage('assets/home/mindfulAi.png'),
              ),
              SizedBox(
                width: 14,
              ),
              Text(
                "Mindful AI",
                style: TextStyle(fontSize: 44, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            child: Text(
              "Chat with our AI,\n get insights of yours",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: 90,
            height: 35,
            margin: const EdgeInsets.only(top: 27),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black,
            ),
            child: const Center(
              child: Text("Let's Go!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700)),
            ),
          )
        ],
      ),
    );
  }
}

class HomeSectionDivider extends StatelessWidget {
  final String title;
  const HomeSectionDivider({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final FontThemeClass fontTheme = FontThemeClass();
    return Row(
      children: [
        const CheckBadge(),
        8.horizontalSpace,
        Text(
          title,
          style: fontTheme.subTitle(
            context,
            color: context.colorScheme.grey,
          ),
        ),
      ],
    );
  }
}

class CheckBadge extends StatelessWidget {
  const CheckBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          FontAwesomeIcons.certificate,
          color: Colors.amber.shade800,
        ),
        const Icon(
          FontAwesomeIcons.check,
          color: Colors.white,
          size: 12,
        ),
      ],
    );
  }
}

class UserGreetings extends StatelessWidget {
  const UserGreetings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(200).r,
          child: Image.network("https://picsum.photos/200")),
      title: Text(
        "Good Morning,",
        style: FontThemeClass().title(context),
      ),
      subtitle: Text(
        "Hemant Sakunde",
        style: FontThemeClass().subTitle(context),
      ),
    );
  }
}

class HomeTestCard extends StatelessWidget {
  final String image;
  final String text;
  const HomeTestCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    final FontThemeClass fontTheme = FontThemeClass();

    return Container(
      width: 280.w,
      height: 240.h,
      margin: EdgeInsets.only(right: 20.w),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12).r,
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 185.h,
              width: 280.w,
            ),
          ),
          12.verticalSpace,
          Text(
            text,
            style: fontTheme.title2(context),
          ),
        ],
      ),
    );
  }
}
