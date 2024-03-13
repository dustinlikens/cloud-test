#!/bin/sh

#  ci_post_xcodebuilt.sh
#  cloud-test
#
#  Created by Dustin Likens on 2/6/24.
#
#grep -r "xcodebuild archive" /Volumes


#cat /Volumes/workspace/ci/*/o.out
#ls /Volumes/workspace/ci

pwd
find / -name "xcodebuild-archive*"
#mkdir /Volumes/workspace/veracode
#/Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild archive -project /Volumes/workspace/repository/cloud-test.xcodeproj -scheme cloud-test -destination generic/platform=iOS -archivePath /Volumes/workspace/build-v.xcarchive -derivedDataPath /Volumes/workspace/DerivedData -IDEPostProgressNotifications=YES CODE_SIGN_IDENTITY=- AD_HOC_CODE_SIGNING_ALLOWED=YES CODE_SIGN_STYLE=Automatic DEVELOPMENT_TEAM=$CI_TEAM_ID COMPILER_INDEX_STORE_ENABLE=NO -hideShellScriptEnvironment DEBUG_INFORMATION_FORMAT=dwarf-with-dsym ENABLE_BITCODE=NO > /Volumes/workspace/veracode/build-log.txt
#cat /Volumes/workspace/veracode/build-log.txt
#grep -rs "Command line invocation" /Volumes
#cp -R $CI_DERIVED_DATA_PATH/Logs/Build/*.xcactivitylog
#echo $CI_BUILD_ID
#echo $CI_BUILD_URL
#cd /Volumes/workspace/ci
#cd "$(\ls -1dt ./*/ | head -n 1)"
#cat o.out
#chmod -x o.out
#mkdir /Users/local/custom
#sudo sed 's/^.\{31\}//' o.out >> /Users/local/custom/build-log.txt
#ls /Users/local/custom
#wc -c /Users/local/custom/build-log.txt
#cat /Users/local/custom/build-log.txt
#grep -r "ARCHIVE SUCCEEDED" .
#mkdir /Users/local/.veracode
#ls .
#touch o.txt
#cat o.out >> o.txt
#ls .
#cat o.txt
#grep -r "ARCHIVE SUCCEEDED" /Volumes/workspace/ci
#cat /Users/local/.veracode/log.txt
#ls .
#cd "$( find "$1"/* -prune -type d 2>/dev/null | xargs stat -c "%Y %n" 2>/dev/null | sort -nr | head -n 1 | cut -d " " -f 2-)"
#ls -ldt */ | head -1
#cd "$(stat -c "%Y %n" "$1"/*/ | sort -nr | head -1 | cut -d " " -f 2-)"
#cd "$( find "$1"/* -prune -type d 2>/dev/null | xargs stat -c "%Y %n" 2>/dev/null | sort -nr | head -n 1 | cut -d " " -f 2-)"
#pwd

#ls /Volumes/workspace/ci/
#brew tap a7ex/homebrew-formulae
#brew install xcresultparser
#xcresultparser -o cli /Volumes/workspace/resultbundle.xcresult
#ls -a /Volumes/workspace/resultbundle.xcresult
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
