import QtQuick 2.9
import QtQuick.Window 2.2
import Morph.Web 0.1
import QtWebEngine 1.7
import Lomiri.Components 1.3
import Lomiri.Components.Popups 1.3
import Lomiri.Content 1.1
import QtMultimedia 5.8
import QtSystemInfo 5.0
import Qt.labs.settings 1.0
import "components"
import "actions" as Actions
import "."

MainView {
  id: root
  objectName: "mainView"
  theme.name: "Ubuntu.Components.Themes.Ambiance"

  focus: true

  anchors {
    fill: parent
  }

  applicationName: "gnulinuxch.liohmoeller"
  anchorToKeyboard: true
  automaticOrientation: true
  property bool blockOpenExternalUrls: false
  property bool runningLocalApplication: false
  property bool openExternalUrlInOverlay: false
  property bool popupBlockerEnabled: true
  property bool fullscreen: false

  property var myScreenPixelDensity: Screen.pixelDensity

    property var settings: Settings {
        property bool useInternalBrowser: false
        }

  Page {
    id: page
    header: Rectangle {
      color: "#000000"
      width: parent.width
      height: units.dp(.5)
      z: 1
    }

    anchors {
      fill: parent
      bottom: parent.bottom
    }

    WebEngineView {
      id: webview

      property var currentWebview: webview
      property var myTabletPixelDensity: 8.88888888888889
      property var myTabletPixelDensityB: 9.88888888888889
      property var myTabletPixelDensityC: 9.48931735278791
      settings.fullScreenSupportEnabled: false
      property string myTabletUrl: "https://gnulinux.ch"
      property string myMobileUrl: "https://gnulinux.ch"
      property string myUrl: (Screen.pixelDensity == myTabletPixelDensity || Screen.pixelDensity == myTabletPixelDensityB) ? myTabletUrl : myMobileUrl

      property string test: writeToLog("DEBUG","A: my URL:", myUrl);
      property string test2: writeToLog("DEBUG","B: DevicePixelRatio:", Screen.devicePixelRatio);
      property string test3: writeToLog("DEBUG","C: PixelDensity:", myScreenPixelDensity);
      property string test4: writeToLog("DEBUG","D: Screen model:", Screen.model);
      property string test5: writeToLog("DEBUG","E: Screen manufacturer:", Screen.manufacturer);

      function writeToLog(mylevel,mytext, mymessage){
        console.log("["+mylevel+"]  "+mytext+" "+mymessage)
        return(true);
      }

      profile: WebEngineProfile {
        id: webContext

        property var myTabletPixelDensity: 8.88888888888889
        property var myTabletPixelDensityB: 9.88888888888889
        property alias userAgent: webContext.httpUserAgent
        property alias dataPath: webContext.persistentStoragePath
        property string myTabletUA: "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/67.0.3396.99 Chrome/67.0.3396.99 Safari/537.36"
        property string myMobileUA: "Mozilla/5.0 (Linux; U; Android 4.1.1; es-; AVA-V470 Build/GRK39F) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"
        property string myUA: (Screen.pixelDensity == myTabletPixelDensity || Screen.pixelDensity == myTabletPixelDensityB) ? myTabletUA : myMobileUA
        property string test: console.log("[DEBUG] Conole: myUA "+myUA)

        dataPath: dataLocation

        userAgent: myUA

        persistentCookiesPolicy: WebEngineProfile.ForcePersistentCookies
      }

      anchors {
        fill: parent
        right: parent.right
        bottom: parent.bottom
        margins: units.gu(0)
        topMargin: units.gu(4)
      }

      property var myFriezaZOOM: 1.75
      property var myMobileZOOM: 2.25
      property var myZoom: (Screen.pixelDensity == myTabletPixelDensity || Screen.pixelDensity == myTabletPixelDensityB || Screen.pixelDensity == myTabletPixelDensityC) ? myFriezaZOOM : myMobileZOOM
      property string test6: writeToLog("DEBUG","F: my Zoom:", myZoom);
      

    // Workaround for not correctly working zoom
    onLoadingChanged: {
      zoomFactor = myZoom
    }

      url: myUrl

      onJavaScriptDialogRequested: function(request) {

        switch (request.type){
          case JavaScriptDialogRequest.DialogTypeAlert:
            request.accepted = true;
            var alertDialog = PopupUtils.open(Qt.resolvedUrl("AlertDialog.qml"));
            alertDialog.message = request.message;
            alertDialog.accept.connect(request.dialogAccept);
            break;

          case JavaScriptDialogRequest.DialogTypeConfirm:
            request.accepted = true;
            var confirmDialog = PopupUtils.open(Qt.resolvedUrl("ConfirmDialog.qml"));
            confirmDialog.message = request.message;
            confirmDialog.accept.connect(request.dialogAccept);
            confirmDialog.reject.connect(request.dialogReject);
            break;

          case JavaScriptDialogRequest.DialogTypePrompt:
            request.accepted = true;
            var promptDialog = PopupUtils.open(Qt.resolvedUrl("PromptDialog.qml"));
            promptDialog.message = request.message;
            promptDialog.defaultValue = request.defaultText;
            promptDialog.accept.connect(request.dialogAccept);
            promptDialog.reject.connect(request.dialogReject);
            break;

          case 3:
            request.accepted = true;
            var beforeUnloadDialog = PopupUtils.open(Qt.resolvedUrl("BeforeUnloadDialog.qml"));
            beforeUnloadDialog.message = request.message;
            beforeUnloadDialog.accept.connect(request.dialogAccept);
            beforeUnloadDialog.reject.connect(request.dialogReject);
            break;
        }

      }

      onFileDialogRequested: function(request) {
        switch (request.mode) {
          case FileDialogRequest.FileModeOpen:
            request.accepted = true;
            var fileDialogSingle = PopupUtils.open(Qt.resolvedUrl("ContentPickerDialog.qml"));
            fileDialogSingle.allowMultipleFiles = false;
            fileDialogSingle.accept.connect(request.dialogAccept);
            fileDialogSingle.reject.connect(request.dialogReject);
            break;

          case FileDialogRequest.FileModeOpenMultiple:
            request.accepted = true;
            var fileDialogMultiple = PopupUtils.open(Qt.resolvedUrl("ContentPickerDialog.qml"));
            fileDialogMultiple.allowMultipleFiles = true;
            fileDialogMultiple.accept.connect(request.dialogAccept);
            fileDialogMultiple.reject.connect(request.dialogReject);
            break;

          case FilealogRequest.FileModeUploadFolder:
          case FileDialogRequest.FileModeSave:
            request.accepted = false;
            break;
        }
      }

      onAuthenticationDialogRequested: function(request) {
        switch (request.type)
        {
        //case WebEngineAuthenticationDialogRequest.AuthenticationTypeHTTP:
        case 0:
          request.accepted = true;
          var authDialog = PopupUtils.open(Qt.resolvedUrl("HttpAuthenticationDialog.qml"), webview.currentWebview);
          authDialog.host = UrlUtils.extractHost(request.url);
          authDialog.realm = request.realm;
          authDialog.accept.connect(request.dialogAccept);
          authDialog.reject.connect(request.dialogReject);
          break;

        //case WebEngineAuthenticationDialogRequest.AuthenticationTypeProxy:
        case 1:
          request.accepted = false;
          break;
        }
      }

      onNewViewRequested: function(request) {
        Qt.openUrlExternally(request.requestedUrl);
      }

      Loader {
        anchors {
          fill: popupWebview
        }
        active: webProcessMonitor.crashed || (webProcessMonitor.killed && !popupWebview.currentWebview.loading)
        sourceComponent: SadPage {
          webview: popupWebview
          objectName: "overlaySadPage"
        }
        WebProcessMonitor {
          id: webProcessMonitor
          webview: popupWebview
        }
        asynchronous: true
      }
    }

    Loader {
      id: contentHandlerLoader
      source: "ContentHandler.qml"
      asynchronous: true
    }

    Loader {
      id: downloadLoader
      source: "Downloader.qml"
      asynchronous: true
    }

    Loader {
      id: filePickerLoader
      source: "ContentPickerDialog.qml"
      asynchronous: true
    }

    Loader {
      id: downloadDialogLoader
      source: "ContentDownloadDialog.qml"
      asynchronous: true
    }

    BottomMenu {
      id: bottomMenu
      width: parent.width
    }
  }
}
