
=====================
Shapeworks
=====================

The ShapeWorks software is an open-source distribution of a new method for constructing compact statistical point-based models of ensembles of similar shapes that does not rely on any specific surface parameterization. The method requires very little preprocessing or parameter tuning and applies to a wide range of shape analysis problems, including nonmanifold surfaces and objects of arbitrary topology. The proposed correspondence point optimization uses an entropy-based 
minimization that balances the simplicity of the model (compactness) with the accuracy of the surface representations. The ShapeWorks software includes tools for preprocessing data, computing point-based shape models, and visualizing the results.

=====================

You have downloaded a binary distribution of ShapeWorks.

To use:

1. Download and install the "Microsoft Visual C++ Redistributable for
Visual Studio 2015, 2017 and 2019." :

https://aka.ms/vs/16/release/vc_redist.x64.exe

2. Download and install Miniconda for Windows:

https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe

3. Copy "C:\Program Files\ShapeWorks\Examples" to another location

4. Open "Anaconda Prompt"

5. CD to "C:\Program Files\ShapeWorks"

6. Run "conda_installs.bat"

   Note: If you already have anaconda/miniconda installed, this step may hang.  If this step hangs, please uninstall anaconda/miniconda and re-install it and then run conda_installs.bat.

7. CD to your copied Examples\Python location

8. Run "python RunUseCase.py --use_case [insert name of use case here]". For names for the use cases that are currently released, run: "python RunUseCase.py --help"


Running conda_installs.bat will activate the conda shapeworks environment
into your current anaconda prompt. For subsequent usage, the shapeworks conda environment must be activated using:

"conda activate shapeworks"

Note: If you have installed ShapeWorks in a different location than
"C:\Program Files\ShapeWorks", please add the path to the "bin"
directory as the final argument to RunUseCase.py so that the path will
be set correctly.
