import 'package:intro_to_services/services/media_service.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  dependencies: [
    LazySingleton(classType: MediaService),
  ],
)
class AppSetup {}
