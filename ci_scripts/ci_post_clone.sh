#!/bin/sh

#  ci_post_clone.sh
#  cloud-test
#
#  Created by Dustin Likens on 6/4/25.
#

#xcodebuild clean
#/Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild archive -project $CI_PROJECT_FILE_PATH -scheme cloud-test -destination generic/platform=iOS -archivePath /Volumes/workspace/veracode/veracode.xcarchive -derivedDataPath /Volumes/workspace/DerivedData -IDEPostProgressNotifications=YES CODE_SIGN_IDENTITY=- AD_HOC_CODE_SIGNING_ALLOWED=YES CODE_SIGN_STYLE=Automatic DEVELOPMENT_TEAM=$CI_TEAM_ID COMPILER_INDEX_STORE_ENABLE=NO -hideShellScriptEnvironment DEBUG_INFORMATION_FORMAT=dwarf-with-dsym ENABLE_BITCODE=NO

brew tap veracode/tap
brew install gen-ir
python3 -m ensurepip
python3 -m pip install httpie
python3 -m pip install veracode-api-signing
mkdir /Users/local/.veracode
touch /Users/local/.veracode/credentials
echo "[default]" >> /Users/local/.veracode/credentials
echo "veracode_api_key_id = ${VERACODE_API_KEY_ID}" >> /Users/local/.veracode/credentials
echo "veracode_api_key_secret = ${VERACODE_API_KEY_SECRET}" >> /Users/local/.veracode/credentials
echo "building veracode"
xcodebuild clean
/Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild archive -project $CI_PROJECT_FILE_PATH -scheme cloud-test -destination generic/platform=iOS -archivePath /Users/local/.veracode/veracode.xcarchive DEBUG_INFORMATION_FORMAT=dwarf-with-dsym ENABLE_BITCODE=NO CODE_SIGN_IDENTITY=- CODE_SIGN_STYLE=Automatic DEVELOPMENT_TEAM=$CI_TEAM_ID -derivedDataPath /Users/local/.veracode AD_HOC_CODE_SIGNING_ALLOWED=YES > /Users/local/.veracode/build-log.txt
#    cat /Users/local/.veracode/build-log.txt
echo "veracode build ended"
gen-ir /Users/local/.veracode/build-log.txt /Users/local/.veracode/veracode.xcarchive
#    echo "gen-ir complete"
zip -r /Users/local/.veracode/veracode.zip /Users/local/.veracode/veracode.xcarchive
#    ls -R /Users/local/
python3 -m httpie --auth-type=veracode_hmac -f POST https://analysiscenter.veracode.com/api/5.0/uploadfile.do "app_id==1500569" "file@/Users/local/.veracode/veracode.zip" --ignore-stdin
python3 -m httpie --auth-type=veracode_hmac "https://analysiscenter.veracode.com/api/5.0/beginprescan.do" "app_id==1500569" "auto_scan==false" "scan_all_nonfatal_top_level_modules==true"
