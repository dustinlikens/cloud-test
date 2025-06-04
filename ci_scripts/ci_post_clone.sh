#!/bin/sh

#  ci_post_clone.sh
#  cloud-test
#
#  Created by Dustin Likens on 6/4/25.
#

xcodebuild clean
/Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild archive -project $CI_PROJECT_FILE_PATH -scheme cloud-test -destination generic/platform=iOS -archivePath /Volumes/workspace/veracode/veracode.xcarchive -derivedDataPath /Volumes/workspace/DerivedData -IDEPostProgressNotifications=YES CODE_SIGN_IDENTITY=- AD_HOC_CODE_SIGNING_ALLOWED=YES CODE_SIGN_STYLE=Automatic DEVELOPMENT_TEAM=$CI_TEAM_ID COMPILER_INDEX_STORE_ENABLE=NO -hideShellScriptEnvironment DEBUG_INFORMATION_FORMAT=dwarf-with-dsym ENABLE_BITCODE=NO 
