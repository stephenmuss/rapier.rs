#!/bin/bash

cp -r docs/user_guides/templates/* docs/user_guides/rust/.
cp -r docs/user_guides/templates/* docs/user_guides/bevy_plugin/.
cp -r docs/user_guides/templates/* docs/user_guides/javascript/.

find docs/user_guides/bevy_plugin/ -type f -print0 | xargs -0 gawk -i inplace -v RS='<rapier>[^<]*</rapier>' -v ORS= '1'
find docs/user_guides/bevy_plugin/ -type f -print0 | xargs -0 gsed -i '/<rapier>/,/<\/rapier>/d'
find docs/user_guides/bevy_plugin/ -type f -print0 | xargs -0 gawk -i inplace -v RS='<js>[^<]*</js>' -v ORS= '1'
find docs/user_guides/bevy_plugin/ -type f -print0 | xargs -0 gsed -i '/<js>/,/<\/js>/d'
find docs/user_guides/bevy_plugin/ -type f -print0 | xargs -0 gsed -i 's\<bevy>\\g'
find docs/user_guides/bevy_plugin/ -type f -print0 | xargs -0 gsed -i 's\</bevy>\\g'
find docs/user_guides/bevy_plugin/ -type f -print0 | xargs -0 gsed -i 's\<notjs>\\g'
find docs/user_guides/bevy_plugin/ -type f -print0 | xargs -0 gsed -i 's\</notjs>\\g'

find docs/user_guides/rust/ -type f -print0 | xargs -0 gawk -i inplace -v RS='<bevy>[^<]*</bevy>' -v ORS= '1'
find docs/user_guides/rust/ -type f -print0 | xargs -0 gsed -i '/<bevy>/,/<\/bevy>/d'
find docs/user_guides/rust/ -type f -print0 | xargs -0 gawk -i inplace -v RS='<js>[^<]*</js>' -v ORS= '1'
find docs/user_guides/rust/ -type f -print0 | xargs -0 gsed -i '/<js>/,/<\/js>/d'
find docs/user_guides/rust/ -type f -print0 | xargs -0 gsed -i 's\<rapier>\\g'
find docs/user_guides/rust/ -type f -print0 | xargs -0 gsed -i 's\</rapier>\\g'
find docs/user_guides/rust/ -type f -print0 | xargs -0 gsed -i 's\<notjs>\\g'
find docs/user_guides/rust/ -type f -print0 | xargs -0 gsed -i 's\</notjs>\\g'

find docs/user_guides/javascript/ -type f -print0 | xargs -0 gawk -i inplace -v RS='<rapier>[^<]*</rapier>' -v ORS= '1'
find docs/user_guides/javascript/ -type f -print0 | xargs -0 gsed -i '/<rapier>/,/<\/rapier>/d'
find docs/user_guides/javascript/ -type f -print0 | xargs -0 gawk -i inplace -v RS='<bevy>[^<]*</bevy>' -v ORS= '1'
find docs/user_guides/javascript/ -type f -print0 | xargs -0 gsed -i '/<bevy>/,/<\/bevy>/d'
find docs/user_guides/javascript/ -type f -print0 | xargs -0 gawk -i inplace -v RS='<notjs>[^<]*</notjs>' -v ORS= '1'
find docs/user_guides/javascript/ -type f -print0 | xargs -0 gsed -i '/<notjs>/,/<\/notjs>/d'
find docs/user_guides/javascript/ -type f -print0 | xargs -0 gsed -i 's\<js>\\g'
find docs/user_guides/javascript/ -type f -print0 | xargs -0 gsed -i 's\</js>\\g'
