library beyond.modules.screens.@module;

import 'package:beyond/core/DI/assembly_interface.dart';
import 'package:beyond/core/routing/navigation.dart';
import 'package:beyond/core/routing/transitions/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

part '@module_controller.dart';
part '@module_router.dart';
part '@module_screen.dart';
part '@module_use_case.dart';

class @Module_Assembly extends IAssembly {
  @override
  IModule get module => IModule.launch;

  @override
  PageRouteBuilder resolveTransitionBuilder(RouteSettings settings) {
    var usecase = @ModuleUseCase();
    var router = @ModuleRouter();
    var controller = @ModuleController(usecase: usecase, router: router);
    var widget = @ModuleScreen(controller: controller);

    return FadeRoute(widget: widget);
  }
}
