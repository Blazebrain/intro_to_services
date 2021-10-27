import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (viewModel.imageFromGallery != null)
                    Image.file(
                      viewModel.imageFromGallery!,
                      height: 30,
                      width: 30,
                    ),
                  TextButton(
                    onPressed: () {
                      viewModel.getImageFromGallery();
                    },
                    child: const Text('Fetch Image'),
                  )
                ],
              ),
            ),
          );
        });
  }
}
