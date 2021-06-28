abstract class Strings {
  static final Map<String, String> strings = {
    //  URLs
    //  Texts
    'appName': 'POS SYSTEM',
    'appBarTitle': 'The Meat Port',
    //  CONFIRMATION
  };

  static String get(String? key) {
    return strings[key] ?? 'NOT FOUND';
  }
}
