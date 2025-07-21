// import 'package:flutter/material.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// class PaginationWidget extends StatelessWidget {
//   const PaginationWidget({super.key, required this.controller});
//   final PagingController<int, > controller;
//   @override
//   Widget build(BuildContext context) {
//     return PagingListener(
//       controller: controller,
//       builder: (context, state, fetchNextPage) =>
//           PagedListView<int, T>(
//             padding: EdgeInsets.zero,
//             state: state,
//             fetchNextPage: fetchNextPage,
//             builderDelegate: PagedChildBuilderDelegate(
//               itemBuilder: (context, item, index) => SubjectListItem(
//                 subjectItem: item,
//                 onEdit: () {
//                   showManageSubjectDialog(context, subject: item);
//                 },
//                 onDelete: () {
//                   showDeleteConfirmationDialog(context, item.name, () {});
//                 },
//               ),
//             ),
//           ),
//     );
//   }
// }
