import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'details_view_controller.dart';

class DetailsView extends GetView<DetailsViewController> {
  DetailsView({Key? key}) : super(key: key);

  final autoValidateForm = AutovalidateMode.always.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    Text('Details'),
                  ],
                ),
              ),
            ),
          ),
        ),
        onLoading: Center(child: CupertinoActivityIndicator()),
        onEmpty: Container(),
        onError: (error) => Center(
          child: Text(error!),
        ),
      ),
    );
  }
}
