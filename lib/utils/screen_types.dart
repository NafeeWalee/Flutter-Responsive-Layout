enum ScreenTypes { mobile, tablet, desktop, web }

extension ScreenExtension on ScreenTypes {
  Map<String, double> get type {
    switch (this) {
      case ScreenTypes.mobile:
        return <String, double> {
          'maxWidth': 500,
          'minWidth': 500,
        };
      case ScreenTypes.tablet:
        return <String, double>{
          'maxWidth': 800,
          'minWidth': 800,
        };
      case ScreenTypes.desktop:
        return <String, double>{
          'maxWidth': 1100,
          'minWidth': 1100,
        };
      case ScreenTypes.web:
        return <String, double> {
          'maxWidth': 1325,
          'minWidth': 1325,
        };
    }
  }
}