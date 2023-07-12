import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:star_green_app/styles/star_green_colors.dart';
import 'package:star_green_app/utils/utils.dart';

class UxAuthProvider extends ChangeNotifier {
  // Icons
  IconData _userIcon = MdiIcons.minus;
  Color _iconColorUser = StarGreenColors.lowGrey;
  IconData _emailIcon = MdiIcons.minus;
  Color _emailIconColor = StarGreenColors.lowGrey;
  IconData _passwordIcon = MdiIcons.minus;
  Color _passwordIconColor = StarGreenColors.lowGrey;
  IconData _have8or16 = MdiIcons.minus;
  Color _have8or16Color = StarGreenColors.lowGrey;
  IconData _minOneLetter = MdiIcons.minus;
  Color _minOneLetterColor = StarGreenColors.lowGrey;
  IconData _minOneNumber = MdiIcons.minus;
  Color _minOneNumberColor = StarGreenColors.lowGrey;
  IconData _minOneSymbol = MdiIcons.minus;
  Color _minOneSymbolColor = StarGreenColors.lowGrey;
  IconData _samePw = MdiIcons.minus;
  Color _samePwColor = StarGreenColors.lowGrey;
  IconData _acceptTerms = MdiIcons.minus;
  Color _acceptTermsColor = StarGreenColors.lowGrey;
  //
  AutovalidateMode? _validateMode;
  bool _isTapped = false;
  bool? _user;
  String _messageEmail = mensajes[1];
  String _messageUser = mensajes[0];
  String _terms = mensajes[8];
  String _messagesPasswords = mensajes[2];
  // GETTERS
  bool? get user => _user;
  Color get iconColor => _iconColorUser;
  IconData get userIcon => _userIcon;
  AutovalidateMode? get validateMode => _validateMode;
  bool get isTapped => _isTapped;
  String get messageUser => _messageUser;
  String get messageEmail => _messageEmail;
  String get terms => _terms;
  String get messagesPassword => _messagesPasswords;
  // ICONS

  IconData get emailIcon => _emailIcon;
  Color get emailIconColor => _emailIconColor;
  IconData get passwordIcon => _passwordIcon;
  Color get passwordIconColor => _passwordIconColor;
  IconData get have8or16 => _have8or16;
  Color get have8or16Color => _have8or16Color;
  IconData get minOneLetter => _minOneLetter;
  Color get minOneLetterColor => _minOneLetterColor;
  IconData get minOneNumber => _minOneNumber;
  Color get minOneNumberColor => _minOneNumberColor;
  IconData get minOneSymbol => _minOneSymbol;
  Color get minOneSymbolColor => _minOneSymbolColor;
  IconData get samePw => _samePw;
  Color get samePwColor => _samePwColor;
  IconData get acceptTerms => _acceptTerms;
  Color get acceptTermsColor => _acceptTermsColor;

  // SETTERS
  set user(bool? value) {
    _user = value;
    notifyListeners();
  }

  set iconColor(Color value) {
    _iconColorUser = value;
    notifyListeners();
  }

  set userIcon(IconData value) {
    _userIcon = value;
    notifyListeners();
  }

  set validateMode(AutovalidateMode? value) {
    _validateMode = value;
    notifyListeners();
  }

  set isTapped(bool value) {
    _isTapped = value;
    notifyListeners();
  }

  set messageUser(String value) {
    _messageUser = value;
    notifyListeners();
  }

  set messageEmail(String value) {
    _messageEmail = value;
    notifyListeners();
  }

  set terms(String value) {
    _terms = value;
    notifyListeners();
  }

  set messagesPassword(String value) {
    _messagesPasswords = value;
    notifyListeners();
  }

  set emailIcon(IconData value) {
    _emailIcon = value;
    notifyListeners();
  }

  set emailIconColor(Color value) {
    _emailIconColor = value;
    notifyListeners();
  }

  set passwordIcon(IconData value) {
    _passwordIcon = value;
    notifyListeners();
  }

  set passwordIconColor(Color value) {
    _passwordIconColor = value;
    notifyListeners();
  }

  set have8or16(IconData value) {
    _have8or16 = value;
    notifyListeners();
  }

