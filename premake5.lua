project "Box2D"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "On"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}

	includedirs
	{
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "Configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "Configurations:Release"
		runtime "Release"
		symbols "On"

	filter "Configurations:Dist"
		runtime "Release"
		symbols "On"