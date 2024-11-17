String svgIconsName(String? icon) {
  return 'assets/icons/$icon.svg';
}

String pngImageName(String? image) {
  return 'assets/images/$image.png';
}

String jsonFileName(String? file) {
  return 'assets/animations/$file.json';
}

class AppIcons {
  static String get addIcon => svgIconsName('add');

  static String get archivesIcon => svgIconsName('archives');

  static String get arrowsIcon => svgIconsName('arrows');

  static String get attachmentIcon => svgIconsName('attatchment');

  static String get calendarIcon => svgIconsName('calendar');

  static String get calendarIcon2 => svgIconsName('calendar2');

  static String get checkIcon => svgIconsName('check');

  static String get editIcon => svgIconsName('edit');

  static String get exportIcon => svgIconsName('export');

  static String get homeIcon => svgIconsName('home');

  static String get lineIcon => svgIconsName('line');

  static String get notesIcon => svgIconsName('notes');

  static String get recordIcon => svgIconsName('record');

  static String get reminderIcon => svgIconsName('reminder');

  static String get searchIcon => svgIconsName('search');

  static String get sortIcon => svgIconsName('sort');

  static String get tasksIcon => svgIconsName('tasks');

  static String get borderIcon => svgIconsName('border');

  static String get addButtonIcon => svgIconsName('addButton');
}

class AppImages {
  static String get avatarImage => pngImageName('avatar');
}

class AppAnimations {
  static String get appErrorAnimation => jsonFileName('appError');
}
