#!/bin/bash
printf "----------------------\n"
printf "DELETING REPOSITORIES"
printf "----------------------\n"
rm -rf frameworks/base ../packages/apps/Updates ../packages/apps/Settings ../vendor/aosp
printf "----------------------------------------\n"
printf "STARTED CLONING MODIFIED REPOSITORIES\n"
printf "----------------------------------------\n"
# frameworks/base
git clone -b thirteen-plus https://github.com/userariii/frameworks_base.git ../frameworks/base --depth=1
# packages/apps/Updates
git clone -b thirteen https://github.com/userariii/packages_apps_Updates.git ../packages/apps/Updates --depth=1
# package/apps/Settings
git clone -b thirteen-plus https://github.com/userariii/packages_apps_Settings.git ../packages/apps/Settings --depth=1
# vendor/aosp
git clone -b thirteen-plus https://github.com/userariii/vendor_aosp.git ../vendor/aosp --depth=1
# android-OTA (PUSHER)
git clone -b thirteen https://github.com/userariii/android-OTA.git ../OTA
# OTA-Builds
git clone -b master https://gitlab.com/userariii/OTA-builds.git ../OTA-builds
printf "----------------------------------------\n"
printf "repo sync successfully...\n"
printf "----------------------------------------\n"
