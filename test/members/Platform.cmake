# copied from geode's Platform.cmake lol

if (NOT DEFINED GEODE_TARGET_PLATFORM)
	if(APPLE)
		if(IOS)
			set(GEODE_TARGET_PLATFORM "iOS")
		else()
			set(GEODE_TARGET_PLATFORM "MacOS")
		endif()
	elseif(WIN32)
		set(GEODE_TARGET_PLATFORM "Win32")
	elseif(ANDROID)
		if (ANDROID_ABI STREQUAL "arm64-v8a")
			set(GEODE_TARGET_PLATFORM "Android64")
		elseif(ANDROID_ABI STREQUAL "armeabi-v7a")
			set(GEODE_TARGET_PLATFORM "Android32")
		endif()
	else()
		message(FATAL_ERROR "Unable to detect platform, please set GEODE_TARGET_PLATFORM in the root CMake file.")
	endif()
endif()

set(GEODE_TARGET_PLATFORM GEODE_TARGET_PLATFORM PARENT_SCOPE)