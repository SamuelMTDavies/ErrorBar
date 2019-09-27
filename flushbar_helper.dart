import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


import 'package:uown_bloc/components/components.dart';



class FlushbarHelper {
  /// Get a success notification flushbar.
  static Flushbar createSuccess(
      {@required String message,
        String title,
        Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      typeOfAlert: AlertType.SUCCESS,
      overlayColor: Colors.grey[900].withOpacity(0.7),
      padding: EdgeInsets.all(20),
      titleText: AutoSizeText(
        title,
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          color: Color(0xFF646363),
        ),
        maxFontSize: 26,
        minFontSize: 16,
        stepGranularity: 2,
      ),
      messageText: AutoSizeText(
        message,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          fontWeight: FontWeight.w700,
          color: Color(0xFF646363),
        ),
        maxFontSize: 30,
        minFontSize: 20,
        stepGranularity: 2,
      ),
      isDismissible: true,
      overlayBlur: 10,
      flushbarStyle: FlushbarStyle.GROUNDED,
      backgroundColor: Colors.white,
      //TODO: MARGIN TO BE RESPONSIVE
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      borderRadius: 50.0,
    );
  }

  /// Get an information notification flushbar
  static Flushbar createInformation(
      {@required String message,
        String title,
        Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      typeOfAlert: AlertType.WARNING,
      overlayColor: Colors.grey[900].withOpacity(0.7),
      padding: EdgeInsets.all(10),
      titleText: AutoSizeText(
        title,
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          color: Color(0xFF646363),
        ),
        maxFontSize: 26,
        minFontSize: 16,
        stepGranularity: 2,
      ),
      messageText: AutoSizeText(
        message,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          fontWeight: FontWeight.w700,
          color: Color(0xFF646363),
        ),
        maxFontSize: 30,
        minFontSize: 20,
        stepGranularity: 2,
      ),
      isDismissible: true,
      overlayBlur: 10,
      flushbarStyle: FlushbarStyle.GROUNDED,
      backgroundColor: Colors.white,
      //TODO: MARGIN TO BE RESPONSIVE
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      borderRadius: 50.0,
    );
  }

  /// Get a error notification flushbar
  static Flushbar createError(
      {@required String message,
        String title,
        Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      typeOfAlert: AlertType.ERROR,
      overlayColor: Colors.grey[900].withOpacity(0.7),
      padding: EdgeInsets.all(20),
      titleText: AutoSizeText(
        title,
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          color: Color(0xFF646363),
        ),
        maxFontSize: 26,
        minFontSize: 16,
        stepGranularity: 2,
      ),
      messageText: AutoSizeText(
        message,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          fontWeight: FontWeight.w700,
          color: Color(0xFF646363),
        ),
        maxFontSize: 30,
        minFontSize: 20,
        stepGranularity: 2,
      ),
      isDismissible: true,
      overlayBlur: 10,
      flushbarStyle: FlushbarStyle.GROUNDED,
      backgroundColor: Colors.white,
      //TODO: MARGIN TO BE RESPONSIVE
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      borderRadius: 50.0,
    );
  }

  /// Get a flushbar that can receive a user action through a button.
  static Flushbar createAction(
      {@required String message,
        @required SecondaryButton button,
        String title,
        Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      typeOfAlert: AlertType.SUCCESS,
      overlayColor: Colors.grey[900].withOpacity(0.7),
      padding: EdgeInsets.all(20),
      titleText: AutoSizeText(
        title,
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          color: Color(0xFF646363),
        ),
        maxFontSize: 26,
        minFontSize: 16,
        stepGranularity: 2,
      ),
      messageText: AutoSizeText(
        message,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          fontWeight: FontWeight.w700,
          color: Color(0xFF646363),
        ),
        maxFontSize: 30,
        minFontSize: 20,
        stepGranularity: 2,
      ),
      isDismissible: true,
      overlayBlur: 10,
      flushbarStyle: FlushbarStyle.GROUNDED,
      backgroundColor: Colors.white,
      //TODO: MARGIN TO BE RESPONSIVE
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      borderRadius: 50.0,
      mainButton: button,
    );
  }

  // Get a flushbar that shows the progress of a async computation.
  static Flushbar createLoading(
      {@required String message,
        @required LinearProgressIndicator linearProgressIndicator,
        String title,
        Duration duration = const Duration(seconds: 3),
        AnimationController progressIndicatorController,
        Color progressIndicatorBackgroundColor}) {
    return Flushbar(
      title: title,
      message: message,
      icon: Icon(
        Icons.cloud_upload,
        color: Colors.blue[300],
      ),
      duration: duration,
      showProgressIndicator: true,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
    );
  }

  /// Get a flushbar that shows an user input form.
  static Flushbar createInputFlushbar({@required Form textForm, @required String message, @required String title}) {
    return Flushbar(
      typeOfAlert: AlertType.WARNING,
      overlayColor: Colors.grey[900].withOpacity(0.7),
      userInputForm: textForm,
      padding: EdgeInsets.all(20),
      titleText: AutoSizeText(
        title,
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          color: Color(0xFF646363),
        ),
        maxFontSize: 26,
        minFontSize: 16,
        stepGranularity: 2,
      ),
      messageText: AutoSizeText(
        message,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Circular',
          fontWeight: FontWeight.w700,
          color: Color(0xFF646363),
        ),
        maxFontSize: 30,
        minFontSize: 20,
        stepGranularity: 2,
      ),
      isDismissible: true,
      overlayBlur: 10,
      flushbarStyle: FlushbarStyle.GROUNDED,
      backgroundColor: Colors.white,
      //TODO: MARGIN TO BE RESPONSIVE
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      borderRadius: 50.0,
    );
  }



}

