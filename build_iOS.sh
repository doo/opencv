#!/bin/bash

BUILD_DIR=iOS-Build/Minimal/
BUILD_SCRIPT=./platforms/ios/build_framework.py
CONTRIB_DIR=./contrib

echo "Removing cmake build..."
rm -dfr "${BUILD_DIR}"

echo "Setting execute flag on build script..."
chmod +x "${BUILD_SCRIPT}"

echo "Executing build script..."
python "${BUILD_SCRIPT}" "${BUILD_DIR}" --debug_info --contrib "${CONTRIB_DIR}" \
--without dnn \
--without ml \
--without optflow \
--without photo \
--without rgbd \
--without saliency \
--without shape \
--without stitching \
--without surface_matching \
--without videoio \
--without videostab \
--without world \
--without aruco \
--without bgsegm \
--without bioinspired \
--without ccalib \
--without dpm \
--without fuzzy \
--without hfs \
--without img_hash \
--without line_descriptor \
--without phase_unwrapping \
--without plot \
--without reg \
--without xfeatures2d \
--without xobjdetect \
--without xphoto \
--without cudaarithm \
--without cudabsegm \
--without cudacodec \
--without cudafeatures2d \
--without cudafilters \
--without cudaimgproc \
--without cudalegacy \
--without cudaobjdetect \
--without cudaoptflow \
--without cudastereo \
--without cudawarping \
--without cudev \
--without java \
--without js \
--without superres \
--without ts \
--without video \
--without viz \
--without world \
--without python \
--disable OPENCL \
--disable LAPACK \
--disable EIGEN

echo "Finished build script"