  set have8or16Color(Color value) {
    _have8or16Color = value;
    notifyListeners();
  }

  set minOneLetter(IconData value) {
    _minOneLetter = value;
    notifyListeners();
  }

  set minOneLetterColor(Color value) {
    _minOneLetterColor = value;
    notifyListeners();
  }

  set minOneNumber(IconData value) {
    _minOneNumber = value;
    notifyListeners();
  }

  set minOneNumberColor(Color value) {
    _minOneNumberColor = value;
    notifyListeners();
  }

  set minOneSymbol(IconData value) {
    _minOneSymbol = value;
    notifyListeners();
  }

  set minOneSymbolColor(Color value) {
    _minOneSymbolColor = value;
    notifyListeners();
  }

  set samePw(IconData value) {
    _samePw = value;
    notifyListeners();
  }

  set samePwColor(Color value) {
    _samePwColor = value;
    notifyListeners();
  }

  set acceptTerms(IconData value) {
    _acceptTerms = value;
    notifyListeners();
  }

  set acceptTermsColor(Color value) {
    _acceptTermsColor = value;
    notifyListeners();
  }
  // FUNCTIONS

  uxMessageUser(bool value) {
    _uxIconValid(value, 'user');
    value == false
        ? messageUser = mensajesFalse[0]
        : messageUser = mensajesTrue[0];
  }

  uxMessageEmail(bool value) {
    _uxIconValid(value, 'email');
    value == false ? messageEmail = mensajesFalse[1] : mensajesTrue[1];
  }

  uxMessagePassword(bool value) {
    _uxIconValid(value, 'password');
    value == false
        ? messagesPassword = mensajesFalse[2]
        : messagesPassword = mensajesTrue[2];
  }

  _uxIconValid(bool value, String name) {
    if (!value) {
      switch (name) {
        case 'user':
          userIcon = MdiIcons.close;
          iconColor = Colors.red;
          break;
        case 'email':
          emailIcon = MdiIcons.close;
          emailIconColor = Colors.red;
          break;
        case 'password':
          passwordIcon = MdiIcons.close;
          passwordIconColor = Colors.red;
          break;
        case 'have8or16':
          have8or16 = MdiIcons.close;
          have8or16Color = Colors.red;
          break;
        case 'minOneLetter':
          minOneLetter = MdiIcons.close;
          minOneLetterColor = Colors.red;
          break;
        case 'minOneNumber':
          minOneNumber = MdiIcons.close;
          minOneNumberColor = Colors.red;
          break;
        case 'minOneSymbol':
          minOneSymbol = MdiIcons.close;
          minOneSymbolColor = Colors.red;
          break;
        case 'samePw':
          samePw = MdiIcons.close;
          samePwColor = Colors.red;
          break;
        case 'acceptTerms':
          acceptTerms = MdiIcons.close;
          acceptTermsColor = Colors.red;
          break;
        default:
          return;
      }
    } else {
      switch (name) {
        case 'user':
          userIcon = MdiIcons.check;
          iconColor = StarGreenColors.greenOriginal;
          break;
        case 'email':
          emailIcon = MdiIcons.check;
          emailIconColor = StarGreenColors.greenOriginal;
          break;
        case 'password':
          passwordIcon = MdiIcons.check;
          emailIconColor = StarGreenColors.greenOriginal;
          break;
        case 'have8or16':
          have8or16 = MdiIcons.check;
          have8or16Color = StarGreenColors.greenOriginal;
          break;
        case 'minOneLetter':
          minOneLetter = MdiIcons.check;
          minOneLetterColor = StarGreenColors.greenOriginal;
          break;
        case 'minOneNumber':
          minOneNumber = MdiIcons.check;
          minOneNumberColor = StarGreenColors.greenOriginal;
          break;
        case 'minOneSymbol':
          minOneSymbol = MdiIcons.check;
          minOneSymbolColor = StarGreenColors.greenOriginal;
          break;
        case 'samePw':
          samePw = MdiIcons.check;
          samePwColor = StarGreenColors.greenOriginal;
          break;
        case 'acceptTerms':
          acceptTerms = MdiIcons.check;
          acceptTermsColor = StarGreenColors.greenOriginal;
          break;
        default:
          return;
      }
    }
  }
}
