# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
# ----------------------------------------------------------------------------
# Google Cardboard SDK Rules
# ----------------------------------------------------------------------------

# Keep all native methods so C++ can bind to them
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep the Cardboard and Google VR packages intact
-keep class com.google.cardboard.** { *; }
-keep class com.google.vr.** { *; }

# Keep all classes and members that are annotated to be used by the C++ NDK
-keep class com.google.vr.cardboard.annotations.UsedByNative
-keep @com.google.vr.cardboard.annotations.UsedByNative class *
-keepclassmembers class * {
    @com.google.vr.cardboard.annotations.UsedByNative *;
}

-keep class com.google.vr.cardboard.UsedByNative
-keep @com.google.vr.cardboard.UsedByNative class *
-keepclassmembers class * {
    @com.google.vr.cardboard.UsedByNative *;
}

# Keep Protocol Buffers (used by Cardboard for device profiles)
-keep class com.google.protobuf.** { *; }

# Suppress warnings for missing legacy classes in the pre-compiled AAR
-dontwarn com.google.vr.**
-dontwarn com.google.cardboard.**
