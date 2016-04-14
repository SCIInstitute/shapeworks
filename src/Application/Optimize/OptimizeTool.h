#ifndef STUDIO_OPTIMIZE_OPTIMIZETOOL_H
#define STUDIO_OPTIMIZE_OPTIMIZETOOL_H

#include <QSharedPointer>
#include <QWidget>
#include <QProgressDialog>
#include "Data/Preferences.h"
#include "ShapeWorksOptimize.h"

class Project;
class ShapeWorksStudioApp;
class Ui_OptimizeTool;

class OptimizeTool : public QWidget
{
  Q_OBJECT;
public:

  OptimizeTool(Preferences& prefs);
  ~OptimizeTool();

  /// export XML for ShapeWorksOptimize
  bool export_xml( QString filename );

  /// set the pointer to the project
  void set_project( QSharedPointer<Project> project );

  /// set the pointer to the application
  void set_app( ShapeWorksStudioApp* app );

  // set up the parameter table.
  void setupTable();
  std::vector<double> getStartRegs();
  std::vector<double> getEndRegs();
  std::vector<double> getDecaySpans();
  std::vector<double> getTolerances();
  std::vector<unsigned int> getIters();

  void set_preferences();

  void update_preferences();

public Q_SLOTS:

  /// Export XML
  void on_export_xml_button_clicked();

  /// Run optimize tool
  void on_run_optimize_button_clicked();
  void handle_thread_complete();
  void handle_progress(int val);
  void handle_error(std::string);
signals:
  void optimize_complete();
  void error_message(std::string);

private:
  ShapeWorksOptimize optimize_;
  Preferences& preferences_;
  Ui_OptimizeTool* ui_;
  QSharedPointer<Project> project_;
  ShapeWorksStudioApp* app_;
  QProgressDialog * progress_;
};

#endif /* STUDIO_OPTIMIZE_OPTIMIZETOOL_H */
