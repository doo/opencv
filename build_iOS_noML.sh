#!/bin/bash

BUILD_DIR=iOS-Build/NoML/
BUILD_SCRIPT=./platforms/ios/build_framework.py

echo "Removing cmake build..."
rm -dfr "${BUILD_DIR}"

echo "Setting execute flag on build script..."
chmod +x "${BUILD_SCRIPT}"

echo "Executing build script..."
python "${BUILD_SCRIPT}" "${BUILD_DIR}" --without calib3d --without cudaarithm --without cudabsegm --without cudacodec --without cudafeatures2d --without cudafilters --without cudaimgproc --without cudalegacy --without cudaobjdetect --without cudaoptflow --without cudastereo --without cudawarping --without cudev --without dnn --without flann --without java --without ml --without js --without python --without shape --without stitching --without superres --without ts --without video --without videoio --without videostab --without viz --without world

echo "Finished build script"
