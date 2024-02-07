#!/bin/sh

#  ci_post_xcodebuilt.sh
#  cloud-test
#
#  Created by Dustin Likens on 2/6/24.
#  
#find / -name '*.log'
#grep -r "Build settings from command line" /Volumes
#cat /Volumes/workspace/ci/*/o.out
ls -ra /Volumes/workspace/ci/
#echo $CI_PROJECT_FILE_PATH
#mkdir /Volumes/workspace/veracode
#cd /Volumes/workspace/veracode
#xcodebuild archive \
#  -project $CI_PROJECT_FILE_PATH \
#  -scheme cloud-test \
#  -destination generic/platform=iOS \
#  -configuration Debug \
#  -archivePath Veracode.xcarchive \
#  DEBUG_INFORMATION_FORMAT=dwarf-with-dsym \
#  ENABLE_BITCODE=NO \
#  > build.log.txt
#cat build.log.txt
exit 0
