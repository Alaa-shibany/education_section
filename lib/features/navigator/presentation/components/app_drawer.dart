import 'package:courses/config/constants/application_images.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/routes/app_routes.dart';
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
            title: AppLocalizations.of(context)!.home,
            isSelected: currentLocation == AppRoutes.home,
            onTap: () {
              context.go(AppRoutes.home);
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.homeSVG,
            context: context,
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.subjects,
            isSelected: currentLocation == AppRoutes.subjects,
            onTap: () {
              context.go(AppRoutes.subjects);
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.booksSVG,
            context: context,
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.students,
            isSelected: currentLocation == AppRoutes.students,
            onTap: () {
              context.go(AppRoutes.students);
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.studentSVG,
            context: context,
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.teachers,
            isSelected: currentLocation == AppRoutes.teachers,
            onTap: () {
              context.go(AppRoutes.teachers);
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.teacherSVG,
            context: context,
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.register_requests,
            isSelected: currentLocation == AppRoutes.registerRequests,
            onTap: () {
              context.go(AppRoutes.registerRequests);
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.requestSVG,
            context: context,
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.courses,
            isSelected: currentLocation == AppRoutes.courses,
            onTap: () {
              context.go(AppRoutes.courses);
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.courseSVG,
            context: context,
          ),
          // drawerItem(
          //   title: AppLocalizations.of(context)!.admins,
          //   isSelected: currentLocation == AppRoutes.admins,
          //   onTap: () {
          //     context.go(AppRoutes.admins);
          //     if (Scaffold.of(context).isDrawerOpen) {
          //       Navigator.of(context).pop();
          //     }
          //   },
          //   svgIcon: ApplicationImages.adminSVG,
          //   context: context,
          // ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Theme.of(
                context,
              ).primaryTextTheme.bodyMedium!.color!.withValues(alpha: 0.2),
            ),
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.logout,
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
