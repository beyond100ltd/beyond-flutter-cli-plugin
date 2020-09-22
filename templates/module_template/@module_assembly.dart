library beyond.modules.screens.@module;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get_it/get_it.dart';
import 'package:get/get.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'package:beyond/core/DI/assembly_interface.dart';
import 'package:beyond/core/routing/navigation.dart';
import 'package:beyond/core/routing/transitions/transitions.dart';

import 'package:beyond/data/exceptions/custom_exceptions.dart';
import 'package:beyond/data/utils/log_util.dart';
import 'package:beyond/generated/i18n.dart';

import 'package:beyond/app/utils/error_handling_mixin.dart';
import 'package:beyond/app/utils/validation_mixin.dart';
import 'package:beyond/app/utils/resources/ui_constants.dart';
import 'package:beyond/app/utils/widget_extension.dart';
import 'package:beyond/app/screens/widgets/common_widgets.dart';

part '@module_controller.dart';
part '@module_router.dart';
part '@module_screen.dart';
part '@module_use_case.dart';

class @ModuleAssembly extends IAssembly {

  ///TODO: Add to new @module to [IModule] enum at [package:beyond/core/routing/navigation.dart]
  @override
  IModule get module => IModule.@module;
  
  @override
  PageRouteBuilder resolveTransitionBuilder(RouteSettings settings) {
    return FadeRoute(widget: widget);
  }

  @override
  Widget get widget {
    var usecase = @ModuleUseCase();
    var router = @ModuleRouter();
    Get.create(
      () => @ModuleController(usecase: usecase, router: router, path: module.path),
      permanent: false,
    );
    var widget = @ModuleScreen();
    return widget;
  }
}