#ifndef PREFERENCES_H
#define PREFERENCES_H

#include <QSettings>
#include <PreferencesWindow.h>

class Preferences : public QObject
{
  Q_OBJECT;

public:

  static Preferences& Instance();

  QSettings& getSettings();

  void showWindow();

  bool cacheEnabled();
  void setCacheEnabled( bool enabled );

  int cacheMemory();
  void setCacheMemory( int value );

  int colorScheme();
  void setColorScheme( int value );

  float getGlyphQuality();
  void setGlyphQuality( float value );

  float getGlyphSize();
  void setGlyphSize( float value );

Q_SIGNALS:
  void colorSchemeChanged( int newIndex );
  void glyphPropertiesChanged();

private:

  // private constructor
  Preferences();
  // Stop the compiler generating methods of copy the object
  Preferences( Preferences const& copy );            // Not Implemented
  Preferences& operator=( Preferences const& copy ); // Not Implemented
  static Preferences instance;

  QSettings settings;

  PreferencesWindow preferencesWindow;
};

#endif // ifndef PREFERENCES_H
