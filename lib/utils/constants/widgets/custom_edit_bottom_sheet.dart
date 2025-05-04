import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tod0_list/features/home/home_controller.dart';
import 'package:tod0_list/data/todo_model.dart' as Todo;
import 'package:tod0_list/data/todo_model.dart';

class CustomEditBottomSheet extends StatelessWidget {
  final Todo.Todo todo;
  CustomEditBottomSheet({super.key, required this.todo});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    homeController.titleEditingController.text = todo.title;
    homeController.descriptionEditingController.text = todo.content;
    homeController.selectedStatus.value = todo.status;

    return Container(
      height: 500.h,
      width: double.infinity,
      padding:  EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Get.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: homeController.titleEditingController,
              style: Theme.of(context).textTheme.bodyLarge,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Enter Title Here ...',
                hintStyle: GoogleFonts.roboto(color:Get.theme.hintColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: Get.theme.hintColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
              ),
            ),
             SizedBox(height: 16.h),
            TextFormField(
              controller: homeController.descriptionEditingController,
              maxLines: 5,
              style: Theme.of(context).textTheme.bodyLarge,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
              decoration: InputDecoration(
                hintStyle: GoogleFonts.roboto(color: Colors.black),
                hintText: 'Enter Description Here ...',
                fillColor: Get.theme.scaffoldBackgroundColor,
                filled: true,
                contentPadding:  EdgeInsets.all(16.r),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
              ),
            ),
             SizedBox(height: 16.h),
            DropDownTextField(
              searchTextStyle: GoogleFonts.roboto(color: Get.theme.hintColor,fontSize: 12.sp),
              initialValue: todo.status.toString().split('.').last,
              dropDownList: [
                DropDownValueModel(name: 'Pending', value: TodoStatus.Pending),
                DropDownValueModel(name: 'Done', value: TodoStatus.Done),
              ],
              textStyle: GoogleFonts.roboto(color:  Get.theme.hintColor,fontSize: 12.sp),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select a status';
                }
                return null;
              },
              dropDownItemCount: 2,
              enableSearch: false,
              listTextStyle: GoogleFonts.roboto(color: Get.theme.scaffoldBackgroundColor,fontSize: 12.sp),
              textFieldDecoration: InputDecoration(
                hintText: 'Select Status',
                hintStyle: GoogleFonts.roboto(color:  Get.theme.hintColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color:  Get.theme.hintColor),
                ),
              ),
              onChanged: (value) {
                if (value != null) {
                  homeController.selectedStatus.value =
                      value.value as TodoStatus;
                }
              },
            ),
             SizedBox(height: 16.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding:
                     EdgeInsets.symmetric(horizontal: 100.r, vertical: 15.r),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                homeController.updateTodo(todo).then(
                  (value) {
                    if (value) {
                      Get.back();
                      Get.snackbar(
                        'Success',
                        'Todo updated successfully',
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                      );
                    } else {
                      Get.snackbar(
                        'Error',
                        'Failed to update todo',
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                      );
                    }
                  },
                );
              },
              child: Text(
                'Update',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 16.sp,

              ),
            ),
         ) ],
        ),
      ),
    );
  }
}
