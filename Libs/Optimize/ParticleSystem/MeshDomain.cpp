/*=========================================================================
  Copyright (c) 2009 Scientific Computing and Imaging Institute.
  See ShapeWorksLicense.txt for details.

     This software is distributed WITHOUT ANY WARRANTY; without even 
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
     PURPOSE.  See the above copyright notices for more information.
=========================================================================*/

#include "MeshDomain.h"

namespace itk
{
  bool MeshDomain::ApplyConstraints(PointType &p) const {
    // TODO snap the point to the closest position on the mesh or something
    // TODO need to refactor particle updates into a function so that mesh can do its own update method.
    p = meshWrapper->SnapToMesh(p);
    return true;
  }

  bool MeshDomain::ApplyVectorConstraints(vnl_vector_fixed<double, DIMENSION> &gradE, const PointType &pos) const {
    // TODO need to refactor into update particle method
    // TODO reduce magnitude of vector so it doesn't violate constraints
    return true;
  }

  vnl_vector_fixed<double, DIMENSION> MeshDomain::ProjectVectorToSurfaceTangent(vnl_vector_fixed<double, DIMENSION> &gradE, const PointType &pos) const {

    vnl_vector_fixed<float, DIMENSION> vector;
    for (unsigned int i = 0; i < DIMENSION; i++) { vector[i] = gradE[i]; }

    vnl_vector_fixed<float, DIMENSION> projected = meshWrapper->ProjectVectorToSurfaceTangent(pos, vector);

    vnl_vector_fixed<double, DIMENSION> result;
    for (unsigned int i = 0; i < DIMENSION; i++) { result[i] = projected[i]; }
    return result;
  }

  MeshDomain::PointType MeshDomain::UpdateParticlePosition(PointType &point, vnl_vector_fixed<double, DIMENSION> &update) const {
    vnl_vector_fixed<float, DIMENSION> negativeUpdate;
    for (unsigned int i = 0; i < DIMENSION; i++) { negativeUpdate[i] = -update[i]; }
    PointType newPoint = meshWrapper->GeodesicWalk(point, negativeUpdate);
    ApplyConstraints(newPoint);
    return newPoint;
  }

  double MeshDomain::GetMaxDimRadius() const {
    PointType size = meshWrapper->GetMeshUpperBound() - meshWrapper->GetMeshLowerBound();
    double max = 0;
    for (int d = 0; d < 3; d++) {
      max = max > size[d] ? max : size[d];
    }
    std::cerr << "Using " << max << " as max dim radius\n";
    return max;
  }

}