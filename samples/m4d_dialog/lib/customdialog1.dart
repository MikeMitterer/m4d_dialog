/**
 * Copyright (c) 2015, Michael Mitterer (office@mikemitterer.at),
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

library mdl_dialog_sample.customdialog1;

import 'package:m4d_dialog/m4d_dialog.dart';

class CustomDialog1 extends MaterialDialog {

    static const String _DEFAULT_YES_BUTTON = "Yes";
    static const String _DEFAULT_NO_BUTTON = "No";

    String title = "";
    String yesButton = _DEFAULT_YES_BUTTON;
    String noButton = _DEFAULT_NO_BUTTON;

    CustomDialog1() : super(new DialogConfig());

    CustomDialog1 call({ final String title: "",
                      final String yesButton: _DEFAULT_YES_BUTTON, final String noButton: _DEFAULT_NO_BUTTON }) {

        this.title = title;
        this.yesButton = yesButton;
        this.noButton = noButton;

        return this;
    }

    // - EventHandler -----------------------------------------------------------------------------

    void _onYes() {
        close(MdlDialogStatus.YES);
    }

    void _onNo() {
        close(MdlDialogStatus.NO);
    }

    // - Template ----------------------------------------------------------------------------------

    @override
    String get template => """
        <div class="mdl-dialog custom-dialog1">
          <div class="mdl-dialog__content">
            ${_hasTitle ? '<h5 class="mdl-color-text--primary-dark">${title}</h5>' : ''}
            <p>
              The mango is a juicy stone fruit belonging to the genus Mangifera, consisting of numerous tropical fruiting trees,
              cultivated mostly for edible fruit. The majority of these species are found in nature as wild mangoes. They all
              belong to the flowering plant family Anacardiaceae. The mango is native to South and Southeast Asia, from where it
              has been distributed worldwide to become one of the most cultivated fruits in the tropics.
            </p>

            <img style="margin: auto; max-width: 100%;" src="demo-images/mangues.jpg">

            <p>
              It originated in Indian subcontinent (present day India and Pakistan) and Burma. It is the national fruit of
              India, Pakistan, and the Philippines, and the national tree of Bangladesh. In several cultures, its fruit and
              leaves are ritually used as floral decorations at weddings, public celebrations, and religious ceremonies.
            </p>
          </div>
          <div class="mdl-dialog__actions" layout="row">
              <button class="mdl-button" data-mdl-click="onNo()">
                  ${noButton}
              </button>
              <button class="mdl-button mdl-button--colored" data-mdl-click="onYes()">
                  ${yesButton}
              </button>
          </div>
        </div>
        """;

    @override
    Map<String, Function> get events {
        return <String,Function>{
            "onNo" :  () => _onNo(),
            "onYes" :  () => _onYes()
        };
    }

    // - private ----------------------------------------------------------------------------------

    bool get _hasTitle => (title != null && title.isNotEmpty);
}