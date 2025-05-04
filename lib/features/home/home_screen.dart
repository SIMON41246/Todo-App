import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:tod0_list/utils/constants/widgets/custom_add_bottom_sheet.dart';
import 'package:tod0_list/utils/constants/widgets/custom_edit_bottom_sheet.dart';

import '../../data/todo_model.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        leading: SizedBox(),
        centerTitle: true,
        title: Text(
          'Task Management',
          style: Get.theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Get.theme.hintColor.withOpacity(1),
            fontSize: 24.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: context.width * 0.05,
                children: [
                  SizedBox(height: 80.h,),
                  FilterChip(
                    label: Text('All',style: GoogleFonts.roboto(fontSize: 13.sp),),
                    selected: _homeController.currentFilter.value == null,
                    onSelected: (_) => _homeController.setFilter(null),
                  ),
                  SizedBox(width: 8),
                  FilterChip(
                    label: Text('Pending',style: GoogleFonts.roboto(fontSize: 13.sp)),
                    selected:
                        _homeController.currentFilter.value == TodoStatus.Pending,
                    onSelected: (_) =>
                        _homeController.setFilter(TodoStatus.Pending),
                  ),
                  SizedBox(width: 8),
                  FilterChip(
                    label: Text('Done',style: GoogleFonts.roboto(fontSize: 13.sp)),
                    selected:
                        _homeController.currentFilter.value == TodoStatus.Done,
                    onSelected: (_) => _homeController.setFilter(TodoStatus.Done),
                  ),
                ],
              ),
            ),
             SizedBox(height: 20.h),
            Obx(
              () => _homeController.filteredTodos.isEmpty
                  ? Center(
                      child: Column(
                        children: [
                          LottieBuilder.asset('assets/empty.json',
                              height: 200.h, width: 200.w),
                          Text(
                            'No tasks available',
                            style: GoogleFonts.roboto(fontSize: 15.sp,fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      margin:  EdgeInsets.only(top: 16.r, bottom: 16.r),
                      height: 500.h,
                      width: double.infinity,
                      child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: _homeController.filteredTodos.length,
                        itemBuilder: (context, index) {
                          return Slidable(
                            endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    onPressed: (context) {
                                      _homeController.deleteTodo(index);
                                    },
                                    backgroundColor: Colors.red,
                                    borderRadius: BorderRadius.circular(12.r),
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                    label: 'Delete',
                                  ),
                                  const SizedBox(width: 4),
                                  SlidableAction(
                                    onPressed: (context) {
                                      Get.bottomSheet(
                                        CustomEditBottomSheet(
                                            todo: _homeController
                                                .filteredTodos[index]),
                                        shape:  RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(16.r)),
                                        ),
                                      );
                                    },
                                    borderRadius: BorderRadius.circular(12.r),
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                    icon: Icons.edit,
                                    label: 'Edit',
                                  ),
                                  SizedBox(width: 4.w),
                                ]),
                            child: Container(
                              margin:  EdgeInsets.symmetric(
                                  vertical: 8.r, horizontal: 16.r),
                              padding:  EdgeInsets.all(16.r),
                              decoration: BoxDecoration(
                                color: Get.theme.scaffoldBackgroundColor,
                                borderRadius: BorderRadius.circular(12.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _homeController.filteredTodos[index].title,
                                    style:
                                        Get.theme.textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                   SizedBox(height: 8.h),
                                  Text(
                                    _homeController.filteredTodos[index].content,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        spacing: 8,
                                        children: [
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.deepPurple,
                                          ),
                                          Text(
                                            _homeController
                                                .filteredTodos[index].startDate
                                                .toString()
                                                .split(' ')[0],
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 30.h,
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 12.r),
                                        decoration: BoxDecoration(
                                          color: _homeController
                                                      .filteredTodos[index]
                                                      .status ==
                                                  TodoStatus.Pending
                                              ? Colors.deepPurple
                                              : Colors.deepOrangeAccent,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Center(
                                          child: Text(
                                            _homeController
                                                .filteredTodos[index].status
                                                .toString()
                                                .split('.')
                                                .last,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                  fontSize: 14.sp,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => CustomAddBottomSheet(),
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
