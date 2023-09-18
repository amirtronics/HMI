#!/bin/bash

# Run script1.sh
echo "CMakeing files"
./configure.sh

# Check the exit status of script1.sh
if [ $? -eq 0 ]; then
  echo "CMake executed!"
else
  echo "CMake failed with exit code $?"
  exit 1
fi

# Run script2.sh
echo "Building files"
./build.sh

# Check the exit status of script2.sh
if [ $? -eq 0 ]; then
  echo "Build completed successfully"
else
  echo "Build failed with exit code $?"
  exit 1
fi

# Run script3.sh
echo "Installing files"
./install.sh

# Check the exit status of script3.sh
if [ $? -eq 0 ]; then
  echo "Installation completed successfully"
else
  echo "Installation failed with exit code $?"
  exit 1
fi

echo "All scripts completed successfully"