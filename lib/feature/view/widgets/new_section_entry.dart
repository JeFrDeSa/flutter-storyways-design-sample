import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/controller/book_search.dart';
import 'package:design_sample/feature/view/widgets/new_section_entry/leading_new_section_entry_image.dart';
import 'package:design_sample/feature/view/widgets/new_section_entry/new_section_entry_book_information.dart';
import 'package:design_sample/feature/view/widgets/new_section_entry/new_section_entry_remember_me.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewSectionEntry extends ConsumerWidget {
  final AssetImage backgroundImage;
  final String title;
  final String author;
  final String releaseDate;

  const NewSectionEntry({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.author,
    required this.releaseDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                LeadingNewSectionEntryImage(backgroundImage: backgroundImage),
                const SizedBox(width: ui_properties.paddingLarge),
                NewSectionEntryBookInformation(title: title, author: author, releaseDate: releaseDate),
              ],
            ),
          ),
          const NewSectionEntryRememberMeButton(),
        ],
      ),
      onPressed: () {
        FocusManager.instance.primaryFocus?.unfocus();
        ref.read(searchProvider.state).update((state) => "");
      },
    );
  }
}
