/*
 * Copyright (c) 2018, Michael Mitterer (office@mikemitterer.at),
 * IT-Consulting and Development Limited.
 *
 * All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/// Support for doing something awesome.
///
/// More dartdocs go here.
library m4d_dialog;

import 'dart:html' as dom;
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:logging/logging.dart';
import 'package:validate/validate.dart';


import "package:m4d_core/core/interfaces.dart";

import "package:m4d_core/m4d_core.dart";

export "package:m4d_core/m4d_core.dart";

import "package:m4d_core/m4d_ioc.dart" as ioc;

import "package:m4d_components/m4d_components.dart";
import 'package:m4d_template/m4d_template.dart';
//import "package:m4d_components/m4d_formatter.dart";

import 'package:m4d_flux/m4d_flux.dart';
export 'package:m4d_flux/m4d_flux.dart';

import 'm4d_animation.dart';

//import 'directive/components/interfaces/stores.dart';
//import 'services.dart' as service;


part "dialog/MaterialDialog.dart";
part "dialog/MaterialAlertDialog.dart";

part "dialog/MaterialConfirmDialog.dart";

part "dialog/MaterialSnackbar.dart";
part "dialog/MaterialNotification.dart";
part "dialog/MaterialDatePicker.dart";
part "dialog/MaterialTimePicker.dart";

part "dialog/components/MaterialDialogComponent.dart";

void registerMdlDialogComponents() {
    _registerMaterialDialogComponent();
}

class DialogModule extends ioc.IOCModule {

    @override
    configure() {
        registerMdlDialogComponents();

//        ioc.IOCContainer().bind(service.SimpleDataStore).to(_store);
//        ioc.IOCContainer().bind(service.SimpleValueStore).to(_store);
    }

//    @override
//    List<ioc.IOCModule> get dependsOn => [ FormatterModule() ];
}