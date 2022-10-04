import 'package:flutter/material.dart';

final Image playIcon = Image.asset("assets/images/icons/play_icon.png");

Image getCalendarIcon(BuildContext context) {
  if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
    return Image.asset("assets/images/icons/calendar_dark_theme_icon.png");
  } else {
    return Image.asset("assets/images/icons/calendar_light_theme_icon.png");
  }
}

final Image rememberMeIcon = Image.asset("assets/images/icons/remember_me_icon.png");
final Image searchIcon = Image.asset("assets/images/icons/search_icon.png");
final Image homeIcon = Image.asset("assets/images/icons/bottom_item0_icon.png");
final Image multiIcon = Image.asset("assets/images/icons/bottom_item1_icon.png");
final Image compassIcon = Image.asset("assets/images/icons/bottom_item2_icon.png");
final Image notesIcon = Image.asset("assets/images/icons/bottom_item3_icon.png");

const BorderRadius defaultWidgetBoarderRadius = BorderRadius.all(Radius.circular(15.0));

const double defaultElevation = 4.0;

const double iconSizeExtraSmall = 15;
const double iconSizeSmall = 20;

const double paddingSmall= 5;
const double paddingMedium = 10;
const double paddingLarge = 15;
const double paddingExtraLarge = 20;

const double bottomNavigationBarHeight = 60;

const double leadingNewSectionEntryImageHeight = 120;
const double leadingNewSectionEntryImageWidth = 95;

const double newSectionEntryRememberMeButtonSize = 50;

const double continueSectionCoverImageSize = 100;
const double continueSectionButtonSize = 40;
const double continueSectionSize = 150;

const Color searchBarShadowColor = Color.fromRGBO(0x2c, 0x88, 0x5c, 0.1);
const Color searchResultShadowColor = Color.fromRGBO(0x2c, 0x88, 0x5c, 0.3);

const double leadingSearchResultEntryImageHeight = 100;
const double leadingSearchResultEntryImageWidth = 75;

const double searchBarHeight = 60;


