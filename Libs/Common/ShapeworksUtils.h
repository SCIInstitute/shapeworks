#pragma once

#include "Shapeworks.h"

#include <vtkSmartPointer.h>
#include <vtkMatrix4x4.h>
#include <vtkPolyData.h>

namespace shapeworks {

class ShapeworksUtils
{
public:

  /// returns true if pathname is a directory
  // TODO: in C++17 this is a standard function
  static bool is_directory(const std::string &pathname);

  /// converts a vtkMatrix4x4 to a Matrix33 and corresponding translationVector
  static Matrix33 getMatrix(const vtkSmartPointer<vtkMatrix4x4>& mat);
  static Vector3 getOffset(const vtkSmartPointer<vtkMatrix4x4>& mat);

  /// connects pipeline from an itk exporter to a vtk importer
  template <typename ITK_Exporter, typename VTK_Importer>
  static void connectPipelines(ITK_Exporter exporter, VTK_Importer *importer)
  {
    importer->SetUpdateInformationCallback(exporter->GetUpdateInformationCallback());
    importer->SetPipelineModifiedCallback(exporter->GetPipelineModifiedCallback());
    importer->SetWholeExtentCallback(exporter->GetWholeExtentCallback());
    importer->SetSpacingCallback(exporter->GetSpacingCallback());
    importer->SetOriginCallback(exporter->GetOriginCallback());
    importer->SetScalarTypeCallback(exporter->GetScalarTypeCallback());
    importer->SetNumberOfComponentsCallback(exporter->GetNumberOfComponentsCallback());
    importer->SetPropagateUpdateExtentCallback(exporter->GetPropagateUpdateExtentCallback());
    importer->SetUpdateDataCallback(exporter->GetUpdateDataCallback());
    importer->SetDataExtentCallback(exporter->GetDataExtentCallback());
    importer->SetBufferPointerCallback(exporter->GetBufferPointerCallback());
    importer->SetCallbackUserData(exporter->GetCallbackUserData());
  }

  vtkSmartPointer<vtkPolyData> toVTK(const std::string &pathname);

};

} // shapeworks
