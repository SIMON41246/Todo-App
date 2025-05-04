import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tod0_list/features/home/home_controller.dart';

class CustomAddBottomSheet extends StatelessWidget {
  CustomAddBottomSheet({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    HomeController _homeController = Get.find<HomeController>();
    return Container(
      height: 400.h,
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
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
              controller: _homeController.titleEditingController,
              style: Theme.of(context).textTheme.bodyLarge,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Enter Title Here ...',
                hintStyle: Get.theme.textTheme.bodyLarge?.copyWith(
                  color: Get.theme.textTheme.bodyLarge?.color?.withOpacity(0.6),
                  fontSize: 14.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: Get.theme.hintColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: Get.theme.hintColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: Get.theme.hintColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: Get.theme.hintColor),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            TextFormField(
              controller: _homeController.descriptionEditingController,
              maxLines: 5,
              style: Get.theme.textTheme.bodyLarge,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
              decoration: InputDecoration(
                hintStyle: Get.theme.textTheme.bodyLarge?.copyWith(
                  color: Get.theme.textTheme.bodyLarge?.color?.withOpacity(0.6),
                ),
                hintText: 'Enter Description Here ...',
                fillColor: Get.theme.scaffoldBackgroundColor,
                filled: true,
                contentPadding: const EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: Get.theme.hintColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: Get.theme.hintColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide:
                      BorderSide(color: Get.theme.scaffoldBackgroundColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide:
                      BorderSide(color: Get.theme.scaffoldBackgroundColor),
                ),
              ),
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
                  if (_formKey.currentState!.validate()) {
                    _homeController.addTodo().then((value) {
                      if (value) {
                        Get.snackbar(
                          'Success',
                          'Todo added successfully',
                          backgroundColor: Colors.green,
                          colorText: Colors.white,
                        );
                      } else {
                        Get.snackbar(
                          'Error',
                          'Failed to add todo',
                          backgroundColor: Colors.red,
                          colorText: Colors.white,
                        );
                      }
                    });
                    Get.back();
                  }
                },
                child: Text(
                  'Save',
                  style: Get.theme.textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
