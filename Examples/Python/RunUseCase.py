# -*- coding: utf-8 -*-

"""
Most of the following steps even though wrapped in python functions are using
the underlying c++ code, for which we need to call the source paths to the
binaries. This step should be common for any use of a function in ShapeWorks.
__This requires the full ShapeWorks to be correctly built/downloaded!__'

These following commands set the temporary environment variables to point to
shapeworks binaries and set the necessary library paths
"""
import os
import platform
import argparse
import subprocess
import sys
from CommonUtils import robustifyShapeworksPaths,dataset_exists_check

# check that required modules are found
try:
    import termcolor
    import DatasetUtils
except ImportError as error:
    print("\nError: Unable to import ShapeWorks Python dependencies\n")
    print("Please make sure you have run \"source conda_installs.sh\" (once) and \"conda activate shapeworks\" (each time)")
    print("See https://github.com/SCIInstitute/ShapeWorks for more information")
    sys.exit(1)

# Default installation path for each platform. If using your own build, specify --shapeworks_path
default_binpath = "../../bin"
if platform.system() == "Windows":
    default_binpath = "C:\\Program Files\\ShapeWorks\\bin"
if platform.system() == "Darwin":
    default_binpath = "/Applications/ShapeWorks/bin:/Applications/ShapeWorks/bin/ShapeWorksStudio.app/Contents/MacOS"
default_subsample = 3

parser = argparse.ArgumentParser(description='Example ShapeWorks Pipeline')
parser.add_argument("--use_case", help="Specify which use case to run", choices=["ellipsoid", "ellipsoid_evaluate", "ellipsoid_mesh", "ellipsoid_fd", "ellipsoid_cut", "lumps", "left_atrium", "femur", "femur_mesh", "femur_cut", "deep_ssm", "data_augmentation"])
parser.add_argument("--use_subsample", help="Run the pipeline for a subset of data",action="store_true")
parser.add_argument("--num_subsample", help="Size of subset to run on (default: "+str(default_subsample)+")", nargs='?', type=int, default=default_subsample)
parser.add_argument("--interactive", help="Run in interactive mode", action="store_true")
parser.add_argument("--skip_grooming", help="Skip the grooming steps and start with already prepped (i.e., groomed) data", action="store_true")
parser.add_argument("--groom_images", help = "Apply grooming steps to both the shapes (segmentations or surface meshes) and raw images", action="store_true")
parser.add_argument("--use_single_scale", help="Use single scale optimization (default: multi scale)", action="store_true")
parser.add_argument("--tiny_test", help="Run as a short test", action="store_true")
parser.add_argument("--shapeworks_path", help="Path to ShapeWorks executables (default: "+default_binpath+")", nargs='?', type=str, default=os.pathsep)
args = parser.parse_args()
explicit_binpath = args.shapeworks_path

if args.use_subsample:
    dataExists = dataset_exists_check(args.use_case)
    args.use_subsample = args.num_subsample
    if(dataExists==False):
        print("Please note : For --use_subsample argument the entire dataset will be downloaded.For a quick test use the --tiny_test argument")
        input("Press any key to continue")

if len(sys.argv)==1:
    parser.print_help(sys.stderr)
    sys.exit(1)

module = __import__(args.use_case.lower())

# local path for imports, etc
os.environ["PATH"] = explicit_binpath + os.pathsep + os.environ["PATH"] + os.pathsep + default_binpath
# sys.path.insert(0, binpath + "/ShapeWorksStudio.app/Contents/MacOS")
# sys.path.insert(0, binpath)

# make sure the shapeworks executables can be found
robustifyShapeworksPaths()

image_use_cases = ['femur', 'femur_cut', 'left_atrium']
if args.groom_images and args.use_case.lower() not in image_use_cases:
    print("\n\n*************************** WARNING ***************************")
    print("'groom_images' tag was used but use case does not have images.")
    print("Running use case with segmentations or meshes only.")
    print("***************************************************************\n\n")

try:
    module.Run_Pipeline(args)
    print("\nShapeworks Pipeline Complete!")
except KeyboardInterrupt:
    print("KeyboardInterrupt exception caught")
    sys.exit(1)
except subprocess.CalledProcessError as e:
    print("General exception caught.\n\tReturncode: "+str(e.returncode)+"\n\tOutput: "+str(e.output))
