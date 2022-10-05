import 'package:flutter/material.dart';

const ValueKey bookSearchPageKey = ValueKey("bookSearchPageKey");

const ValueKey searchBarKey = ValueKey("searchBarKey");
const ValueKey searchResultKey = ValueKey("searchResultKey");
const ValueKey searchResultEntryKey = ValueKey("searchResultEntryKey");
const ValueKey searchResultEntryImageKey = ValueKey("searchResultEntryImageKey");

const ValueKey bookOverviewKey = ValueKey("bookOverviewKey");

const ValueKey continueSectionKey = ValueKey("continueSectionKey");

const ValueKey continueSectionEntryKey = ValueKey("continueSectionEntryKey");
const ValueKey continueSectionEntryImageKey = ValueKey("continueSectionEntryImageKey");

const ValueKey newSectionEntryKey = ValueKey("newSectionEntryKey");
const ValueKey newSectionEntryImageKey = ValueKey("newSectionEntryImageKey");
const ValueKey newSectionListKey = ValueKey("newSectionListKey");

const ValueKey bockSearchNavigationBarKey = ValueKey("bockSearchNavigationBarKey");

ValueKey determineListEntryKey({required ValueKey key, required int index}) {
  return ValueKey("${key.value}$index");
}

const String continueSectionName = "Continue";
const String newSectionName = "New";
const String searchHintText = "Search for something";
