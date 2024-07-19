rm -rf build

# For iOS Device
xcodebuild archive \
-scheme analytics-library \
-sdk iphoneos \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/analytics-library.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# For Simulators
xcodebuild archive \
-scheme analytics-library \
-sdk iphoneos \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/analytics-library.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Create XCFramework
xcodebuild -create-xcframework \
 -framework './build/analytics-library.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/analytics_library.framework' \
-framework './build/analytics-library.framework-iphoneos.xcarchive/Products/Library/Frameworks/analytics_library.framework' \
-output './build/analytics-library.xcframework'
