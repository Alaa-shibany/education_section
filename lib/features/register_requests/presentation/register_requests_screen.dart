import 'package:courses/features/register_requests/cubits/get_requests_cubit/get_requests_cubit.dart';
import 'package:courses/features/register_requests/models/register_request_model.dart';
import 'package:courses/features/register_requests/presentation/components/request_list_item.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class RegisterRequestsScreen extends StatelessWidget {
  const RegisterRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final registerRequestsCubit = context.read<GetRequestsCubit>();
    final translator = AppLocalizations.of(context)!;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              spacing: 5,
              children: [
                Expanded(
                  child: TextField(
                    controller: registerRequestsCubit.studentController,
                    onSubmitted: (value) {
                      registerRequestsCubit.pagingController.refresh();
                    },
                    decoration: InputDecoration(
                      hintText: '${translator.search} ${translator.student}...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: registerRequestsCubit.courseController,
                    onSubmitted: (value) {
                      registerRequestsCubit.pagingController.refresh();
                    },
                    decoration: InputDecoration(
                      hintText: '${translator.search} ${translator.course}...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            Expanded(
              child: PagingListener(
                controller: registerRequestsCubit.pagingController,
                builder: (context, state, fetchNextPage) =>
                    PagedListView<int, RegisterRequestModel>(
                      padding: EdgeInsets.zero,
                      state: state,
                      fetchNextPage: fetchNextPage,
                      builderDelegate: PagedChildBuilderDelegate(
                        itemBuilder: (context, item, index) => RequestListItem(
                          requestModel: item,
                          onAccept: () {
                            // showManageTeacherDialog(context, teacher: item);
                          },
                        ),
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
