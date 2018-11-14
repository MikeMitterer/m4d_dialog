part of m4d_dialog;

class MdlConfirmDialog extends MaterialDialog {
    static final Logger _logger = new Logger('mdldialog.MdlConfirmDialog');

    static const String _DEFAULT_YES_BUTTON = "Yes";
    static const String _DEFAULT_NO_BUTTON = "No";

    String title = "";
    String text = "";
    String yesButton = _DEFAULT_YES_BUTTON;
    String noButton = _DEFAULT_NO_BUTTON;

    MdlConfirmDialog() : super(new DialogConfig());

    MdlConfirmDialog call(final String text,{ final String title: "",
        final String yesButton: _DEFAULT_YES_BUTTON, final String noButton: _DEFAULT_NO_BUTTON }) {
        Validate.notBlank(text);
        Validate.notNull(title);
        Validate.notBlank(yesButton);
        Validate.notBlank(noButton);

        this.text = text;
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

    // - Template ---------------------------------------------------------------------------------

    @override
    String get template => """
        <div class="mdl-dialog">
          <div class="mdl-dialog__content">
            ${_hasTitle ? '<h5>$title</h5>' : ''}
            <p>${text}</p>
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