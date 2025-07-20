import 'package:courses/config/constants/application_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouterState.of(context).uri.toString();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(
          top: Scaffold.of(context).isDrawerOpen ? 5 : 50,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (Scaffold.of(context).isDrawerOpen)
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.cancel),
                ),
            ],
          ),
          drawerItem(
            title: 'Home',
            isSelected: currentLocation == '/home',
            onTap: () {
              context.go('/home');
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.homeSVG,
            context: context,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Theme.of(
                context,
              ).primaryTextTheme.bodyMedium!.color!.withValues(alpha: 0.2),
            ),
          ),
          drawerItem(
            title: 'logout',
            isSelected: false,
            onTap: () {
              context.go('/login');
            },
            svgIcon: ApplicationImages.logoutSVG,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget drawerItem({
    required String title,
    required void Function()? onTap,
    required String svgIcon,
    required BuildContext context,
    required bool isSelected,
  }) {
    return ListTile(
      leading: SvgPicture.asset(
        svgIcon,
        colorFilter: ColorFilter.mode(
          isSelected
              ? Theme.of(context).primaryColor
              : Theme.of(context).textTheme.bodyMedium!.color!,
          BlendMode.srcIn,
        ),
        height: 20,
        width: 20,
      ),
      selected: isSelected,
      title: Text(title),
      onTap: onTap,
    );
  }
}
