#!/bin/bash

echo "Initializing QASM Enviroment..."

# Terminal colors
COLOR_TERMINATE='\033[0m'
GREEN='\033[0;32m'

# Display messages
INSTALLING=[INSTALLING]:
VERSION=[VERSION]:
COMPLETE=[INIT_COMPLETE]

# amazon-bracket-sdk setup
# to update the amazon-bracket-sdk, run: pip install amazon-braket-sdk --upgrade --upgrade-strategy eager
QISKIT_PIP_INSTALL="pip install qiskit-qasm3-import"
CHECK_QISKIT_PIP_INSTALL="pip show qiskit"
PYLATEXENC_PIP_INSTALL="pip install pylatexenc"
 
echo -e "$GREEN$INSTALLING$COLOR_TERMINATE" 
$QISKIT_PIP_INSTALL
$PYLATEXENC_PIP_INSTALL

echo -e "$GREEN$VERSION$COLOR_TERMINATE" 
$CHECK_QISKIT_PIP_INSTALL

echo -e "$GREEN$COMPLETE$COLOR_TERMINATE"

