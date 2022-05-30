import 'package:flutter/material.dart';

class ColorConstants {
  static Color textColor = hexToColor('#21294A');
  static Color homeScaffoldBackgroundColor = hexToColor('#F4F5F9');
  static Color iconColor = hexToColor('#A2A8C4');
  static Color iconDrawerColor = hexToColor('#485A8E');
  static Color snackBarBackgroundColor = hexToColor('#FF3450');
  static Color containerColor = hexToColor('#FAFAFA');
  static Color floatingButtonColor = hexToColor('#0B66F7');
  static Color drawerBackgroundColor = hexToColor('#0E1E54');
  static Color lineColorOne = hexToColor('#C326CD');
  static Color lineColorTwo = hexToColor('#226BCE');

  static Color gray50 = hexToColor('#e9e9e9');
  static Color gray100 = hexToColor('#bdbebe');
  static Color gray200 = hexToColor('#929293');
  static Color gray300 = hexToColor('#666667');
  static Color gray400 = hexToColor('#505151');
  static Color gray500 = hexToColor('#242526');
  static Color gray600 = hexToColor('#202122');
  static Color gray700 = hexToColor('#191a1b');
  static Color gray800 = hexToColor('#121313');
  static Color gray900 = hexToColor('#0e0f0f');

  static Color brandGray50 = hexToColor('#FAFBFC');
  static Color brandGray100 = hexToColor('#DFE2E8');
  static Color brandGray200 = hexToColor('#D0D4DB');
  static Color brandGray300 = hexToColor('#A7B1BF');
  static Color brandGray400 = hexToColor('#8591A2');
  static Color brandGray500 = hexToColor('#6A7686');
  static Color brandGray600 = hexToColor('#4D5866');
  static Color brandGray700 = hexToColor('#3A434D');
  static Color brandGray800 = hexToColor('#272D33');
  static Color brandGray900 = hexToColor('#14171A');

  static Color blue50 = hexToColor('#f7faff');
  static Color blue100 = hexToColor('#f0f6ff');
  static Color blue200 = hexToColor('#bbdffe');
  static Color blue300 = hexToColor('#8dcafd');
  static Color blue400 = hexToColor('#5fb5fc');
  static Color blue500 = hexToColor('#1b95fa');
  static Color blue600 = hexToColor('#1677c8');
  static Color blue700 = hexToColor('#105996');
  static Color blue800 = hexToColor('#0b3c64');
  static Color blue900 = hexToColor('#051e32');

  static Color green100 = hexToColor('#D1F1BB');
  static Color green200 = hexToColor('#B5E891');
  static Color green300 = hexToColor('#99E067');
  static Color green400 = hexToColor('#7CD73C');
  static Color green500 = hexToColor('#63BA2A');
  static Color green600 = hexToColor('#4D901D');
  static Color green700 = hexToColor('#356614');
  static Color green800 = hexToColor('#203A0C');
  static Color green900 = hexToColor('#0C1504');

  static Color red100 = hexToColor('#FFDFDB');
  static Color red200 = hexToColor('#FEB0A9');
  static Color red300 = hexToColor('#FD8276');
  static Color red400 = hexToColor('#FD5443');
  static Color red500 = hexToColor('#FD271C');
  static Color red600 = hexToColor('#DA1416');
  static Color red700 = hexToColor('#A8100E');
  static Color red800 = hexToColor('#750A06');
  static Color red900 = hexToColor('#420502');

  static Color yellow100 = hexToColor('#FFEBCC');
  static Color yellow200 = hexToColor('#FED799');
  static Color yellow300 = hexToColor('#FEC366');
  static Color yellow400 = hexToColor('#FEAF33');
  static Color yellow500 = hexToColor('#FD9926');
  static Color yellow600 = hexToColor('#CC7C1D');
  static Color yellow700 = hexToColor('#995D13');
  static Color yellow800 = hexToColor('#663E09');
  static Color yellow900 = hexToColor('#321F02');
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
