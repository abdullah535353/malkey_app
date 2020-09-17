import 'package:flutter/material.dart';
import 'package:malkey/utils/translation_helper.dart';

String translator(BuildContext context, String key){
  return AppLocal.of(context).getTranslation(key);
}