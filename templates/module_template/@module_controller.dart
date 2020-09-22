part of beyond.modules.screens.@module;

class @ModuleController extends GetxController with ErrorHandlingMixin, ValidationMixin {
  final @ModuleUseCase usecase;
  final @ModuleRouter router;
  final String path;

  @ModuleController({@required this.usecase, @required this.router, @required this.path}) {
    bindStreamsToSnackbar([deviceErrorStream]);
  }


  @override
  Future<void> onClose() async {
    await disposeErrorHandling();
  }
}
