part of beyond.modules.screens.@module;

class @ModuleController extends GetxController {
  final @ModuleUseCase usecase;
  final @ModuleRouter router;

  @ModuleController({@required this.usecase, @required this.router});

}
