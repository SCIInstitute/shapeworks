from ShapeCohortGen import CohortGenerator
from ShapeCohortGen import Supershapes
from ShapeCohortGen import Ellipsoids
from ShapeCohortGen import CohortGenUtils
import os

def EllipsoidCohortGenerator(out_dir=os.getcwd()+'/generated_ellipsoid_cohort/'):
	return CohortGenerator.EllipsoidCohortGenerator(out_dir)

def SupershapesCohortGenerator(out_dir=os.getcwd()+'/generated_supershapes_cohort/'):
	return CohortGenerator.SupershapesCohortGenerator(out_dir)