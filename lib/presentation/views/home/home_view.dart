import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lastfm/domain/entities/album.dart';
import 'package:lastfm/presentation/widgets/album_card.dart';
import 'home_view_controller.dart';

class HomeView extends GetView<HomeViewController> {
  HomeView({Key? key}) : super(key: key);

  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final autoValidateForm = AutovalidateMode.always.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: controller.obx(
        (state) => Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Text('Home'),
                ],
              ),
            ),
          ),
        ),
        onLoading: Center(child: LinearProgressIndicator()),
        onEmpty: Container(),
        onError: (error) => Center(
          child: Text(error!),
        ),
      ),
    );
  }
}
