import "dart:html" as dom;

import 'package:logging/logging.dart';
import 'package:console_log_handler/console_log_handler.dart';

import 'package:m4d_core/m4d_ioc.dart' as ioc;

import 'package:m4d_components/m4d_components.dart';
import 'package:m4d_dialog/m4d_dialog.dart';

void main() async {
    configLogging(show: Level.INFO);

    // Initialize M4D
    ioc.Container.bindModules([
        DialogModule()
    ]);

    await componentHandler().upgrade();
    Future(_bindEvents);
}

void _bindEvents() {
    final Logger _logger = new Logger('dialog.Main');

    final MaterialButton btnNotification = MaterialButton.widget(dom.querySelector("#notification"));
    final MaterialButton btnDialog = MaterialButton.widget(dom.querySelector("#dialog"));
    final MaterialTextfield title = MaterialTextfield.widget(dom.querySelector("#notification-title"));
    final MaterialTextfield subtitle = MaterialTextfield.widget(dom.querySelector("#notification-subtitle"));
    final MaterialTextfield content = MaterialTextfield.widget(dom.querySelector("#notification-content"));
    final MaterialRadioGroup notificationtype = MaterialRadioGroup.widget(dom.querySelector("#notification-type"));
    final MaterialSwitch autoclose = MaterialSwitch.widget(dom.querySelector("#auto-close"));

    void _checkIfButtonShouldBeEnabled(_) { btnNotification.enabled = (title.value.isNotEmpty || content.value.isNotEmpty); }

    title.hub.onKeyUp.listen( _checkIfButtonShouldBeEnabled);
    content.hub.onKeyUp.listen( _checkIfButtonShouldBeEnabled);

    autoclose.checked = true;
    int counter = 0;
    btnNotification.onClick.listen( (_) {
        _logger.info("Click on Notification");

        NotificationType type = NotificationType.INFO;
        if(notificationtype.hasValue) {
            switch(notificationtype.value) {
                case "debug":   type = NotificationType.DEBUG; break;
                case "info":    type = NotificationType.INFO; break;
                case "warning": type = NotificationType.WARNING; break;
                case "error":   type = NotificationType.ERROR; break;
                default: type = NotificationType.INFO;
            }
        }

        _logger.info("NT ${notificationtype.value} - ${notificationtype.hasValue}");

        final MaterialNotification notification = new MaterialNotification()
            ..autoClose = autoclose.checked;

        final String titleToShow = title.value.isNotEmpty ? "${title.value} (#${counter})" : "";

        notification(content.value, type: type,title: titleToShow, subtitle: subtitle.value)
            .show().then((final MdlDialogStatus status) {

            _logger.info(status);
        });
        counter++;
    });

    btnDialog.onClick.listen((_) {
        new MaterialAlertDialog()("Testmessage").show().then((final MdlDialogStatus status) {
            _logger.info(status);
        });
    });
}

