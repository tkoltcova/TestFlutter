// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "category_1": MessageLookupByLibrary.simpleMessage("Category №1"),
        "category_2": MessageLookupByLibrary.simpleMessage("Category №2"),
        "category_3": MessageLookupByLibrary.simpleMessage("Category №3"),
        "category_4": MessageLookupByLibrary.simpleMessage("Category №4"),
        "picture_empty_state":
            MessageLookupByLibrary.simpleMessage("No data received"),
        "picture_error_state":
            MessageLookupByLibrary.simpleMessage("Error fetching users"),
        "title_about_me": MessageLookupByLibrary.simpleMessage("About me"),
        "title_app_bar": MessageLookupByLibrary.simpleMessage("Gallery"),
        "title_head": MessageLookupByLibrary.simpleMessage("Title"),
        "title_id": MessageLookupByLibrary.simpleMessage("Id pictures"),
        "title_pop": MessageLookupByLibrary.simpleMessage("Back"),
        "title_url": MessageLookupByLibrary.simpleMessage("Image link")
      };
}
