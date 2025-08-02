import 'package:courses/features/admins/cubits/admins_cubit/admins_cubit.dart';
import 'package:courses/features/admins/models/admin_model.dart';
import 'package:courses/features/admins/presentation/components/admin_list_item.dart';
import 'package:courses/features/admins/presentation/components/manage_admin_dialog.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AdminsScreen extends StatelessWidget {
  const AdminsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final adminsCubit = context.read<AdminsCubit>();
    final translator = AppLocalizations.of(context)!;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: adminsCubit.searchController,
                    onSubmitted: (value) {
                      // teachersCubit.pagingController.refresh();
                    },
                    decoration: InputDecoration(
                      hintText: '${translator.search} ${translator.admin}...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: () {
                    showManageAdminDialog(context);
                  },
                  icon: const Icon(Icons.add),
                  label: Text(translator.add_new),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            Expanded(
              child: PagingListener(
                controller: adminsCubit.pagingController,
                builder: (context, state, fetchNextPage) =>
                    PagedListView<int, AdminModel>(
                      padding: EdgeInsets.zero,
                      state: state,
                      fetchNextPage: fetchNextPage,
                      builderDelegate: PagedChildBuilderDelegate(
                        itemBuilder: (context, item, index) =>
                            AdminListItem(admin: item),
                      ),
                    ),
              ).animate().fade(duration: const Duration(milliseconds: 500)),
            ),
          ],
        ),
      ),
    );
  }
}
