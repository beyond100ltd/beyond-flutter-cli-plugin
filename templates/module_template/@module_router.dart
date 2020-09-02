part of beyond.modules.screens.@module;

class @ModuleRouter extends IRouter {
  bool canPop() => Navigator.of(Get.context).canPop();
}
