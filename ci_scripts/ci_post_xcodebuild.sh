#!/bin/sh

#  ci_post_xcodebuilt.sh
#  cloud-test
#
#  Created by Dustin Likens on 2/6/24.
#
#cat /Volumes/workspace/ci/*/o.out
#ls /Volumes/workspace/ci

#ls /Volumes/workspace/ci/
ls -a /Volumes/workspace/resultbundle.xcresult
#ls -a /Volumes/.Task
#ls -a /Volumes/.task
#find / -name '*.log'
#grep -rs "ARCHIVE SUCCEEDED" /Volumes
#cat /Volumes/workspace/ci/*/o.out
#echo $CI_ARCHIVE_PATH/
#ls -R $CI_ARCHIVE_PATH/../tmp
#echo $CI_BUILD_ID
#echo $CI_PRODUCT_ID
#echo $CI_BUILD_URL
#ls -ra /Volumes/workspace/ci/
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
#find /Users -type f -name "*.log"
#cat "/Volumes/workspace/tmp/resultBundleStream"*".json"
#ls -R /Volumes/workspace/resultbundle.xcresult
exit 0
