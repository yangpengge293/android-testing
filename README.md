### Example command-lines to quickly run an Espresso test are all set to go in `run_sauce_runner.sh`

Example from `run_sauce_runner.sh` follows:

*`SAUCE_RUNNER_BIN` path is set assuming you've checked out this repo into the same parent directory as sauce-runner repo.
It should find sauce-runner-virtual there, or you may change `SAUCE_RUNNER_BIN`.*

Also included are examples for use against testing espresso in `build.saucelabs.com` and prod.

##### Values for testing on stew33

```
export SAUCE_USERNAME=admin
export SAUCE_ACCESS_KEY=0e779f56-385a-41be-a562-6f6908bf5acf
export TEST_ENDPOINT='stew33.stew.saucelabs.net/rest'
export SAUCE_RUNNER_BIN='../sauce-runner/sauce-runner-virtual'

$SAUCE_RUNNER_BIN -u $SAUCE_USERNAME -k $SAUCE_ACCESS_KEY -x $TEST_ENDPOINT \
-f espresso -d 'deviceName=Android GoogleAPI Emulator,platformVersion=7.0' \
-v DEBUG -a './runner/AndroidJunitRunnerSample/app/build/outputs/apk/debug/app-debug.apk' \
-t './runner/AndroidJunitRunnerSample/app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk'
```

### Sauce Runner

**[sauce_runner](https://github.com/saucelabs/sauce-runner)** - Sauce runner repository, which you will need to run any of the Espresso examples tests in `run_sauce_runner.sh`


Android testing samples
===================================

A collection of samples demonstrating different frameworks and techniques for automated testing.

### Espresso Samples

**[BasicSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/BasicSample)** - Basic Espresso sample

**[CustomMatcherSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/CustomMatcherSample)** - Shows how to extend Espresso to match the *hint* property of an EditText

**[DataAdapterSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/DataAdapterSample)** - Showcases the `onData()` entry point for Espresso, for lists and AdapterViews

**[IdlingResourceSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/IdlingResourceSample)** - Synchronization with background jobs

**[IntentsBasicSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/IntentsBasicSample)** - Basic usage of `intended()` and `intending()`

**[IntentsAdvancedSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/IntentsAdvancedSample)** - Simulates a user fetching a bitmap using the camera

**[MultiWindowSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/MultiWindowSample)** - Shows how to point Espresso to different windows

**[RecyclerViewSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/RecyclerViewSample)** - RecyclerView actions for Espresso

**[WebBasicSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/WebBasicSample)** - Use Espresso-web to interact with WebViews

**[BasicSampleBundled](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/BasicSampleBundled)** - Basic sample for Eclipse and other IDEs

**[MultiProcessSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/MultiProcessSample)** - Showcases how to use multiprocess Espresso.
### UiAutomator Sample

**[BasicSample](https://github.com/googlesamples/android-testing/tree/master/ui/uiautomator/BasicSample)** - Basic UI Automator sample

### AndroidJUnitRunner Sample

**[AndroidJunitRunnerSample](https://github.com/googlesamples/android-testing/tree/master/runner/AndroidJunitRunnerSample)** - Showcases test annotations, parameterized tests and testsuite creation

### JUnit4 Rules Sample

**All previous samples use ActivityTestRule or IntentsTestRule but there's one specific to ServiceTestRule:

**[BasicSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/BasicSample)** - Simple usage of `ActivityTestRule`

**[IntentsBasicSample](https://github.com/googlesamples/android-testing/blob/master/ui/espresso/IntentsBasicSample)** - Simple usage of `IntentsTestRule`

**[ServiceTestRuleSample](https://github.com/googlesamples/android-testing/tree/master/integration/ServiceTestRuleSample)** - Simple usage of `ServiceTestRule`

Prerequisites
--------------

- Android SDK v23
- Android Build Tools v23
- Android Support Repository rev17

Getting Started
---------------

These samples use the Gradle build system. To build a project, enter the project directory and use the `./gradlew assemble` command or use "Import Project" in Android Studio.

- Use `./gradlew connectedAndroidTest` to run the tests on a connected emulator or device.
- Use `./gradlew test` to run the unit test on your local host.

There is a top-level `build.gradle` file if you want to build and test all samples from the root directory. This is mostly helpful to build on a CI (Continuous Integration) server.

Android Testing Support Library
---------------
Many of these samples use the ATSL. Visit the [Android Testing Support Library site](https://google.github.io/android-testing-support-library/) for more information.

Support
-------

- Google+ Community: https://plus.google.com/communities/105153134372062985968
- Stack Overflow: http://stackoverflow.com/questions/tagged/android-testing

If you've found an error in this sample, please file an issue:
https://github.com/googlesamples/android-testing

Patches are encouraged, and may be submitted by forking this project and
submitting a pull request through GitHub. Please see CONTRIBUTING.md for more details.

License
-------

Copyright 2015 The Android Open Source Project, Inc.

Licensed to the Apache Software Foundation (ASF) under one or more contributor
license agreements.  See the NOTICE file distributed with this work for
additional information regarding copyright ownership.  The ASF licenses this
file to you under the Apache License, Version 2.0 (the "License"); you may not
use this file except in compliance with the License.  You may obtain a copy of
the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
License for the specific language governing permissions and limitations under
the License.
