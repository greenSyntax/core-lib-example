rm -rf build

# For iOS Device
xcodebuild archive \
-scheme auth-library \
-sdk iphoneos \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/auth-library.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# For Simulators
xcodebuild archive \
-scheme auth-library \
-sdk iphoneos \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/auth-library.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Create XCFramework
xcodebuild -create-xcframework \
 -framework './build/auth-library.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/auth_library.framework' \
-framework './build/auth-library.framework-iphoneos.xcarchive/Products/Library/Frameworks/auth_library.framework' \
-output './build/auth-library.xcframework'
