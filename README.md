# Plugins Tutorial hands-on scripts

## Usage:

use `source` to run each chapter. Otherwise you may overwrite packages in your default environment.

if you use conda (anaconda or miniconda) for your python version / environment management, you can use the *-conda chapter versions.

## Chapters:

### ch0-virtualenv

Install `virtualenv` and create two virtual environments. 
Demonstrate a python package version clash and how to use separate environments to solve it.

### ch1-plugin

* Create a new virtual environment
* Install aiida_core and a sample plugin inside the environment
* demonstrate that the plugin gets recognized after installation

Play around with the sample plugin (in aiida-mul/), adding / renaming entry points in setup.json.
Then use `verdi calculation plugins` to see the results, or use the factory methods in `verdi shell`
Hint: As always after changing setup.py or setup.json, a reinstall is required.

### ch2-registry

* Reuse the environment created in ch1
* install experimental verdi-plug commands (github.com/DropD/aiida-verdi)
* demonstrate verdi-plug plugin commands reading plugin info from the registry
