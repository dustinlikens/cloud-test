#!/bin/sh

#  ci_post_xcodebuilt.sh
#  cloud-test
#
#  Created by Dustin Likens on 2/6/24.
#  
#find / -name '*.log'
#grep -r "Build settings from command line" /Volumes
cat /Volumes/workspace/ci/$CI_BUILD_ID/o.out
exit 0
