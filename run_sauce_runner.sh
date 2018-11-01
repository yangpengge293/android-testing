#!/bin/bash

# Values for testing on stew33
export SAUCE_USERNAME=admin
export SAUCE_ACCESS_KEY=0e779f56-385a-41be-a562-6f6908bf5acf
export TEST_ENDPOINT='stew33.stew.saucelabs.net/rest'

# Assuming you checked out android-testing repo in same location as sauce-runner repo,
# it should find sauce-runner-virtual here, or you can change the path here:
export SAUCE_RUNNER_BIN='../sauce-runner/sauce-runner-virtual'

# Run what you just built out of the output folder
$SAUCE_RUNNER_BIN -u $SAUCE_USERNAME -k $SAUCE_ACCESS_KEY -x $TEST_ENDPOINT -f espresso -d 'deviceName=Samsung Galaxy S8 HD GoogleAPI Emulator,platformVersion=7.0,extendedDebugging=true' -v DEBUG -a './runner/AndroidJunitRunnerSample/app/build/outputs/apk/debug/app-debug.apk' -t './runner/AndroidJunitRunnerSample/app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk' -i 'class com.example.android.testing.androidjunitrunnersample.OperationHintInstrumentationTest' &

# The following test APK in dropbox is just the calc-test, but with localized strings added for Welsh, Japanese, Spanish, French, Chinese, Armenian
# Between those different character sets, this should give us ability to catch locale/lang bugs as well as python 2 Unicode-->ASCII encode/decode bugs as we've seen recently.
$SAUCE_RUNNER_BIN -u $SAUCE_USERNAME -k $SAUCE_ACCESS_KEY -x $TEST_ENDPOINT -f espresso -d 'deviceName=Samsung Galaxy S8 HD GoogleAPI Emulator,platformVersion=7.0,locale=ja_JP,language=ja' -v DEBUG -a https://www.dropbox.com/s/etaweqvn85ok4tf/app-debug.apk?dl=1 -t https://www.dropbox.com/s/ng0lhjquyhug9wv/app-debug-androidTest.apk?dl=1 &

# Values for testing in build
# (Access key is the same on stew and build, which is why it's absent
export SAUCE_USERNAME=sah
export TEST_ENDPOINT='build.saucelabs.com/rest'

$SAUCE_RUNNER_BIN -u sah -k $SAUCE_ACCESS_KEY -x $TEST_ENDPOINT -f espresso -d 'deviceName=Android GoogleAPI Emulator,platformVersion=7.1,extendedDebugging=true' -v DEBUG -a 'https://s3.amazonaws.com/sauce-bundles/emulator-files/calc.apk' -t 'https://s3.amazonaws.com/sauce-bundles/emulator-files/calc-test.apk' &