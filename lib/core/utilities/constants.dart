import 'package:flutter/material.dart';

const ValueKey bookSearchPageKey = ValueKey("bookSearchPageKey");
const ValueKey searchBarKey = ValueKey("searchBarKey");
const ValueKey searchResultKey = ValueKey("searchResultKey");
const ValueKey searchResultEntryKey = ValueKey("searchResultEntryKey");
const ValueKey bookOverviewKey = ValueKey("bookOverviewKey");
const ValueKey continueSectionKey = ValueKey("continueSectionKey");
const ValueKey continueSectionEntryKey = ValueKey("continueSectionEntryKey");
const ValueKey continueSectionEntryImageKey = ValueKey("continueSectionEntryImageKey");
const ValueKey newSectionEntryKey = ValueKey("newSectionEntryKey");
const ValueKey bockSearchNavigationBarKey = ValueKey("bockSearchNavigationBarKey");

ValueKey determineImageKey({required int index}) {
  return ValueKey("${continueSectionEntryImageKey.value}$index");
}

const String continueSectionName = "Continue";
const String newSectionName = "New";
const String searchHintText = "Search for something";
