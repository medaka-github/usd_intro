//Maya ASCII 2025 scene
//Name: usd_ren_0010_anim_v0001.ma
//Last modified: Sun, Sep 08, 2024 08:54:23 PM
//Codeset: 932
file -rdi 1 -ns ":" -rfn "MoxRigRN" -typ "mayaAscii" "F:/Users/yamagishi/Dropbox/develop/usd_intro/030_render_workflow/assets/MoxRig/MoxRig.ma";
file -r -ns ":" -dr 1 -rfn "MoxRigRN" -typ "mayaAscii" "F:/Users/yamagishi/Dropbox/develop/usd_intro/030_render_workflow/assets/MoxRig/MoxRig.ma";
requires maya "2025";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.1.2";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.28.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202404240506-c155a58772";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "1B923427-4227-AEFE-C7FF-5EA71BD1914C";
createNode transform -s -n "persp";
	rename -uid "D495E6E9-45EB-297B-EECC-9191F41895E9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -302.03023098836883 198.74889642161142 308.13008662103272 ;
	setAttr ".r" -type "double3" -17.738352729606174 -49.400000000001633 -1.2218349302567406e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "662C4FA2-49DB-9383-6D44-A483F5DAF8DC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 458.63726515695907;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 22.756055906287664 90.768028259277344 7.1092045966390032 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "34B632E8-48C7-CBE1-21D8-2B8C51021A8B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "499A6BCC-43C9-C022-C4BE-098C8ADAF3C4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "26F5D6B5-4A71-88F8-58DC-84A1AEC3C9B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9DBE98E8-4A11-FA5F-CFA4-039C71CA4CE3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4DE2B56F-42B2-0A8C-E68B-92B682857D9E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B876FB51-44A3-6984-F7F5-60B5B1AF404F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pPlane1";
	rename -uid "9574A72F-4022-5301-57A9-E28C51E4D8D6";
	setAttr ".s" -type "double3" 728.69901108252839 728.69901108252839 728.69901108252839 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "90F876FA-44E5-023A-DCF0-D0A5E30C520B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9AA297AE-4343-F2D4-91F3-3184D902BE10";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F7B46E78-4202-1609-D08C-02B7C2CAAA35";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BED54DBA-4166-E4A4-182B-0DBDF90A55A2";
createNode displayLayerManager -n "layerManager";
	rename -uid "E9D48267-4706-8C69-892A-CF9F2EE7658B";
createNode displayLayer -n "defaultLayer";
	rename -uid "B9D0C7EE-4C61-20DC-3503-A5817742D935";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2FDC25B1-480B-7917-E1C5-0ABC1D8F9158";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "ACD839B7-48B1-AB1F-61BF-EF91A2872E67";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "6C50C625-47D5-FB07-24D8-7EB0DC40C4B9";
	setAttr ".version" -type "string" "5.4.1.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "9D7B8313-4D52-D004-6F96-FAA41CCF787C";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "76E7136F-4118-A589-8FC7-5298576CC482";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "DF6FC7E3-4738-1CE3-7E88-DFBE72C300E6";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "E15DE554-45AA-E96E-A07C-828DE2CE9EB4";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BFD5BBB9-455C-58FA-F435-62AF2FEF96E4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 771\n            -height 510\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 771\n            -height 509\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 771\n            -height 509\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1549\n            -height 1066\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1549\\n    -height 1066\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1549\\n    -height 1066\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EC7262D5-4BA7-3FDC-CF10-73BFC34713F3";
	setAttr ".b" -type "string" "playbackOptions -min 1001 -max 1048 -ast 1001 -aet 1048 ";
	setAttr ".st" 6;
createNode reference -n "MoxRigRN";
	rename -uid "C8AD377C-4FF0-7552-6C92-47B012E7DF94";
	setAttr -s 365 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"MoxRigRN"
		"MoxRigRN" 0
		"MoxRigRN" 395
		1 "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world" 
		"blendRigHeadwoldorient1" "blendRigHeadwoldorient1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		1 "|MoxRig|rig_All|gr_LeftFingers" "blendRigLeftFingerspoint1" "blendRigLeftFingerspoint1" 
		" -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		1 "|MoxRig|rig_All|gr_LeftFingers" "blendRigLeftFingersorient1" "blendRigLeftFingersorient1" 
		" -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		1 "|MoxRig|rig_All|gr_RightFingers" "blendRigRightFingerspoint1" "blendRigRightFingerspoint1" 
		" -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		1 "|MoxRig|rig_All|gr_RightFingers" "blendRigRightFingersorient1" "blendRigRightFingersorient1" 
		" -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world" 
		"blendRigHeadwoldorient1" " -k 1"
		2 "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand" "rotatePivotTranslate" 
		" -type \"double3\" 0 0 0"
		2 "|MoxRig|rig_All|gr_LeftFingers" "blendRigLeftFingerspoint1" " -k 1"
		2 "|MoxRig|rig_All|gr_LeftFingers" "blendRigLeftFingersorient1" " -k 1"
		2 "|MoxRig|rig_All|gr_RightFingers" "blendRigRightFingerspoint1" " -k 1"
		2 "|MoxRig|rig_All|gr_RightFingers" "blendRigRightFingersorient1" " -k 1"
		
		2 "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftLegUpv" "translate" " -type \"double3\" 0 0 0"
		
		2 "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftLegUpv" "translateX" " -av"
		2 "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftLegUpv" "translateY" " -av"
		2 "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftLegUpv" "translateZ" " -av"
		3 "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.constraintTranslateX" 
		"|MoxRig|rig_All|gr_RightFingers.translateX" ""
		3 "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.constraintTranslateY" 
		"|MoxRig|rig_All|gr_RightFingers.translateY" ""
		3 "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.constraintTranslateZ" 
		"|MoxRig|rig_All|gr_RightFingers.translateZ" ""
		3 "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.constraintRotateX" 
		"|MoxRig|rig_All|gr_RightFingers.rotateX" ""
		3 "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.constraintRotateY" 
		"|MoxRig|rig_All|gr_RightFingers.rotateY" ""
		3 "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.constraintRotateZ" 
		"|MoxRig|rig_All|gr_RightFingers.rotateZ" ""
		3 "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.constraintTranslateX" 
		"|MoxRig|rig_All|gr_LeftFingers.translateX" ""
		3 "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.constraintTranslateY" 
		"|MoxRig|rig_All|gr_LeftFingers.translateY" ""
		3 "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.constraintTranslateZ" 
		"|MoxRig|rig_All|gr_LeftFingers.translateZ" ""
		3 "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.constraintRotateX" 
		"|MoxRig|rig_All|gr_LeftFingers.rotateX" ""
		3 "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.constraintRotateY" 
		"|MoxRig|rig_All|gr_LeftFingers.rotateY" ""
		3 "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.constraintRotateZ" 
		"|MoxRig|rig_All|gr_LeftFingers.rotateZ" ""
		3 "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.constraintRotateX" 
		"|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world.rotateX" 
		""
		3 "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.constraintRotateY" 
		"|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world.rotateY" 
		""
		3 "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.constraintRotateZ" 
		"|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world.rotateZ" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.Right_Arm_IK_FK" "MoxRigRN.placeHolderList[1]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.Left_ArmIK_FK" "MoxRigRN.placeHolderList[2]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.RightLegIK_FK" "MoxRigRN.placeHolderList[3]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.LeftLegIK_FK" "MoxRigRN.placeHolderList[4]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.rotateX" "MoxRigRN.placeHolderList[5]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.rotateY" "MoxRigRN.placeHolderList[6]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.rotateZ" "MoxRigRN.placeHolderList[7]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.translateX" "MoxRigRN.placeHolderList[8]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.translateY" "MoxRigRN.placeHolderList[9]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All.translateZ" "MoxRigRN.placeHolderList[10]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG.translateX" "MoxRigRN.placeHolderList[11]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG.translateY" "MoxRigRN.placeHolderList[12]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG.translateZ" "MoxRigRN.placeHolderList[13]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG.rotateX" "MoxRigRN.placeHolderList[14]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG.rotateY" "MoxRigRN.placeHolderList[15]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG.rotateZ" "MoxRigRN.placeHolderList[16]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine.rotateX" "MoxRigRN.placeHolderList[17]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine.rotateY" "MoxRigRN.placeHolderList[18]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine.rotateZ" "MoxRigRN.placeHolderList[19]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1.rotateX" 
		"MoxRigRN.placeHolderList[20]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1.rotateY" 
		"MoxRigRN.placeHolderList[21]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1.rotateZ" 
		"MoxRigRN.placeHolderList[22]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder.rotateX" 
		"MoxRigRN.placeHolderList[23]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder.rotateY" 
		"MoxRigRN.placeHolderList[24]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder.rotateZ" 
		"MoxRigRN.placeHolderList[25]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder.scaleX" 
		"MoxRigRN.placeHolderList[26]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder.scaleY" 
		"MoxRigRN.placeHolderList[27]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder.scaleZ" 
		"MoxRigRN.placeHolderList[28]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder.visibility" 
		"MoxRigRN.placeHolderList[29]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[30]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.target[0].targetOffsetTranslateX" 
		"MoxRigRN.placeHolderList[31]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.target[0].targetOffsetTranslateY" 
		"MoxRigRN.placeHolderList[32]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"MoxRigRN.placeHolderList[33]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.target[0].targetOffsetRotateX" 
		"MoxRigRN.placeHolderList[34]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.target[0].targetOffsetRotateY" 
		"MoxRigRN.placeHolderList[35]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.target[0].targetOffsetRotateZ" 
		"MoxRigRN.placeHolderList[36]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.Mox_RightShoulderW0" 
		"MoxRigRN.placeHolderList[37]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.interpType" 
		"MoxRigRN.placeHolderList[38]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.rotationDecompositionTargetX" 
		"MoxRigRN.placeHolderList[39]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.rotationDecompositionTargetY" 
		"MoxRigRN.placeHolderList[40]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_RightShoulder|lo_RigthShoulder|lo_RigthShoulder_parentConstraint1.rotationDecompositionTargetZ" 
		"MoxRigRN.placeHolderList[41]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder.rotateX" 
		"MoxRigRN.placeHolderList[42]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder.rotateY" 
		"MoxRigRN.placeHolderList[43]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder.rotateZ" 
		"MoxRigRN.placeHolderList[44]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder.scaleX" 
		"MoxRigRN.placeHolderList[45]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder.scaleY" 
		"MoxRigRN.placeHolderList[46]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder.scaleZ" 
		"MoxRigRN.placeHolderList[47]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder.visibility" 
		"MoxRigRN.placeHolderList[48]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[49]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.target[0].targetOffsetTranslateX" 
		"MoxRigRN.placeHolderList[50]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.target[0].targetOffsetTranslateY" 
		"MoxRigRN.placeHolderList[51]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"MoxRigRN.placeHolderList[52]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.target[0].targetOffsetRotateX" 
		"MoxRigRN.placeHolderList[53]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.target[0].targetOffsetRotateY" 
		"MoxRigRN.placeHolderList[54]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.target[0].targetOffsetRotateZ" 
		"MoxRigRN.placeHolderList[55]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.Mox_LeftShoulderW0" 
		"MoxRigRN.placeHolderList[56]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.interpType" 
		"MoxRigRN.placeHolderList[57]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.rotationDecompositionTargetX" 
		"MoxRigRN.placeHolderList[58]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.rotationDecompositionTargetY" 
		"MoxRigRN.placeHolderList[59]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_LeftShoulder|lo_LeftShoulder|lo_LeftShoulder_parentConstraint1.rotationDecompositionTargetZ" 
		"MoxRigRN.placeHolderList[60]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck.rotateX" 
		"MoxRigRN.placeHolderList[61]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck.rotateY" 
		"MoxRigRN.placeHolderList[62]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck.rotateZ" 
		"MoxRigRN.placeHolderList[63]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world.rotateX" 
		"MoxRigRN.placeHolderList[64]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world.rotateY" 
		"MoxRigRN.placeHolderList[65]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world.rotateZ" 
		"MoxRigRN.placeHolderList[66]" ""
		5 3 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world.blendRigHeadwoldorient1" 
		"MoxRigRN.placeHolderList[67]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world.blendRigHeadwoldorient1" 
		"MoxRigRN.placeHolderList[68]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head.rotateX" 
		"MoxRigRN.placeHolderList[69]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head.rotateY" 
		"MoxRigRN.placeHolderList[70]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head.rotateZ" 
		"MoxRigRN.placeHolderList[71]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[72]" ""
		5 3 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.constraintRotateX" 
		"MoxRigRN.placeHolderList[73]" "group_Head_world.rx"
		5 3 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.constraintRotateY" 
		"MoxRigRN.placeHolderList[74]" "group_Head_world.ry"
		5 3 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.constraintRotateZ" 
		"MoxRigRN.placeHolderList[75]" "group_Head_world.rz"
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[76]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[77]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[78]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[79]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|rig_Neck|group_Head_world|rig_Head_wold_orientConstraint1.interpType" 
		"MoxRigRN.placeHolderList[80]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm.rotateX" 
		"MoxRigRN.placeHolderList[81]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm.rotateY" 
		"MoxRigRN.placeHolderList[82]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm.rotateZ" 
		"MoxRigRN.placeHolderList[83]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm.visibility" 
		"MoxRigRN.placeHolderList[84]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightForeArm.rotateX" 
		"MoxRigRN.placeHolderList[85]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightForeArm.rotateY" 
		"MoxRigRN.placeHolderList[86]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightForeArm|rig_Mox_RightHand.rotateX" 
		"MoxRigRN.placeHolderList[87]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightForeArm|rig_Mox_RightHand.rotateY" 
		"MoxRigRN.placeHolderList[88]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightForeArm|rig_Mox_RightHand.rotateZ" 
		"MoxRigRN.placeHolderList[89]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightArm_pointConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[90]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightArm_pointConstraint1.lo_RigthShoulderW0" 
		"MoxRigRN.placeHolderList[91]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightArm_pointConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[92]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightArm_pointConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[93]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_RightArm|rig_Mox_RightArm|rig_Mox_RightArm_pointConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[94]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm.rotateX" 
		"MoxRigRN.placeHolderList[95]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm.rotateY" 
		"MoxRigRN.placeHolderList[96]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm.rotateZ" 
		"MoxRigRN.placeHolderList[97]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm.visibility" 
		"MoxRigRN.placeHolderList[98]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftForeArm.rotateX" 
		"MoxRigRN.placeHolderList[99]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftForeArm.rotateY" 
		"MoxRigRN.placeHolderList[100]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftForeArm|rig_Mox_LeftHand.rotateX" 
		"MoxRigRN.placeHolderList[101]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftForeArm|rig_Mox_LeftHand.rotateY" 
		"MoxRigRN.placeHolderList[102]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftForeArm|rig_Mox_LeftHand.rotateZ" 
		"MoxRigRN.placeHolderList[103]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftArm_pointConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[104]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftArm_pointConstraint1.lo_LeftShoulderW0" 
		"MoxRigRN.placeHolderList[105]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftArm_pointConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[106]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftArm_pointConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[107]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Spine|rig_Spine1|gr_FK_LeftArm|rig_Mox_LeftArm|rig_Mox_LeftArm_pointConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[108]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips.rotateX" "MoxRigRN.placeHolderList[109]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips.rotateY" "MoxRigRN.placeHolderList[110]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips.rotateZ" "MoxRigRN.placeHolderList[111]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg.rotateX" 
		"MoxRigRN.placeHolderList[112]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg.rotateY" 
		"MoxRigRN.placeHolderList[113]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg.rotateZ" 
		"MoxRigRN.placeHolderList[114]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg.visibility" 
		"MoxRigRN.placeHolderList[115]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg|rig_Mox_LeftLeg.rotateX" 
		"MoxRigRN.placeHolderList[116]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg|rig_Mox_LeftLeg.visibility" 
		"MoxRigRN.placeHolderList[117]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg|rig_Mox_LeftLeg|rig_Mox_LeftFoot.rotateX" 
		"MoxRigRN.placeHolderList[118]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg|rig_Mox_LeftLeg|rig_Mox_LeftFoot.rotateY" 
		"MoxRigRN.placeHolderList[119]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg|rig_Mox_LeftLeg|rig_Mox_LeftFoot.rotateZ" 
		"MoxRigRN.placeHolderList[120]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg|rig_Mox_LeftLeg|rig_Mox_LeftFoot|rig_Mox_LeftToeBase.rotateX" 
		"MoxRigRN.placeHolderList[121]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg|rig_Mox_LeftLeg|rig_Mox_LeftFoot|rig_Mox_LeftToeBase.rotateY" 
		"MoxRigRN.placeHolderList[122]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_LeftLeg|rig_Mox_LeftUpLeg|rig_Mox_LeftLeg|rig_Mox_LeftFoot|rig_Mox_LeftToeBase.rotateZ" 
		"MoxRigRN.placeHolderList[123]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg.rotateX" 
		"MoxRigRN.placeHolderList[124]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg.rotateY" 
		"MoxRigRN.placeHolderList[125]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg.rotateZ" 
		"MoxRigRN.placeHolderList[126]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg.visibility" 
		"MoxRigRN.placeHolderList[127]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg|rig_Mox_RightLeg.rotateX" 
		"MoxRigRN.placeHolderList[128]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg|rig_Mox_RightLeg.visibility" 
		"MoxRigRN.placeHolderList[129]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg|rig_Mox_RightLeg|rig_Mox_RightFoot.rotateX" 
		"MoxRigRN.placeHolderList[130]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg|rig_Mox_RightLeg|rig_Mox_RightFoot.rotateY" 
		"MoxRigRN.placeHolderList[131]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg|rig_Mox_RightLeg|rig_Mox_RightFoot.rotateZ" 
		"MoxRigRN.placeHolderList[132]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg|rig_Mox_RightLeg|rig_Mox_RightFoot|rig_Mox_RightToeBase.rotateX" 
		"MoxRigRN.placeHolderList[133]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg|rig_Mox_RightLeg|rig_Mox_RightFoot|rig_Mox_RightToeBase.rotateY" 
		"MoxRigRN.placeHolderList[134]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|rig_Hips|gr_FK_RightLeg|rig_Mox_RightUpLeg|rig_Mox_RightLeg|rig_Mox_RightFoot|rig_Mox_RightToeBase.rotateZ" 
		"MoxRigRN.placeHolderList[135]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand.rotateX" 
		"MoxRigRN.placeHolderList[136]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand.rotateY" 
		"MoxRigRN.placeHolderList[137]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand.rotateZ" 
		"MoxRigRN.placeHolderList[138]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand.visibility" 
		"MoxRigRN.placeHolderList[139]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand.translateX" 
		"MoxRigRN.placeHolderList[140]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand.translateY" 
		"MoxRigRN.placeHolderList[141]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand.translateZ" 
		"MoxRigRN.placeHolderList[142]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand.visibility" 
		"MoxRigRN.placeHolderList[143]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand.offset" 
		"MoxRigRN.placeHolderList[144]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand.roll" 
		"MoxRigRN.placeHolderList[145]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand.twist" 
		"MoxRigRN.placeHolderList[146]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand|ik_LeftHand_poleVectorConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[147]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand|ik_LeftHand_poleVectorConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[148]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand|ik_LeftHand_poleVectorConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[149]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand|ik_LeftHand_poleVectorConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[150]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftHand|ik_LeftHand|ik_LeftHand_poleVectorConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[151]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftArmUpv.translateX" 
		"MoxRigRN.placeHolderList[152]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftArmUpv.translateY" 
		"MoxRigRN.placeHolderList[153]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftArmUpv.translateZ" 
		"MoxRigRN.placeHolderList[154]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_LeftArm|rig_LeftArmUpv.visibility" 
		"MoxRigRN.placeHolderList[155]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightArmUpv.translateX" 
		"MoxRigRN.placeHolderList[156]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightArmUpv.translateY" 
		"MoxRigRN.placeHolderList[157]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightArmUpv.translateZ" 
		"MoxRigRN.placeHolderList[158]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightArmUpv.visibility" 
		"MoxRigRN.placeHolderList[159]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand.rotateX" 
		"MoxRigRN.placeHolderList[160]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand.rotateY" 
		"MoxRigRN.placeHolderList[161]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand.rotateZ" 
		"MoxRigRN.placeHolderList[162]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand.visibility" 
		"MoxRigRN.placeHolderList[163]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand.translateX" 
		"MoxRigRN.placeHolderList[164]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand.translateY" 
		"MoxRigRN.placeHolderList[165]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand.translateZ" 
		"MoxRigRN.placeHolderList[166]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand.visibility" 
		"MoxRigRN.placeHolderList[167]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand.offset" 
		"MoxRigRN.placeHolderList[168]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand.roll" 
		"MoxRigRN.placeHolderList[169]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand.twist" 
		"MoxRigRN.placeHolderList[170]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand|ik_RightHand_poleVectorConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[171]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand|ik_RightHand_poleVectorConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[172]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand|ik_RightHand_poleVectorConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[173]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand|ik_RightHand_poleVectorConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[174]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|rig_COG|gr_RightArm|rig_RightHand|ik_RightHand|ik_RightHand_poleVectorConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[175]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.translateX" "MoxRigRN.placeHolderList[176]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.translateY" "MoxRigRN.placeHolderList[177]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.translateZ" "MoxRigRN.placeHolderList[178]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.rotateX" "MoxRigRN.placeHolderList[179]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.rotateY" "MoxRigRN.placeHolderList[180]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.rotateZ" "MoxRigRN.placeHolderList[181]" 
		""
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.blendRigLeftFingerspoint1" 
		"MoxRigRN.placeHolderList[182]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.blendRigLeftFingerspoint1" 
		"MoxRigRN.placeHolderList[183]" ""
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.blendRigLeftFingersorient1" 
		"MoxRigRN.placeHolderList[184]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers.blendRigLeftFingersorient1" 
		"MoxRigRN.placeHolderList[185]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1.rotateX" 
		"MoxRigRN.placeHolderList[186]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1.rotateY" 
		"MoxRigRN.placeHolderList[187]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1.rotateZ" 
		"MoxRigRN.placeHolderList[188]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1|rig_LeftHandPinky2.rotateX" 
		"MoxRigRN.placeHolderList[189]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1|rig_LeftHandPinky2.rotateY" 
		"MoxRigRN.placeHolderList[190]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1|rig_LeftHandPinky2.rotateZ" 
		"MoxRigRN.placeHolderList[191]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1|rig_LeftHandPinky2|rig_LeftHandPinky3.rotateX" 
		"MoxRigRN.placeHolderList[192]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1|rig_LeftHandPinky2|rig_LeftHandPinky3.rotateY" 
		"MoxRigRN.placeHolderList[193]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandPinky1|rig_LeftHandPinky2|rig_LeftHandPinky3.rotateZ" 
		"MoxRigRN.placeHolderList[194]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1.rotateX" 
		"MoxRigRN.placeHolderList[195]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1.rotateY" 
		"MoxRigRN.placeHolderList[196]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1.rotateZ" 
		"MoxRigRN.placeHolderList[197]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1|rig_LeftHandRing2.rotateX" 
		"MoxRigRN.placeHolderList[198]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1|rig_LeftHandRing2.rotateY" 
		"MoxRigRN.placeHolderList[199]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1|rig_LeftHandRing2.rotateZ" 
		"MoxRigRN.placeHolderList[200]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1|rig_LeftHandRing2|rig_LeftHandRing3.rotateX" 
		"MoxRigRN.placeHolderList[201]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1|rig_LeftHandRing2|rig_LeftHandRing3.rotateY" 
		"MoxRigRN.placeHolderList[202]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandRing1|rig_LeftHandRing2|rig_LeftHandRing3.rotateZ" 
		"MoxRigRN.placeHolderList[203]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1.rotateX" 
		"MoxRigRN.placeHolderList[204]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1.rotateY" 
		"MoxRigRN.placeHolderList[205]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1.rotateZ" 
		"MoxRigRN.placeHolderList[206]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1|rig_LeftHandMiddle2.rotateX" 
		"MoxRigRN.placeHolderList[207]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1|rig_LeftHandMiddle2.rotateY" 
		"MoxRigRN.placeHolderList[208]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1|rig_LeftHandMiddle2.rotateZ" 
		"MoxRigRN.placeHolderList[209]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1|rig_LeftHandMiddle2|rig_LeftHandMiddle3.rotateX" 
		"MoxRigRN.placeHolderList[210]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1|rig_LeftHandMiddle2|rig_LeftHandMiddle3.rotateY" 
		"MoxRigRN.placeHolderList[211]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandMiddle1|rig_LeftHandMiddle2|rig_LeftHandMiddle3.rotateZ" 
		"MoxRigRN.placeHolderList[212]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1.rotateX" 
		"MoxRigRN.placeHolderList[213]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1.rotateY" 
		"MoxRigRN.placeHolderList[214]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1.rotateZ" 
		"MoxRigRN.placeHolderList[215]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1|rig_LeftHandIndex2.rotateX" 
		"MoxRigRN.placeHolderList[216]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1|rig_LeftHandIndex2.rotateY" 
		"MoxRigRN.placeHolderList[217]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1|rig_LeftHandIndex2.rotateZ" 
		"MoxRigRN.placeHolderList[218]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1|rig_LeftHandIndex2|rig_LeftHandIndex3.rotateX" 
		"MoxRigRN.placeHolderList[219]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1|rig_LeftHandIndex2|rig_LeftHandIndex3.rotateY" 
		"MoxRigRN.placeHolderList[220]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandIndex1|rig_LeftHandIndex2|rig_LeftHandIndex3.rotateZ" 
		"MoxRigRN.placeHolderList[221]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1.rotateX" 
		"MoxRigRN.placeHolderList[222]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1.rotateY" 
		"MoxRigRN.placeHolderList[223]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1.rotateZ" 
		"MoxRigRN.placeHolderList[224]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1|rig_LeftHandThumb2.rotateX" 
		"MoxRigRN.placeHolderList[225]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1|rig_LeftHandThumb2.rotateY" 
		"MoxRigRN.placeHolderList[226]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1|rig_LeftHandThumb2.rotateZ" 
		"MoxRigRN.placeHolderList[227]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1|rig_LeftHandThumb2|rig_LeftHandThumb3.rotateX" 
		"MoxRigRN.placeHolderList[228]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1|rig_LeftHandThumb2|rig_LeftHandThumb3.rotateY" 
		"MoxRigRN.placeHolderList[229]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftHandThumb1|rig_LeftHandThumb2|rig_LeftHandThumb3.rotateZ" 
		"MoxRigRN.placeHolderList[230]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[231]" ""
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.constraintTranslateX" 
		"MoxRigRN.placeHolderList[232]" "gr_LeftFingers.tx"
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.constraintTranslateY" 
		"MoxRigRN.placeHolderList[233]" "gr_LeftFingers.ty"
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.constraintTranslateZ" 
		"MoxRigRN.placeHolderList[234]" "gr_LeftFingers.tz"
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[235]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[236]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[237]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_pointConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[238]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[239]" ""
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.constraintRotateX" 
		"MoxRigRN.placeHolderList[240]" "gr_LeftFingers.rx"
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.constraintRotateY" 
		"MoxRigRN.placeHolderList[241]" "gr_LeftFingers.ry"
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.constraintRotateZ" 
		"MoxRigRN.placeHolderList[242]" "gr_LeftFingers.rz"
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[243]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[244]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[245]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[246]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_LeftFingers|rig_LeftFingers_orientConstraint1.interpType" 
		"MoxRigRN.placeHolderList[247]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.translateX" "MoxRigRN.placeHolderList[248]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.translateY" "MoxRigRN.placeHolderList[249]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.translateZ" "MoxRigRN.placeHolderList[250]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.rotateX" "MoxRigRN.placeHolderList[251]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.rotateY" "MoxRigRN.placeHolderList[252]" 
		""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.rotateZ" "MoxRigRN.placeHolderList[253]" 
		""
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.blendRigRightFingerspoint1" 
		"MoxRigRN.placeHolderList[254]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.blendRigRightFingerspoint1" 
		"MoxRigRN.placeHolderList[255]" ""
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.blendRigRightFingersorient1" 
		"MoxRigRN.placeHolderList[256]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers.blendRigRightFingersorient1" 
		"MoxRigRN.placeHolderList[257]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1.rotateX" 
		"MoxRigRN.placeHolderList[258]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1.rotateY" 
		"MoxRigRN.placeHolderList[259]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1.rotateZ" 
		"MoxRigRN.placeHolderList[260]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1|rig_RightHandThumb2.rotateX" 
		"MoxRigRN.placeHolderList[261]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1|rig_RightHandThumb2.rotateY" 
		"MoxRigRN.placeHolderList[262]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1|rig_RightHandThumb2.rotateZ" 
		"MoxRigRN.placeHolderList[263]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1|rig_RightHandThumb2|rig_RightHandThumb3.rotateX" 
		"MoxRigRN.placeHolderList[264]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1|rig_RightHandThumb2|rig_RightHandThumb3.rotateY" 
		"MoxRigRN.placeHolderList[265]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandThumb1|rig_RightHandThumb2|rig_RightHandThumb3.rotateZ" 
		"MoxRigRN.placeHolderList[266]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1.rotateX" 
		"MoxRigRN.placeHolderList[267]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1.rotateY" 
		"MoxRigRN.placeHolderList[268]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1.rotateZ" 
		"MoxRigRN.placeHolderList[269]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1|rig_RightHandIndex2.rotateX" 
		"MoxRigRN.placeHolderList[270]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1|rig_RightHandIndex2.rotateY" 
		"MoxRigRN.placeHolderList[271]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1|rig_RightHandIndex2.rotateZ" 
		"MoxRigRN.placeHolderList[272]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1|rig_RightHandIndex2|rig_RightHandIndex3.rotateX" 
		"MoxRigRN.placeHolderList[273]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1|rig_RightHandIndex2|rig_RightHandIndex3.rotateY" 
		"MoxRigRN.placeHolderList[274]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandIndex1|rig_RightHandIndex2|rig_RightHandIndex3.rotateZ" 
		"MoxRigRN.placeHolderList[275]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1.rotateX" 
		"MoxRigRN.placeHolderList[276]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1.rotateY" 
		"MoxRigRN.placeHolderList[277]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1.rotateZ" 
		"MoxRigRN.placeHolderList[278]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1|rig_RightHandMiddle2.rotateX" 
		"MoxRigRN.placeHolderList[279]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1|rig_RightHandMiddle2.rotateY" 
		"MoxRigRN.placeHolderList[280]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1|rig_RightHandMiddle2.rotateZ" 
		"MoxRigRN.placeHolderList[281]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1|rig_RightHandMiddle2|rig_RightHandMiddle3.rotateX" 
		"MoxRigRN.placeHolderList[282]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1|rig_RightHandMiddle2|rig_RightHandMiddle3.rotateY" 
		"MoxRigRN.placeHolderList[283]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandMiddle1|rig_RightHandMiddle2|rig_RightHandMiddle3.rotateZ" 
		"MoxRigRN.placeHolderList[284]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1.rotateX" 
		"MoxRigRN.placeHolderList[285]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1.rotateY" 
		"MoxRigRN.placeHolderList[286]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1.rotateZ" 
		"MoxRigRN.placeHolderList[287]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1|rig_RightHandRing2.rotateX" 
		"MoxRigRN.placeHolderList[288]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1|rig_RightHandRing2.rotateY" 
		"MoxRigRN.placeHolderList[289]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1|rig_RightHandRing2.rotateZ" 
		"MoxRigRN.placeHolderList[290]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1|rig_RightHandRing2|rig_RightHandRing3.rotateX" 
		"MoxRigRN.placeHolderList[291]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1|rig_RightHandRing2|rig_RightHandRing3.rotateY" 
		"MoxRigRN.placeHolderList[292]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandRing1|rig_RightHandRing2|rig_RightHandRing3.rotateZ" 
		"MoxRigRN.placeHolderList[293]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1.rotateX" 
		"MoxRigRN.placeHolderList[294]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1.rotateY" 
		"MoxRigRN.placeHolderList[295]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1.rotateZ" 
		"MoxRigRN.placeHolderList[296]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1|rig_RightHandPinky2.rotateX" 
		"MoxRigRN.placeHolderList[297]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1|rig_RightHandPinky2.rotateY" 
		"MoxRigRN.placeHolderList[298]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1|rig_RightHandPinky2.rotateZ" 
		"MoxRigRN.placeHolderList[299]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1|rig_RightHandPinky2|rig_RightHandPinky3.rotateX" 
		"MoxRigRN.placeHolderList[300]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1|rig_RightHandPinky2|rig_RightHandPinky3.rotateY" 
		"MoxRigRN.placeHolderList[301]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightHandPinky1|rig_RightHandPinky2|rig_RightHandPinky3.rotateZ" 
		"MoxRigRN.placeHolderList[302]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[303]" ""
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.constraintTranslateX" 
		"MoxRigRN.placeHolderList[304]" "gr_RightFingers.tx"
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.constraintTranslateY" 
		"MoxRigRN.placeHolderList[305]" "gr_RightFingers.ty"
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.constraintTranslateZ" 
		"MoxRigRN.placeHolderList[306]" "gr_RightFingers.tz"
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[307]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[308]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[309]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_pointConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[310]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[311]" ""
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.constraintRotateX" 
		"MoxRigRN.placeHolderList[312]" "gr_RightFingers.rx"
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.constraintRotateY" 
		"MoxRigRN.placeHolderList[313]" "gr_RightFingers.ry"
		5 3 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.constraintRotateZ" 
		"MoxRigRN.placeHolderList[314]" "gr_RightFingers.rz"
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[315]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[316]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[317]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[318]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_RightFingers|rig_RightFingers_orientConstraint1.interpType" 
		"MoxRigRN.placeHolderList[319]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftLegUpv.translateX" 
		"MoxRigRN.placeHolderList[320]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftLegUpv.translateY" 
		"MoxRigRN.placeHolderList[321]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftLegUpv.translateZ" 
		"MoxRigRN.placeHolderList[322]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftLegUpv.visibility" 
		"MoxRigRN.placeHolderList[323]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot.rotateX" 
		"MoxRigRN.placeHolderList[324]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot.rotateY" 
		"MoxRigRN.placeHolderList[325]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot.rotateZ" 
		"MoxRigRN.placeHolderList[326]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot.visibility" 
		"MoxRigRN.placeHolderList[327]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot.translateX" 
		"MoxRigRN.placeHolderList[328]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot.translateY" 
		"MoxRigRN.placeHolderList[329]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot.translateZ" 
		"MoxRigRN.placeHolderList[330]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|rig_LeftToeBase.rotateX" 
		"MoxRigRN.placeHolderList[331]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|rig_LeftToeBase.rotateY" 
		"MoxRigRN.placeHolderList[332]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|rig_LeftToeBase.rotateZ" 
		"MoxRigRN.placeHolderList[333]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot.visibility" 
		"MoxRigRN.placeHolderList[334]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot.offset" 
		"MoxRigRN.placeHolderList[335]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot.roll" 
		"MoxRigRN.placeHolderList[336]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot.twist" 
		"MoxRigRN.placeHolderList[337]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot|ik_LeftFoot_poleVectorConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[338]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot|ik_LeftFoot_poleVectorConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[339]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot|ik_LeftFoot_poleVectorConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[340]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot|ik_LeftFoot_poleVectorConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[341]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_LeftLeg|rig_LeftFoot|ik_LeftFoot|ik_LeftFoot_poleVectorConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[342]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightLegUpv.translateX" 
		"MoxRigRN.placeHolderList[343]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightLegUpv.translateY" 
		"MoxRigRN.placeHolderList[344]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightLegUpv.translateZ" 
		"MoxRigRN.placeHolderList[345]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightLegUpv.visibility" 
		"MoxRigRN.placeHolderList[346]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot.rotateX" 
		"MoxRigRN.placeHolderList[347]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot.rotateY" 
		"MoxRigRN.placeHolderList[348]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot.rotateZ" 
		"MoxRigRN.placeHolderList[349]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot.visibility" 
		"MoxRigRN.placeHolderList[350]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot.translateX" 
		"MoxRigRN.placeHolderList[351]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot.translateY" 
		"MoxRigRN.placeHolderList[352]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot.translateZ" 
		"MoxRigRN.placeHolderList[353]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|rig_RightToeBase.rotateX" 
		"MoxRigRN.placeHolderList[354]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|rig_RightToeBase.rotateY" 
		"MoxRigRN.placeHolderList[355]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|rig_RightToeBase.rotateZ" 
		"MoxRigRN.placeHolderList[356]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot.visibility" 
		"MoxRigRN.placeHolderList[357]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot.offset" 
		"MoxRigRN.placeHolderList[358]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot.roll" 
		"MoxRigRN.placeHolderList[359]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot.twist" 
		"MoxRigRN.placeHolderList[360]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot|ik_RightFoot_poleVectorConstraint1.nodeState" 
		"MoxRigRN.placeHolderList[361]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot|ik_RightFoot_poleVectorConstraint1.target[0].targetWeight" 
		"MoxRigRN.placeHolderList[362]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot|ik_RightFoot_poleVectorConstraint1.offsetX" 
		"MoxRigRN.placeHolderList[363]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot|ik_RightFoot_poleVectorConstraint1.offsetY" 
		"MoxRigRN.placeHolderList[364]" ""
		5 4 "MoxRigRN" "|MoxRig|rig_All|gr_IK_RightLeg|rig_RightFoot|ik_RightFoot|ik_RightFoot_poleVectorConstraint1.offsetZ" 
		"MoxRigRN.placeHolderList[365]" "";
lockNode -l 1 ;
createNode polyPlane -n "polyPlane1";
	rename -uid "337870B2-4E27-46DD-D87D-A6890E978260";
	setAttr ".cuv" 2;
createNode animCurveTU -n "lo_LeftShoulder_scaleX";
	rename -uid "9D9878CA-40FE-AA6F-B1C8-A88F680B24DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTU -n "lo_LeftShoulder_scaleY";
	rename -uid "847F3AF9-4246-2641-BA4D-BB8DE471AC1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTU -n "lo_LeftShoulder_scaleZ";
	rename -uid "A597C5ED-4449-A8C6-F373-57AD879F69B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTU -n "lo_RigthShoulder_scaleX";
	rename -uid "0F6F89A3-4F9A-5A63-5B46-DE935B2CA567";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTU -n "lo_RigthShoulder_scaleY";
	rename -uid "471A0F41-42AF-5DC6-AAF8-25AEED0CE62D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTU -n "lo_RigthShoulder_scaleZ";
	rename -uid "AD08DB3D-4F98-E78A-D493-DA847D15B723";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTL -n "rig_All_translateX";
	rename -uid "67CA9F90-4565-F95A-B4A7-3AB76B5A87CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_All_translateY";
	rename -uid "2E8EEEC7-483C-F50E-2122-CF8514723AF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_All_translateZ";
	rename -uid "BAE3787B-4C41-B4C5-EE6B-5A9CFCD48CFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_All_rotateX";
	rename -uid "59204EC1-45F1-61BC-D33A-7F98E6E381F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_All_rotateY";
	rename -uid "F3A89BA6-4099-DFE9-8866-BE8BC8708CBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_All_rotateZ";
	rename -uid "F337292B-4FE3-7059-B608-1DB9DFA60AB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_All_Right_Arm_IK_FK";
	rename -uid "01D02674-4DF6-6F00-F99C-9BA97B2091C4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_All_Left_ArmIK_FK";
	rename -uid "3080E127-4B9C-1EB9-1842-768DBFB8E387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_All_RightLegIK_FK";
	rename -uid "D637C3E4-4DF8-266B-D7FC-3ABCC750A0F6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_All_LeftLegIK_FK";
	rename -uid "BB0F73AC-4280-3F34-4AEE-22ACEDAC42F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_COG_translateX";
	rename -uid "3FC978DA-48A3-9ED0-B394-11B3E6DE9BD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 0 1048 0;
createNode animCurveTL -n "rig_COG_translateY";
	rename -uid "DF756719-4721-042B-873D-FEB1E6394085";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 -10.564157136490422 1026 -27.187711198365506
		 1048 -11.671149567796093;
createNode animCurveTL -n "rig_COG_translateZ";
	rename -uid "D97724AB-452A-8FBA-4F08-4284F9EB78C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 4.2696087394026563 1026 37.736582571015958
		 1048 2.909661093552387;
createNode animCurveTA -n "rig_COG_rotateX";
	rename -uid "E8D400E2-4136-0BC7-EE08-729D99208CA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 0 1048 0;
createNode animCurveTA -n "rig_COG_rotateY";
	rename -uid "E757981C-4887-3D57-D5CD-39B41DEE2201";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 0 1048 0;
createNode animCurveTA -n "rig_COG_rotateZ";
	rename -uid "9DCDD416-4C43-717F-8E9C-B39E085CA730";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 0 1048 0;
createNode animCurveTA -n "rig_Spine_rotateX";
	rename -uid "5A991481-4454-8CA7-3CDC-11AFF6A2B0EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Spine_rotateY";
	rename -uid "09DA9B32-4617-B046-C8EC-98842239E681";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Spine_rotateZ";
	rename -uid "2C894BE2-4922-1BD4-505F-F1A2A827382A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Spine1_rotateX";
	rename -uid "043A1690-45BA-5A27-B4F4-28A5E3973C88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Spine1_rotateY";
	rename -uid "C9625EDA-4AAC-F988-2234-A2856BECD521";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Spine1_rotateZ";
	rename -uid "946C8B8F-4C55-3E6B-77C3-519E4C9208C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightShoulder_rotateX";
	rename -uid "04243B4C-4FD0-B1B4-E8F9-A0BC50480FB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightShoulder_rotateY";
	rename -uid "F4A7CD15-4949-7632-6242-F189E9B9F5E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightShoulder_rotateZ";
	rename -uid "2B7EB364-4332-779A-5F5B-1AA86321C49C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "lo_RigthShoulder_visibility";
	rename -uid "D775F101-4455-8809-3968-7B9249D88E0D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "lo_RigthShoulder_parentConstraint1_nodeState";
	rename -uid "450907DB-42CE-79EE-1984-FD81319A937F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetTranslateX";
	rename -uid "17EF381C-4D6D-6A70-CDC4-CAA557FF816F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -12.861538953044374 1001 -12.861538953044374;
createNode animCurveTL -n "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetTranslateY";
	rename -uid "AA40DA04-4997-51D5-D1AC-079B0E465837";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.00013421398853097344 1001 0.00013421398853097344;
createNode animCurveTL -n "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetTranslateZ";
	rename -uid "E4CA3339-458A-F891-DDD8-5A89469A4273";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetRotateX";
	rename -uid "ECA7F400-4942-AF12-A36B-7DAA5BBD613D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetRotateY";
	rename -uid "21ECCE65-434F-769C-FF7C-908B7C32DF82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetRotateZ";
	rename -uid "0DD18347-475C-C546-41F3-6CAE9D0BFAF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "lo_RigthShoulder_parentConstraint1_interpType";
	rename -uid "8C57EE94-46A2-A9D0-8B45-0C99991304AB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "lo_RigthShoulder_parentConstraint1_rotationDecompositionTargetX";
	rename -uid "D513E541-4B21-358F-4549-B5A92F1312BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "lo_RigthShoulder_parentConstraint1_rotationDecompositionTargetY";
	rename -uid "67FF7FBA-4049-1731-7812-698CC570E32C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "lo_RigthShoulder_parentConstraint1_rotationDecompositionTargetZ";
	rename -uid "4CCDD685-4F15-7D52-EAD5-1AAB96BB3BA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "lo_RigthShoulder_parentConstraint1_Mox_RightShoulderW0";
	rename -uid "4EC759E9-4C83-8797-0F8F-59AAFD82CC63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTA -n "rig_LeftShoulder_rotateX";
	rename -uid "1B553BA5-4CA8-7D74-9086-52992192B0C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftShoulder_rotateY";
	rename -uid "D5D5C946-4465-8490-E048-21B0851A75E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftShoulder_rotateZ";
	rename -uid "AA9ACB0F-4C14-5B4B-0894-5BBCE6F3F88D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "lo_LeftShoulder_visibility";
	rename -uid "AA344C72-4C4D-C2D6-DB82-6899FBA464D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "lo_LeftShoulder_parentConstraint1_nodeState";
	rename -uid "966F7B7F-4B5D-7E70-2BF1-1DB636B80617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetTranslateX";
	rename -uid "B085C521-49B6-6E0F-965C-828767ECB5E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 12.861538953044374 1001 12.861538953044374;
createNode animCurveTL -n "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetTranslateY";
	rename -uid "D8169E15-4730-9FAE-A726-F7ACC1A665BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.00013421398858781686 1001 0.00013421398858781686;
createNode animCurveTL -n "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetTranslateZ";
	rename -uid "292494E4-4A8F-C41C-297C-C7992103190A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetRotateX";
	rename -uid "4FDFE24E-4E84-554B-5CE4-DDB66E62DE53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetRotateY";
	rename -uid "8020755F-4A72-11F9-8ADC-958D2D8350E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetRotateZ";
	rename -uid "ECDB716D-4D3A-33D1-E553-2EBE3F792390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "lo_LeftShoulder_parentConstraint1_interpType";
	rename -uid "51BC209B-4307-0C0A-AE00-468C571D6A16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "lo_LeftShoulder_parentConstraint1_rotationDecompositionTargetX";
	rename -uid "DBB99C9A-47C3-9934-74D8-799F18812694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "lo_LeftShoulder_parentConstraint1_rotationDecompositionTargetY";
	rename -uid "9911DCB4-4376-4CEF-60AC-939CF0D2CCC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "lo_LeftShoulder_parentConstraint1_rotationDecompositionTargetZ";
	rename -uid "A35672A0-40B2-31C7-2A44-F9B31C7AE153";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "lo_LeftShoulder_parentConstraint1_Mox_LeftShoulderW0";
	rename -uid "CBC6A4ED-4010-B108-1E46-7782E81072CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTA -n "rig_Neck_rotateX";
	rename -uid "4EC21833-4658-5B1C-D465-549DF1C0DFEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Neck_rotateY";
	rename -uid "E5169CFE-48D3-982F-79DB-14BFBC9EE825";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Neck_rotateZ";
	rename -uid "6D4D0E12-47D8-4DAC-A5D4-8FABA43478E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode pairBlend -n "pairBlend1";
	rename -uid "F60C8C96-4168-72C5-8D20-D8BFFFD14126";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "66042350-4A12-8A79-3128-86BFD0E22CF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "21D78B55-4691-FAF6-55D5-7C8BAC5045E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "45C1781C-43B7-B557-5CC0-32ADB40B300C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Head_rotateX";
	rename -uid "4FD91912-411B-9FD0-3F3D-82A3391F6B0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Head_rotateY";
	rename -uid "CC97DF1B-4B6C-157B-BCBA-7B9FFFDF3A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Head_rotateZ";
	rename -uid "5A63A069-425A-5FD2-14BE-64A30488E118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Head_wold_orientConstraint1_nodeState";
	rename -uid "3BD47555-44AE-14F1-8F8A-58B194808C27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_Head_wold_orientConstraint1_target_0__targetWeight";
	rename -uid "B9AF1720-4EE8-21CF-A16B-868AE759335B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTA -n "rig_Head_wold_orientConstraint1_offsetX";
	rename -uid "0E6C7A36-4526-D042-AB45-6CB6EA9EBAAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Head_wold_orientConstraint1_offsetY";
	rename -uid "963FBC7B-40FD-BE3E-1744-24B6BE25B40F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Head_wold_orientConstraint1_offsetZ";
	rename -uid "E8DE9491-410A-E9DF-6BA1-E4B228D03648";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Head_wold_orientConstraint1_interpType";
	rename -uid "51F72431-491C-66AA-1C4B-A18EFB28D162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_Mox_RightArm_visibility";
	rename -uid "924D7F91-4AB2-58FD-1154-C1966AE8F712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "rig_Mox_RightArm_rotateX";
	rename -uid "F10284CA-45F2-53B5-0A17-B38719F0B6A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightArm_rotateY";
	rename -uid "A97BB1F9-4CE1-CD0D-B137-B9B74E3915A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightArm_rotateZ";
	rename -uid "078F4A17-418D-5E1A-7540-60A3DF64021A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightForeArm_rotateX";
	rename -uid "3AAD443B-46A5-FC9D-618C-2387523F79AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightForeArm_rotateY";
	rename -uid "A9DEAA77-4DD2-4FA0-6D6E-BF972BB57E53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightHand_rotateX";
	rename -uid "DADCEF71-478A-9770-9507-49B5A750EE73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightHand_rotateY";
	rename -uid "874EF236-4145-D252-2806-D9B8A443CB72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightHand_rotateZ";
	rename -uid "039F9415-4A96-F5AB-D43A-3A8ACFB1081B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Mox_RightArm_pointConstraint1_nodeState";
	rename -uid "30CDD66F-4C75-620E-F791-08B4EF4BDA2C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_Mox_RightArm_pointConstraint1_offsetX";
	rename -uid "7D6C48ED-41FB-FDE4-CA40-33A224AD91DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.5527136788005009e-15 1001 3.5527136788005009e-15;
createNode animCurveTL -n "rig_Mox_RightArm_pointConstraint1_offsetY";
	rename -uid "0B976EEB-43D9-8CB3-22FA-D2BED18EBDC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.1150489121500868e-06 1001 3.1150489121500868e-06;
createNode animCurveTL -n "rig_Mox_RightArm_pointConstraint1_offsetZ";
	rename -uid "344B701E-454D-0F06-734A-429F076E1DF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Mox_RightArm_pointConstraint1_lo_RigthShoulderW0";
	rename -uid "D74BEAF9-495A-113E-30FD-F0A93419ED0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTU -n "rig_Mox_LeftArm_visibility";
	rename -uid "892ADB64-4328-9C46-529B-BCBD85BB7578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "rig_Mox_LeftArm_rotateX";
	rename -uid "F9178F49-4055-D70D-29E2-C99B8562942E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftArm_rotateY";
	rename -uid "198820AE-430A-C000-6C34-14A0E0C4ECD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftArm_rotateZ";
	rename -uid "BD449242-4AB3-3AAE-3582-53BADAD23124";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftForeArm_rotateX";
	rename -uid "598E2A7C-45E0-4E95-F8F0-919833C4FD35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftForeArm_rotateY";
	rename -uid "97B54E88-460B-106A-C621-7D8547C1A36D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftHand_rotateX";
	rename -uid "CA107936-4D20-0967-EDC7-0CA1E2ABFDC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftHand_rotateY";
	rename -uid "44AECE2D-4A40-E2B3-5BD8-258D479B665D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftHand_rotateZ";
	rename -uid "9FB23258-49C3-9A5A-8E08-02913C4D8B1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Mox_LeftArm_pointConstraint1_nodeState";
	rename -uid "2ECA50BB-4C2D-6A4D-FCAB-DCB9D3F79818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_Mox_LeftArm_pointConstraint1_offsetX";
	rename -uid "3057374D-4A0B-0634-5026-B8BE0EE21835";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -3.5527136788005009e-15 1001 -3.5527136788005009e-15;
createNode animCurveTL -n "rig_Mox_LeftArm_pointConstraint1_offsetY";
	rename -uid "74BC4FD6-49E4-799A-96CA-4299C8E8EED5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.115048855306668e-06 1001 3.115048855306668e-06;
createNode animCurveTL -n "rig_Mox_LeftArm_pointConstraint1_offsetZ";
	rename -uid "33A4B004-4C30-D167-D5C3-2D984109F47D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Mox_LeftArm_pointConstraint1_lo_LeftShoulderW0";
	rename -uid "CD74A278-42F5-9703-8527-E39B8AA28CB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTA -n "rig_Hips_rotateX";
	rename -uid "7199BD49-4344-2FBE-7320-BB87D3F05404";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Hips_rotateY";
	rename -uid "571B3E45-4D90-E085-8D20-5E9E6328E08A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Hips_rotateZ";
	rename -uid "0192E8C2-4831-283A-967E-0988C8B76B46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Mox_LeftUpLeg_visibility";
	rename -uid "C8CF5450-491F-6DF5-701B-3CA8973CE4EE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "rig_Mox_LeftUpLeg_rotateX";
	rename -uid "A8BC081F-4FE7-86B7-C40F-7F9FD297B45D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftUpLeg_rotateY";
	rename -uid "B7440DE2-47AE-B843-61E5-CA8E8172204A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftUpLeg_rotateZ";
	rename -uid "E881E58C-49E7-C67A-4CF0-AC9B885792F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Mox_LeftLeg_visibility";
	rename -uid "A3F5A0DF-4ABE-8481-3446-13B43827A91E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "rig_Mox_LeftLeg_rotateX";
	rename -uid "38593575-4908-6EA7-34BC-8986F016C75F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftFoot_rotateX";
	rename -uid "A3D22713-43C3-8809-4C94-94A874664A8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftFoot_rotateY";
	rename -uid "E4EF5C51-4DF7-9460-1C73-1BB46674815F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftFoot_rotateZ";
	rename -uid "119C5088-419F-A3DA-69B8-CA98EB47040F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftToeBase_rotateX";
	rename -uid "A15562B8-45BF-748E-CC32-39973965C044";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftToeBase_rotateY";
	rename -uid "015DA6E4-4853-186E-5D99-F79134E04FC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_LeftToeBase_rotateZ";
	rename -uid "36ED7138-4483-6DA9-5FFA-989DEF782A44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Mox_RightUpLeg_visibility";
	rename -uid "65E6440A-4DD5-38F9-0B1A-D786BBDA3682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "rig_Mox_RightUpLeg_rotateX";
	rename -uid "6783F49E-413B-5FEA-564B-5981C6163B99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightUpLeg_rotateY";
	rename -uid "326F9213-4007-768E-F897-148CD3D67380";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightUpLeg_rotateZ";
	rename -uid "62ECAA27-4955-91ED-91C6-609119121A1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_Mox_RightLeg_visibility";
	rename -uid "943A34E0-49A5-DAAA-80F4-2EA411C10E83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "rig_Mox_RightLeg_rotateX";
	rename -uid "C693825B-46E6-7526-495C-C983A01DF285";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightFoot_rotateX";
	rename -uid "B762DBB3-42E0-2185-F682-4897E75EA851";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightFoot_rotateY";
	rename -uid "E886BCC1-40C0-0CB3-1266-AC8438D65659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightFoot_rotateZ";
	rename -uid "B133C124-4F9E-8533-ACE8-25B6A75BD432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightToeBase_rotateX";
	rename -uid "B138969A-4A4E-EB2E-EEDB-498EB3D1AA7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightToeBase_rotateY";
	rename -uid "BA4874FB-4800-74E8-3536-AB8C30577ECB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_Mox_RightToeBase_rotateZ";
	rename -uid "943C5C6F-46B6-9731-AAFF-198D36425B92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_LeftHand_visibility";
	rename -uid "509687E1-4F99-729F-12E7-0482C7E67CDC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_LeftHand_translateX";
	rename -uid "64BD71EE-4CD9-55DF-52A5-28899D8A9E46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_LeftHand_translateY";
	rename -uid "D69599CD-48BE-18D8-A895-CE93ED817328";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_LeftHand_translateZ";
	rename -uid "822357AC-4E73-B2AD-3125-4DB27B942417";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHand_rotateX";
	rename -uid "7C23A922-40FC-B491-0FDC-1AA3BDEC9102";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHand_rotateY";
	rename -uid "0ADBEB42-4C11-B33A-F502-40BAF06B4459";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHand_rotateZ";
	rename -uid "685E9B92-4BB9-E9C9-A655-A1A05E521E9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "ik_LeftHand_visibility";
	rename -uid "A177709F-4D6E-AAA3-B153-67BADFA1835C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "ik_LeftHand_offset";
	rename -uid "E43D1DE8-4733-227D-F583-62940B112A2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "ik_LeftHand_roll";
	rename -uid "1CB8F610-4A17-CC68-28C3-AEBB8BB0B7FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "ik_LeftHand_twist";
	rename -uid "141E3804-4A93-C873-A156-7BBD6D26342A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "ik_LeftHand_poleVectorConstraint1_nodeState";
	rename -uid "3C8720C5-4BF6-D555-1289-02B152A10A86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "ik_LeftHand_poleVectorConstraint1_target_0__targetWeight";
	rename -uid "266EF636-4819-1D4F-72EB-FA92C09D92AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTL -n "ik_LeftHand_poleVectorConstraint1_offsetX";
	rename -uid "25FCB0C4-4A50-02AD-BBF5-538059E7CB64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "ik_LeftHand_poleVectorConstraint1_offsetY";
	rename -uid "80859D60-45DB-6EF6-0118-29B6CC1AEEB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "ik_LeftHand_poleVectorConstraint1_offsetZ";
	rename -uid "0D0638A5-443A-9C87-6532-46AD7791ED7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_LeftArmUpv_visibility";
	rename -uid "24909269-4497-7EDD-5C3B-7595611C5683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_LeftArmUpv_translateX";
	rename -uid "B0B008A8-45A3-9BC0-9E04-FFA4D7308BD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_LeftArmUpv_translateY";
	rename -uid "DA32DC56-4DC3-46B3-DB17-C7A062BC5036";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_LeftArmUpv_translateZ";
	rename -uid "E6EF3CD8-4CBC-163D-4C69-1A89BDE958EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_RightArmUpv_visibility";
	rename -uid "5ADB50D2-4075-3592-2BC5-A3A35C9D1CAE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_RightArmUpv_translateX";
	rename -uid "B176DA0F-45A6-03FA-74B2-A5B8C3508423";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightArmUpv_translateY";
	rename -uid "67FC522F-4C4B-E131-A457-3BAF5830917A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightArmUpv_translateZ";
	rename -uid "E96A7EB7-4EC2-656B-B376-72B7B40D63DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_RightHand_visibility";
	rename -uid "DEEC99ED-4E78-F996-1127-E7BBBF488A17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_RightHand_translateX";
	rename -uid "5D1B6EE7-4107-221A-1965-6286FB952F0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightHand_translateY";
	rename -uid "820F886C-4AA4-AA3F-4798-C296F2158CC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightHand_translateZ";
	rename -uid "304D4206-4993-CBBE-DD5E-BD94FCA51B58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHand_rotateX";
	rename -uid "A7254BBB-4044-3C9B-2AE2-AA8881AC93AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHand_rotateY";
	rename -uid "19DD449F-4420-48F1-596D-CAAAD206934F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHand_rotateZ";
	rename -uid "31BACE84-4589-FAA0-4E21-8E8917512192";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "ik_RightHand_visibility";
	rename -uid "4018911A-4232-2EBB-5470-54AC53CF29A3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "ik_RightHand_offset";
	rename -uid "01ED137D-40B6-74CE-5722-B39A7F015EC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "ik_RightHand_roll";
	rename -uid "F2954354-43A9-7C1F-C561-918CCF483C35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "ik_RightHand_twist";
	rename -uid "4D644D30-4966-2B24-28A4-1EA1CC5C6C22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "ik_RightHand_poleVectorConstraint1_nodeState";
	rename -uid "D7649156-4393-288E-E328-CEBF4CDA3594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "ik_RightHand_poleVectorConstraint1_target_0__targetWeight";
	rename -uid "C12FA017-41F2-EE51-BFDA-1D83C88B821E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTL -n "ik_RightHand_poleVectorConstraint1_offsetX";
	rename -uid "9AFCB2D8-439A-A89D-70B8-B9A215747AAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "ik_RightHand_poleVectorConstraint1_offsetY";
	rename -uid "2C9F37C7-4CB6-E076-96E8-529E8B03C217";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "ik_RightHand_poleVectorConstraint1_offsetZ";
	rename -uid "2D52F546-4D41-F6B8-0858-0FB7FA01D2C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode pairBlend -n "pairBlend2";
	rename -uid "97A17BD4-4D70-17F6-9760-FB9316F7D849";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend2_inTranslateX1";
	rename -uid "440C1E49-4315-9C94-E279-1298AF3B7660";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -3.3101714365102453e-06 1001 -3.3101714365102453e-06;
createNode animCurveTL -n "pairBlend2_inTranslateY1";
	rename -uid "C55A52F1-4DE3-5994-A186-03AAC7F89BC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -5.9550586684053997e-09 1001 -5.9550586684053997e-09;
createNode animCurveTL -n "pairBlend2_inTranslateZ1";
	rename -uid "B0C56E68-43BD-6EE5-0861-779B56C24290";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.3997115660802503e-09 1001 -2.3997115660802503e-09;
createNode pairBlend -n "pairBlend3";
	rename -uid "42860C1F-453C-CD8E-2F0F-A4B1395F065D";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend3_inRotateX1";
	rename -uid "84BCE50C-4B53-783F-414B-DB88D338631D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "pairBlend3_inRotateY1";
	rename -uid "BD890CEA-41B6-EBD8-72CD-3B85C2CC521E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 180.00001804310432 1001 180.00001804310432;
createNode animCurveTA -n "pairBlend3_inRotateZ1";
	rename -uid "316BCF8E-4211-851A-26B5-DABC0DB1DDFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky1_rotateX";
	rename -uid "09F3BEC0-484A-19A2-BD60-1CB82CF36D80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky1_rotateY";
	rename -uid "4395DE30-4F41-E75D-CA5F-D7935A57DF47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky1_rotateZ";
	rename -uid "E961F138-4D84-E7CB-68C7-5B8BF81C4022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky2_rotateX";
	rename -uid "5D40E089-4002-B4E2-F9CC-FDAC6069067E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky2_rotateY";
	rename -uid "1EDDC952-4591-3C90-E66D-D19B7C90F932";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky2_rotateZ";
	rename -uid "21DD4E7D-462B-DA4E-1EA2-EE8C8EA29D56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky3_rotateX";
	rename -uid "B8FCCA89-47A3-9A39-9EE1-07940E5B0CEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky3_rotateY";
	rename -uid "C2D1E337-44AA-4456-4BCD-CAB24C77A2F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandPinky3_rotateZ";
	rename -uid "485133C2-4D8B-23C4-CD22-8099EC61A5ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing1_rotateX";
	rename -uid "A5B467AD-46C7-5EF5-71F7-619AEC3CF538";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing1_rotateY";
	rename -uid "323D934C-44C0-BBA1-BDBC-79AE11FE7A89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing1_rotateZ";
	rename -uid "984D335C-486A-5B09-295F-E3B638C2D7FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing2_rotateX";
	rename -uid "55BE9625-4770-66F3-9F9E-EDA4DA0B9D70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing2_rotateY";
	rename -uid "4A370EC2-4716-2650-793F-3580C1AB5D9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing2_rotateZ";
	rename -uid "1B4FFBD2-4ED8-E5A2-EA3A-EA9FBA553301";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing3_rotateX";
	rename -uid "E240E1CE-4B44-5478-5EBC-7787C60BDE00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing3_rotateY";
	rename -uid "87E7E674-4769-2817-8C7C-379B31B391E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandRing3_rotateZ";
	rename -uid "2C27E8C2-4D8B-CD09-52F0-9298FAA88BD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle1_rotateX";
	rename -uid "F264B2E3-4256-943C-0E2A-36B8544C1F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle1_rotateY";
	rename -uid "2E126B0A-4948-BD06-D16A-E0AB4EEB60C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle1_rotateZ";
	rename -uid "D024A3D0-473D-3A28-1345-C599007F344A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle2_rotateX";
	rename -uid "FFE72887-4DE4-2579-8127-2289A462B768";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle2_rotateY";
	rename -uid "585F2B75-4ACF-63B2-7203-FBA52C2F7791";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle2_rotateZ";
	rename -uid "2940C227-4DEF-2690-B3CE-CBA5557300F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle3_rotateX";
	rename -uid "6D4B4C49-4815-38C2-240F-4C85DAA72EBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle3_rotateY";
	rename -uid "EDB3920C-4F47-A296-3CB1-C2941323DC74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandMiddle3_rotateZ";
	rename -uid "A1EA89EB-4F4A-793D-BD5B-2EA71143AD42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex1_rotateX";
	rename -uid "140B0C63-4E47-391F-4AF6-E484AA46E477";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex1_rotateY";
	rename -uid "8A12D867-4BCB-15EF-D9F3-B8BE7396A4F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex1_rotateZ";
	rename -uid "FD1712FA-47CA-9230-C1B2-D6B7C6064A17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex2_rotateX";
	rename -uid "138ABF53-4E3C-5B41-34AC-FAABE7A22B3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex2_rotateY";
	rename -uid "C1FE83F0-4D6A-48D4-BCB7-BC9119AC643B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex2_rotateZ";
	rename -uid "F27C9F69-44F6-7085-FCFB-BF8D9AF47E2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex3_rotateX";
	rename -uid "B8BC6E0E-4022-3332-66F9-B99B30D20D95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex3_rotateY";
	rename -uid "69644AA3-4012-2A40-9305-74AA8240C75F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandIndex3_rotateZ";
	rename -uid "F3661AB2-4578-A635-4F00-3EA83940A6BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb1_rotateX";
	rename -uid "76772CB7-43A3-19B8-E30E-AB9B6B0B9012";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb1_rotateY";
	rename -uid "A84EA941-4BC9-A521-6E29-79BDA3A64457";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb1_rotateZ";
	rename -uid "52573A91-4B38-0465-A5EF-20BD97F2F3B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb2_rotateX";
	rename -uid "A0CA75D6-4CCC-07EF-793D-29964657FF44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb2_rotateY";
	rename -uid "F03B7AF1-4DB7-D85C-298F-70B690CF9B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb2_rotateZ";
	rename -uid "A610A99F-47BE-96C7-05AA-3DAEEB17B74D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb3_rotateX";
	rename -uid "C3207AC7-4A3A-DA30-1DD6-3A921822E279";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb3_rotateY";
	rename -uid "059C803E-4AF2-AFAB-1A08-38A5A0BD9B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftHandThumb3_rotateZ";
	rename -uid "DCE80BC5-4BC5-D7D9-64BF-0D8BB4511B7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_LeftFingers_pointConstraint1_nodeState";
	rename -uid "14D26B83-4AD6-8483-02EA-B1BF97B1AF70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_LeftFingers_pointConstraint1_target_0__targetWeight";
	rename -uid "2A59F150-4144-38F2-BDE0-7B8C39A99153";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTL -n "rig_LeftFingers_pointConstraint1_offsetX";
	rename -uid "5DA3084F-4D9B-0E07-1220-B1880BB716F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_LeftFingers_pointConstraint1_offsetY";
	rename -uid "2E8407FF-4571-D547-4A80-8F891FDDBA26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_LeftFingers_pointConstraint1_offsetZ";
	rename -uid "D59676C8-4497-4B45-118E-C8A955E4127F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_LeftFingers_orientConstraint1_nodeState";
	rename -uid "3EC1F477-4F8B-759E-7711-FFA173CC24D7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_LeftFingers_orientConstraint1_target_0__targetWeight";
	rename -uid "39E45952-4F30-1DD7-2FDE-7D82C99D28F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTA -n "rig_LeftFingers_orientConstraint1_offsetX";
	rename -uid "7ED0E53E-47B5-3F97-C1DA-2DB655B78C5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftFingers_orientConstraint1_offsetY";
	rename -uid "493384BC-481A-0F9A-902E-22999776E77A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 180.00001804310432 1001 180.00001804310432;
createNode animCurveTA -n "rig_LeftFingers_orientConstraint1_offsetZ";
	rename -uid "DA16F187-493B-47F1-5902-D48FD900C302";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_LeftFingers_orientConstraint1_interpType";
	rename -uid "BFDA1105-4AF3-B0CD-5489-21A53C2DC3DF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode pairBlend -n "pairBlend4";
	rename -uid "18FBBAD8-486A-8BB6-5613-E7BA6C14AC79";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend4_inTranslateX1";
	rename -uid "D139EBC6-48D3-A921-28ED-12B9DAFF0924";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.5239675639786583e-06 1001 3.5239675639786583e-06;
createNode animCurveTL -n "pairBlend4_inTranslateY1";
	rename -uid "CD5B48C5-438E-4B38-685D-699759626F1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.4210854715202004e-13 1001 1.4210854715202004e-13;
createNode animCurveTL -n "pairBlend4_inTranslateZ1";
	rename -uid "8628CC3D-407B-D524-A6D6-AD8D10AAED6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.1546764085677841e-08 1001 -1.1546764085677841e-08;
createNode pairBlend -n "pairBlend5";
	rename -uid "F360026A-4E26-BCA2-6FDD-E4B2F499476A";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend5_inRotateX1";
	rename -uid "7AD76135-4C51-1189-0233-83AC35AC6E8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "pairBlend5_inRotateY1";
	rename -uid "62579AA2-4F50-F235-DB20-828C037BACDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.8043104322648583e-05 1001 -1.8043104322648583e-05;
createNode animCurveTA -n "pairBlend5_inRotateZ1";
	rename -uid "461563FE-4E08-9445-0911-85AC7DD7A2CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandThumb1_rotateX";
	rename -uid "0EA1570F-4F43-5B8A-B81B-E9BEA7BE2687";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandThumb1_rotateY";
	rename -uid "204FF5C6-42F0-8A9E-404D-B28F3D215659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.016709298534876e-15 1001 7.016709298534876e-15;
createNode animCurveTA -n "rig_RightHandThumb1_rotateZ";
	rename -uid "1145ADA3-4FA1-0042-8F91-7386AD9BF46B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandThumb2_rotateX";
	rename -uid "A3A8F1F7-428E-B606-94D3-9DA0B0565AD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandThumb2_rotateY";
	rename -uid "3D6CF62E-4EC1-7228-7C2C-4CACB91D16E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandThumb2_rotateZ";
	rename -uid "26191A8A-4EED-4079-16F6-0495D9BE5264";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandThumb3_rotateX";
	rename -uid "068AC429-41B9-6A15-E23F-19930D5F0A54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandThumb3_rotateY";
	rename -uid "9676CAB3-4D94-2276-11DF-ABB3AFF2F32C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandThumb3_rotateZ";
	rename -uid "7BE7F575-4E78-3CAC-FA64-10860738E45A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandIndex1_rotateX";
	rename -uid "954396C4-46F2-D3B3-2BEC-99996924D8A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandIndex1_rotateY";
	rename -uid "1A95D1C4-49D6-D194-57B7-879EE43730F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.016709298534876e-15 1001 7.016709298534876e-15;
createNode animCurveTA -n "rig_RightHandIndex1_rotateZ";
	rename -uid "6B88BA4F-4CC3-4CA5-044F-A39BD606170C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandIndex2_rotateX";
	rename -uid "CDD59AC8-4DD5-D9C2-0C0E-75AE5905DDA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandIndex2_rotateY";
	rename -uid "62D410C9-4F9F-146B-2443-84BDED256EAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandIndex2_rotateZ";
	rename -uid "2EDAC2DF-4898-6EB4-6724-B5AD95A815AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandIndex3_rotateX";
	rename -uid "17B8ABCE-420A-DB97-B66C-2D852A70BBA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandIndex3_rotateY";
	rename -uid "C7E731B3-443F-A0BB-78F6-B6A4A4934BEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandIndex3_rotateZ";
	rename -uid "BB10633C-4B44-8748-2CB3-799A0E206640";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandMiddle1_rotateX";
	rename -uid "39468CF0-46F2-F2D6-CD2C-4F83272423B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandMiddle1_rotateY";
	rename -uid "A1C35AC7-4930-511F-0C67-67B54A501E91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.016709298534876e-15 1001 7.016709298534876e-15;
createNode animCurveTA -n "rig_RightHandMiddle1_rotateZ";
	rename -uid "ED8F0B8B-4FE9-364D-FE74-3D90B10D6698";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandMiddle2_rotateX";
	rename -uid "4C7AFE46-4722-980D-5672-F7988BECF402";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandMiddle2_rotateY";
	rename -uid "D923420B-489D-1395-B2FB-38BE59D26A40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandMiddle2_rotateZ";
	rename -uid "0E33BC31-49C7-3CE3-A13E-43AE9BB82CC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandMiddle3_rotateX";
	rename -uid "4D6BC53A-4D95-B835-423A-328B42B1A4FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandMiddle3_rotateY";
	rename -uid "AF881D17-4ED3-0C21-DB74-62ADCFC2BFCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandMiddle3_rotateZ";
	rename -uid "62383D92-4AB2-54AA-7AC8-939DF6359942";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandRing1_rotateX";
	rename -uid "6AD7CCC2-4065-ECB6-EB5A-90954882BDF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandRing1_rotateY";
	rename -uid "84C1446B-4BBD-4468-63F2-8AAC27E697FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.016709298534876e-15 1001 7.016709298534876e-15;
createNode animCurveTA -n "rig_RightHandRing1_rotateZ";
	rename -uid "DB65F7F3-460B-FC99-4EB7-968FBADE07AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandRing2_rotateX";
	rename -uid "66AFA64E-4F44-76DD-D476-1681D4A4DD0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandRing2_rotateY";
	rename -uid "64B2D456-40D4-15A5-FE59-E8AEDE744818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandRing2_rotateZ";
	rename -uid "68665392-4774-841D-5297-5E98BC36AC2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandRing3_rotateX";
	rename -uid "E168027B-4E3F-280A-8394-0393D65C660E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandRing3_rotateY";
	rename -uid "A635349B-4E78-426C-6B23-69BDFE64715A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandRing3_rotateZ";
	rename -uid "F4C09BBE-45DB-2369-FF94-AA9EC423B8FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandPinky1_rotateX";
	rename -uid "0457C21B-4049-065E-67AB-5AB87021A65A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandPinky1_rotateY";
	rename -uid "E6E02A9F-4E70-B251-061A-93AA2A490853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.016709298534876e-15 1001 7.016709298534876e-15;
createNode animCurveTA -n "rig_RightHandPinky1_rotateZ";
	rename -uid "194546C9-46D9-1303-3DCE-CCAD16912E99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandPinky2_rotateX";
	rename -uid "97E6178A-4923-5FD1-DFE2-88B313F81A36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandPinky2_rotateY";
	rename -uid "6D7FD56E-4C30-D92A-A1B6-A49686E23A2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandPinky2_rotateZ";
	rename -uid "1D33D83D-4B46-B2E2-A0D6-0EA9DFC8D226";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandPinky3_rotateX";
	rename -uid "C784121A-41BB-C975-F3B0-21913BEA7F24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandPinky3_rotateY";
	rename -uid "6608CA82-42B8-1996-3030-64B13FF15C45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightHandPinky3_rotateZ";
	rename -uid "FA8EE6C9-4B76-EE30-1CFC-70B7D979D6AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_RightFingers_pointConstraint1_nodeState";
	rename -uid "AD62B3C8-436E-84D5-B9A9-4D8AB1D37BCE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_RightFingers_pointConstraint1_target_0__targetWeight";
	rename -uid "E2A213AB-4274-189F-57E8-00B1C1C656E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTL -n "rig_RightFingers_pointConstraint1_offsetX";
	rename -uid "62E3ADD6-48DA-2642-AD33-D1AE9D2AADB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightFingers_pointConstraint1_offsetY";
	rename -uid "3C974322-4AD8-9066-C196-EA8C13E2E3B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightFingers_pointConstraint1_offsetZ";
	rename -uid "B2C718B3-4637-5CE2-4E8F-C89ED85FA7A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_RightFingers_orientConstraint1_nodeState";
	rename -uid "7BE7A369-4A81-3663-C710-70BF466D30CF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_RightFingers_orientConstraint1_target_0__targetWeight";
	rename -uid "89254E3C-4963-85FD-7AEE-52AD848B90D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTA -n "rig_RightFingers_orientConstraint1_offsetX";
	rename -uid "600CBB99-4683-391B-E0F4-509FABC0A05B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightFingers_orientConstraint1_offsetY";
	rename -uid "08C2E865-4C01-EAFC-0092-24A36BEC8441";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.8043104322648579e-05 1001 -1.8043104322648579e-05;
createNode animCurveTA -n "rig_RightFingers_orientConstraint1_offsetZ";
	rename -uid "B8F47E4D-4822-BC0C-41CA-1CB8A49AA548";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_RightFingers_orientConstraint1_interpType";
	rename -uid "533ABF62-4D7C-BF53-ED5E-A7852052AA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rig_LeftLegUpv_visibility";
	rename -uid "FB525C12-4217-3C5B-6C9B-1AB1FD41EF13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 1001 1 1023 1 1048 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "rig_LeftLegUpv_translateX";
	rename -uid "3DEAB79E-4469-5013-4962-D4B15E1749AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1023 0 1048 12.67476340379784;
createNode animCurveTL -n "rig_LeftLegUpv_translateY";
	rename -uid "90464AA8-478E-349E-EBEF-68B7F5B50199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1023 11.701048597784848 1048 9.3708029450166492;
createNode animCurveTL -n "rig_LeftLegUpv_translateZ";
	rename -uid "87678EB9-43C7-8431-1301-839D39F02D36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1023 60.157755382199085 1048 27.50376733594338;
createNode animCurveTU -n "rig_LeftFoot_visibility";
	rename -uid "F3161A03-4C2B-B75D-0289-64A96F20A20C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 1001 1 1026 1 1048 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "rig_LeftFoot_translateX";
	rename -uid "C9F16503-4A4D-5B99-F64C-BF8E46C0216C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 0 1048 0;
createNode animCurveTL -n "rig_LeftFoot_translateY";
	rename -uid "2EE32C7A-47BD-D61D-B748-9C98A6594F2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 5.5565777316906519 1048 3.5671197765611424;
createNode animCurveTL -n "rig_LeftFoot_translateZ";
	rename -uid "6FD296E2-451D-B390-B724-4D9D528789E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 67.146378014209873 1048 9.5879672305769219;
createNode animCurveTA -n "rig_LeftFoot_rotateX";
	rename -uid "115C9D2A-46F1-BAAB-7589-50B7A756E407";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 0 1048 0;
createNode animCurveTA -n "rig_LeftFoot_rotateY";
	rename -uid "314F4293-4553-EB40-77BF-91BBD56170A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 0 1048 0;
createNode animCurveTA -n "rig_LeftFoot_rotateZ";
	rename -uid "8DFD37F4-4B7E-43B4-F816-B5891E7B21F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 1001 0 1026 0 1048 0;
createNode animCurveTA -n "rig_LeftToeBase_rotateX";
	rename -uid "D06D5FD6-40B0-297A-C22F-51B7A747AFB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftToeBase_rotateY";
	rename -uid "BF1C6650-47D4-38BE-E312-94BAD257864D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_LeftToeBase_rotateZ";
	rename -uid "7C4EF2A5-40D6-3635-A7C1-4CBA288F6DAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "ik_LeftFoot_visibility";
	rename -uid "D8FCC6A2-4468-CF8A-A583-54BB947C8A3C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "ik_LeftFoot_offset";
	rename -uid "8B9497C0-4CE9-0419-F662-80A64122A080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "ik_LeftFoot_roll";
	rename -uid "A508AC21-4CEB-6795-397F-579F4C9BA6CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "ik_LeftFoot_twist";
	rename -uid "5EDCEBA3-44AA-42D7-9D6A-0394F41759E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "ik_LeftFoot_poleVectorConstraint1_nodeState";
	rename -uid "FA74AA14-46ED-E2F4-DAF5-DA805F62B6B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "ik_LeftFoot_poleVectorConstraint1_target_0__targetWeight";
	rename -uid "87F896AB-4FDB-3846-A2B5-02BA554562DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTL -n "ik_LeftFoot_poleVectorConstraint1_offsetX";
	rename -uid "A7B9950D-480D-9FBD-8C07-7DA223308CC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "ik_LeftFoot_poleVectorConstraint1_offsetY";
	rename -uid "D09B6788-4198-6855-6089-2EAF026A6B72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "ik_LeftFoot_poleVectorConstraint1_offsetZ";
	rename -uid "F794A6BC-47B6-F891-88BF-F4AA6E27CD81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_RightLegUpv_visibility";
	rename -uid "8E0D7492-4FFE-FEC2-D0EF-05BDBF378362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_RightLegUpv_translateX";
	rename -uid "1EAC33EC-4F7E-FAC7-4BF2-C08FC9D6294B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightLegUpv_translateY";
	rename -uid "F2D71BBB-4D0E-4EBC-1878-E9A73AE2F639";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightLegUpv_translateZ";
	rename -uid "35FBC32F-4F7C-5663-121B-52953A49A232";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "rig_RightFoot_visibility";
	rename -uid "89816FA4-4B0B-6AB3-0958-EB93945DF5DE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rig_RightFoot_translateX";
	rename -uid "5F28F779-4C49-705C-585D-9C9DAD5BB3E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightFoot_translateY";
	rename -uid "96879F56-425F-BB76-234B-BCBDC1F3CB08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "rig_RightFoot_translateZ";
	rename -uid "5C856C09-435D-C7C1-6BB2-08B4DB2B112E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightFoot_rotateX";
	rename -uid "6B1E8BEB-49E4-BE67-F3A6-02A3E3F6479D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightFoot_rotateY";
	rename -uid "170FB9D0-48FE-51A7-D71A-80A6AD32E8C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightFoot_rotateZ";
	rename -uid "A7F55CC3-40C9-5696-51DB-5C85424ADF97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightToeBase_rotateX";
	rename -uid "B4DDE6B4-49CE-1124-39B8-CA9B59F49019";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightToeBase_rotateY";
	rename -uid "14073FC6-45B8-C3CE-C69C-8A85735E74FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "rig_RightToeBase_rotateZ";
	rename -uid "18396059-4F1B-CC4C-8D45-2781109F9AD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "ik_RightFoot_visibility";
	rename -uid "18110D22-4F8B-63A0-7E13-328F75503B3F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "ik_RightFoot_offset";
	rename -uid "9B99112C-4440-0DF5-7EF0-5CA5D46530C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "ik_RightFoot_roll";
	rename -uid "07380635-4918-72E1-5647-F596A2E549A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTA -n "ik_RightFoot_twist";
	rename -uid "D575138C-4375-E9E5-A2F2-0FAF0351E818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "ik_RightFoot_poleVectorConstraint1_nodeState";
	rename -uid "3363DBD5-4E88-4F4F-CEDF-1D8A130376E2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "ik_RightFoot_poleVectorConstraint1_target_0__targetWeight";
	rename -uid "AFF87BFD-4C2F-51E7-5A27-7186489D939F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 1001 1;
createNode animCurveTL -n "ik_RightFoot_poleVectorConstraint1_offsetX";
	rename -uid "363E1BAD-4383-AE37-4DAE-3FB1A198A0DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "ik_RightFoot_poleVectorConstraint1_offsetY";
	rename -uid "2807907C-4667-E3A2-73FF-C6A6EAA229DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTL -n "ik_RightFoot_poleVectorConstraint1_offsetZ";
	rename -uid "B46A02C9-45EC-0F8B-A412-3C84EBF9F875";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 1001 0;
createNode animCurveTU -n "group_Head_world_blendRigHeadwoldorient1";
	rename -uid "7F301344-43A9-B694-3953-54B49C49442B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1001 0;
createNode animCurveTU -n "gr_LeftFingers_blendRigLeftFingerspoint1";
	rename -uid "706C0F1E-47E2-5F41-DD78-9CBC5CB3D4C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1001 0;
createNode animCurveTU -n "gr_LeftFingers_blendRigLeftFingersorient1";
	rename -uid "D3B81D29-4060-0C92-197B-84B10052C8FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1001 0;
createNode animCurveTU -n "gr_RightFingers_blendRigRightFingerspoint1";
	rename -uid "BC730207-4DE4-AAB8-8D85-4A9190C2BBAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1001 0;
createNode animCurveTU -n "gr_RightFingers_blendRigRightFingersorient1";
	rename -uid "B5B80A00-4C82-99C4-04D3-ADB5A7898A10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1001 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager3";
	rename -uid "300912E6-45F6-C3E4-D560-979CDD245F91";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1001;
	setAttr -av ".unw" 1001;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 2 ".r";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".macc";
	setAttr -cb on ".macd";
	setAttr -cb on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -cb on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf" 51;
	setAttr -av -cb on ".imfkey" -type "string" "exr";
	setAttr -av -k on ".gama";
	setAttr -av -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".mbso";
	setAttr -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -cb on ".ope";
	setAttr -cb on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "F:/Users/yamagishi/Dropbox/pipeline/ocio/v2/aces_2.0.0/studio-config-v2.0.0_aces-v1.3_ocio-v2.1.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
	setAttr ".vn" -type "string" "ACES 1.0 - SDR Video";
	setAttr ".dn" -type "string" "sRGB - Display";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
	setAttr ".potn" -type "string" "ACES 1.0 - SDR Video (sRGB - Display)";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :hyperGraphInfo;
	setAttr -s 3 ".b";
connectAttr "rig_All_Right_Arm_IK_FK.o" "MoxRigRN.phl[1]";
connectAttr "rig_All_Left_ArmIK_FK.o" "MoxRigRN.phl[2]";
connectAttr "rig_All_RightLegIK_FK.o" "MoxRigRN.phl[3]";
connectAttr "rig_All_LeftLegIK_FK.o" "MoxRigRN.phl[4]";
connectAttr "rig_All_rotateX.o" "MoxRigRN.phl[5]";
connectAttr "rig_All_rotateY.o" "MoxRigRN.phl[6]";
connectAttr "rig_All_rotateZ.o" "MoxRigRN.phl[7]";
connectAttr "rig_All_translateX.o" "MoxRigRN.phl[8]";
connectAttr "rig_All_translateY.o" "MoxRigRN.phl[9]";
connectAttr "rig_All_translateZ.o" "MoxRigRN.phl[10]";
connectAttr "rig_COG_translateX.o" "MoxRigRN.phl[11]";
connectAttr "rig_COG_translateY.o" "MoxRigRN.phl[12]";
connectAttr "rig_COG_translateZ.o" "MoxRigRN.phl[13]";
connectAttr "rig_COG_rotateX.o" "MoxRigRN.phl[14]";
connectAttr "rig_COG_rotateY.o" "MoxRigRN.phl[15]";
connectAttr "rig_COG_rotateZ.o" "MoxRigRN.phl[16]";
connectAttr "rig_Spine_rotateX.o" "MoxRigRN.phl[17]";
connectAttr "rig_Spine_rotateY.o" "MoxRigRN.phl[18]";
connectAttr "rig_Spine_rotateZ.o" "MoxRigRN.phl[19]";
connectAttr "rig_Spine1_rotateX.o" "MoxRigRN.phl[20]";
connectAttr "rig_Spine1_rotateY.o" "MoxRigRN.phl[21]";
connectAttr "rig_Spine1_rotateZ.o" "MoxRigRN.phl[22]";
connectAttr "rig_RightShoulder_rotateX.o" "MoxRigRN.phl[23]";
connectAttr "rig_RightShoulder_rotateY.o" "MoxRigRN.phl[24]";
connectAttr "rig_RightShoulder_rotateZ.o" "MoxRigRN.phl[25]";
connectAttr "lo_RigthShoulder_scaleX.o" "MoxRigRN.phl[26]";
connectAttr "lo_RigthShoulder_scaleY.o" "MoxRigRN.phl[27]";
connectAttr "lo_RigthShoulder_scaleZ.o" "MoxRigRN.phl[28]";
connectAttr "lo_RigthShoulder_visibility.o" "MoxRigRN.phl[29]";
connectAttr "lo_RigthShoulder_parentConstraint1_nodeState.o" "MoxRigRN.phl[30]";
connectAttr "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetTranslateX.o" "MoxRigRN.phl[31]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetTranslateY.o" "MoxRigRN.phl[32]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetTranslateZ.o" "MoxRigRN.phl[33]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetRotateX.o" "MoxRigRN.phl[34]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetRotateY.o" "MoxRigRN.phl[35]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_target_0__targetOffsetRotateZ.o" "MoxRigRN.phl[36]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_Mox_RightShoulderW0.o" "MoxRigRN.phl[37]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_interpType.o" "MoxRigRN.phl[38]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_rotationDecompositionTargetX.o" "MoxRigRN.phl[39]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_rotationDecompositionTargetY.o" "MoxRigRN.phl[40]"
		;
connectAttr "lo_RigthShoulder_parentConstraint1_rotationDecompositionTargetZ.o" "MoxRigRN.phl[41]"
		;
connectAttr "rig_LeftShoulder_rotateX.o" "MoxRigRN.phl[42]";
connectAttr "rig_LeftShoulder_rotateY.o" "MoxRigRN.phl[43]";
connectAttr "rig_LeftShoulder_rotateZ.o" "MoxRigRN.phl[44]";
connectAttr "lo_LeftShoulder_scaleX.o" "MoxRigRN.phl[45]";
connectAttr "lo_LeftShoulder_scaleY.o" "MoxRigRN.phl[46]";
connectAttr "lo_LeftShoulder_scaleZ.o" "MoxRigRN.phl[47]";
connectAttr "lo_LeftShoulder_visibility.o" "MoxRigRN.phl[48]";
connectAttr "lo_LeftShoulder_parentConstraint1_nodeState.o" "MoxRigRN.phl[49]";
connectAttr "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetTranslateX.o" "MoxRigRN.phl[50]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetTranslateY.o" "MoxRigRN.phl[51]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetTranslateZ.o" "MoxRigRN.phl[52]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetRotateX.o" "MoxRigRN.phl[53]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetRotateY.o" "MoxRigRN.phl[54]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_target_0__targetOffsetRotateZ.o" "MoxRigRN.phl[55]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_Mox_LeftShoulderW0.o" "MoxRigRN.phl[56]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_interpType.o" "MoxRigRN.phl[57]";
connectAttr "lo_LeftShoulder_parentConstraint1_rotationDecompositionTargetX.o" "MoxRigRN.phl[58]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_rotationDecompositionTargetY.o" "MoxRigRN.phl[59]"
		;
connectAttr "lo_LeftShoulder_parentConstraint1_rotationDecompositionTargetZ.o" "MoxRigRN.phl[60]"
		;
connectAttr "rig_Neck_rotateX.o" "MoxRigRN.phl[61]";
connectAttr "rig_Neck_rotateY.o" "MoxRigRN.phl[62]";
connectAttr "rig_Neck_rotateZ.o" "MoxRigRN.phl[63]";
connectAttr "pairBlend1.orx" "MoxRigRN.phl[64]";
connectAttr "pairBlend1.ory" "MoxRigRN.phl[65]";
connectAttr "pairBlend1.orz" "MoxRigRN.phl[66]";
connectAttr "MoxRigRN.phl[67]" "pairBlend1.w";
connectAttr "group_Head_world_blendRigHeadwoldorient1.o" "MoxRigRN.phl[68]";
connectAttr "rig_Head_rotateX.o" "MoxRigRN.phl[69]";
connectAttr "rig_Head_rotateY.o" "MoxRigRN.phl[70]";
connectAttr "rig_Head_rotateZ.o" "MoxRigRN.phl[71]";
connectAttr "rig_Head_wold_orientConstraint1_nodeState.o" "MoxRigRN.phl[72]";
connectAttr "MoxRigRN.phl[73]" "pairBlend1.irx2";
connectAttr "MoxRigRN.phl[74]" "pairBlend1.iry2";
connectAttr "MoxRigRN.phl[75]" "pairBlend1.irz2";
connectAttr "rig_Head_wold_orientConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[76]"
		;
connectAttr "rig_Head_wold_orientConstraint1_offsetX.o" "MoxRigRN.phl[77]";
connectAttr "rig_Head_wold_orientConstraint1_offsetY.o" "MoxRigRN.phl[78]";
connectAttr "rig_Head_wold_orientConstraint1_offsetZ.o" "MoxRigRN.phl[79]";
connectAttr "rig_Head_wold_orientConstraint1_interpType.o" "MoxRigRN.phl[80]";
connectAttr "rig_Mox_RightArm_rotateX.o" "MoxRigRN.phl[81]";
connectAttr "rig_Mox_RightArm_rotateY.o" "MoxRigRN.phl[82]";
connectAttr "rig_Mox_RightArm_rotateZ.o" "MoxRigRN.phl[83]";
connectAttr "rig_Mox_RightArm_visibility.o" "MoxRigRN.phl[84]";
connectAttr "rig_Mox_RightForeArm_rotateX.o" "MoxRigRN.phl[85]";
connectAttr "rig_Mox_RightForeArm_rotateY.o" "MoxRigRN.phl[86]";
connectAttr "rig_Mox_RightHand_rotateX.o" "MoxRigRN.phl[87]";
connectAttr "rig_Mox_RightHand_rotateY.o" "MoxRigRN.phl[88]";
connectAttr "rig_Mox_RightHand_rotateZ.o" "MoxRigRN.phl[89]";
connectAttr "rig_Mox_RightArm_pointConstraint1_nodeState.o" "MoxRigRN.phl[90]";
connectAttr "rig_Mox_RightArm_pointConstraint1_lo_RigthShoulderW0.o" "MoxRigRN.phl[91]"
		;
connectAttr "rig_Mox_RightArm_pointConstraint1_offsetX.o" "MoxRigRN.phl[92]";
connectAttr "rig_Mox_RightArm_pointConstraint1_offsetY.o" "MoxRigRN.phl[93]";
connectAttr "rig_Mox_RightArm_pointConstraint1_offsetZ.o" "MoxRigRN.phl[94]";
connectAttr "rig_Mox_LeftArm_rotateX.o" "MoxRigRN.phl[95]";
connectAttr "rig_Mox_LeftArm_rotateY.o" "MoxRigRN.phl[96]";
connectAttr "rig_Mox_LeftArm_rotateZ.o" "MoxRigRN.phl[97]";
connectAttr "rig_Mox_LeftArm_visibility.o" "MoxRigRN.phl[98]";
connectAttr "rig_Mox_LeftForeArm_rotateX.o" "MoxRigRN.phl[99]";
connectAttr "rig_Mox_LeftForeArm_rotateY.o" "MoxRigRN.phl[100]";
connectAttr "rig_Mox_LeftHand_rotateX.o" "MoxRigRN.phl[101]";
connectAttr "rig_Mox_LeftHand_rotateY.o" "MoxRigRN.phl[102]";
connectAttr "rig_Mox_LeftHand_rotateZ.o" "MoxRigRN.phl[103]";
connectAttr "rig_Mox_LeftArm_pointConstraint1_nodeState.o" "MoxRigRN.phl[104]";
connectAttr "rig_Mox_LeftArm_pointConstraint1_lo_LeftShoulderW0.o" "MoxRigRN.phl[105]"
		;
connectAttr "rig_Mox_LeftArm_pointConstraint1_offsetX.o" "MoxRigRN.phl[106]";
connectAttr "rig_Mox_LeftArm_pointConstraint1_offsetY.o" "MoxRigRN.phl[107]";
connectAttr "rig_Mox_LeftArm_pointConstraint1_offsetZ.o" "MoxRigRN.phl[108]";
connectAttr "rig_Hips_rotateX.o" "MoxRigRN.phl[109]";
connectAttr "rig_Hips_rotateY.o" "MoxRigRN.phl[110]";
connectAttr "rig_Hips_rotateZ.o" "MoxRigRN.phl[111]";
connectAttr "rig_Mox_LeftUpLeg_rotateX.o" "MoxRigRN.phl[112]";
connectAttr "rig_Mox_LeftUpLeg_rotateY.o" "MoxRigRN.phl[113]";
connectAttr "rig_Mox_LeftUpLeg_rotateZ.o" "MoxRigRN.phl[114]";
connectAttr "rig_Mox_LeftUpLeg_visibility.o" "MoxRigRN.phl[115]";
connectAttr "rig_Mox_LeftLeg_rotateX.o" "MoxRigRN.phl[116]";
connectAttr "rig_Mox_LeftLeg_visibility.o" "MoxRigRN.phl[117]";
connectAttr "rig_Mox_LeftFoot_rotateX.o" "MoxRigRN.phl[118]";
connectAttr "rig_Mox_LeftFoot_rotateY.o" "MoxRigRN.phl[119]";
connectAttr "rig_Mox_LeftFoot_rotateZ.o" "MoxRigRN.phl[120]";
connectAttr "rig_Mox_LeftToeBase_rotateX.o" "MoxRigRN.phl[121]";
connectAttr "rig_Mox_LeftToeBase_rotateY.o" "MoxRigRN.phl[122]";
connectAttr "rig_Mox_LeftToeBase_rotateZ.o" "MoxRigRN.phl[123]";
connectAttr "rig_Mox_RightUpLeg_rotateX.o" "MoxRigRN.phl[124]";
connectAttr "rig_Mox_RightUpLeg_rotateY.o" "MoxRigRN.phl[125]";
connectAttr "rig_Mox_RightUpLeg_rotateZ.o" "MoxRigRN.phl[126]";
connectAttr "rig_Mox_RightUpLeg_visibility.o" "MoxRigRN.phl[127]";
connectAttr "rig_Mox_RightLeg_rotateX.o" "MoxRigRN.phl[128]";
connectAttr "rig_Mox_RightLeg_visibility.o" "MoxRigRN.phl[129]";
connectAttr "rig_Mox_RightFoot_rotateX.o" "MoxRigRN.phl[130]";
connectAttr "rig_Mox_RightFoot_rotateY.o" "MoxRigRN.phl[131]";
connectAttr "rig_Mox_RightFoot_rotateZ.o" "MoxRigRN.phl[132]";
connectAttr "rig_Mox_RightToeBase_rotateX.o" "MoxRigRN.phl[133]";
connectAttr "rig_Mox_RightToeBase_rotateY.o" "MoxRigRN.phl[134]";
connectAttr "rig_Mox_RightToeBase_rotateZ.o" "MoxRigRN.phl[135]";
connectAttr "rig_LeftHand_rotateX.o" "MoxRigRN.phl[136]";
connectAttr "rig_LeftHand_rotateY.o" "MoxRigRN.phl[137]";
connectAttr "rig_LeftHand_rotateZ.o" "MoxRigRN.phl[138]";
connectAttr "rig_LeftHand_visibility.o" "MoxRigRN.phl[139]";
connectAttr "rig_LeftHand_translateX.o" "MoxRigRN.phl[140]";
connectAttr "rig_LeftHand_translateY.o" "MoxRigRN.phl[141]";
connectAttr "rig_LeftHand_translateZ.o" "MoxRigRN.phl[142]";
connectAttr "ik_LeftHand_visibility.o" "MoxRigRN.phl[143]";
connectAttr "ik_LeftHand_offset.o" "MoxRigRN.phl[144]";
connectAttr "ik_LeftHand_roll.o" "MoxRigRN.phl[145]";
connectAttr "ik_LeftHand_twist.o" "MoxRigRN.phl[146]";
connectAttr "ik_LeftHand_poleVectorConstraint1_nodeState.o" "MoxRigRN.phl[147]";
connectAttr "ik_LeftHand_poleVectorConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[148]"
		;
connectAttr "ik_LeftHand_poleVectorConstraint1_offsetX.o" "MoxRigRN.phl[149]";
connectAttr "ik_LeftHand_poleVectorConstraint1_offsetY.o" "MoxRigRN.phl[150]";
connectAttr "ik_LeftHand_poleVectorConstraint1_offsetZ.o" "MoxRigRN.phl[151]";
connectAttr "rig_LeftArmUpv_translateX.o" "MoxRigRN.phl[152]";
connectAttr "rig_LeftArmUpv_translateY.o" "MoxRigRN.phl[153]";
connectAttr "rig_LeftArmUpv_translateZ.o" "MoxRigRN.phl[154]";
connectAttr "rig_LeftArmUpv_visibility.o" "MoxRigRN.phl[155]";
connectAttr "rig_RightArmUpv_translateX.o" "MoxRigRN.phl[156]";
connectAttr "rig_RightArmUpv_translateY.o" "MoxRigRN.phl[157]";
connectAttr "rig_RightArmUpv_translateZ.o" "MoxRigRN.phl[158]";
connectAttr "rig_RightArmUpv_visibility.o" "MoxRigRN.phl[159]";
connectAttr "rig_RightHand_rotateX.o" "MoxRigRN.phl[160]";
connectAttr "rig_RightHand_rotateY.o" "MoxRigRN.phl[161]";
connectAttr "rig_RightHand_rotateZ.o" "MoxRigRN.phl[162]";
connectAttr "rig_RightHand_visibility.o" "MoxRigRN.phl[163]";
connectAttr "rig_RightHand_translateX.o" "MoxRigRN.phl[164]";
connectAttr "rig_RightHand_translateY.o" "MoxRigRN.phl[165]";
connectAttr "rig_RightHand_translateZ.o" "MoxRigRN.phl[166]";
connectAttr "ik_RightHand_visibility.o" "MoxRigRN.phl[167]";
connectAttr "ik_RightHand_offset.o" "MoxRigRN.phl[168]";
connectAttr "ik_RightHand_roll.o" "MoxRigRN.phl[169]";
connectAttr "ik_RightHand_twist.o" "MoxRigRN.phl[170]";
connectAttr "ik_RightHand_poleVectorConstraint1_nodeState.o" "MoxRigRN.phl[171]"
		;
connectAttr "ik_RightHand_poleVectorConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[172]"
		;
connectAttr "ik_RightHand_poleVectorConstraint1_offsetX.o" "MoxRigRN.phl[173]";
connectAttr "ik_RightHand_poleVectorConstraint1_offsetY.o" "MoxRigRN.phl[174]";
connectAttr "ik_RightHand_poleVectorConstraint1_offsetZ.o" "MoxRigRN.phl[175]";
connectAttr "pairBlend2.otx" "MoxRigRN.phl[176]";
connectAttr "pairBlend2.oty" "MoxRigRN.phl[177]";
connectAttr "pairBlend2.otz" "MoxRigRN.phl[178]";
connectAttr "pairBlend3.orx" "MoxRigRN.phl[179]";
connectAttr "pairBlend3.ory" "MoxRigRN.phl[180]";
connectAttr "pairBlend3.orz" "MoxRigRN.phl[181]";
connectAttr "MoxRigRN.phl[182]" "pairBlend2.w";
connectAttr "gr_LeftFingers_blendRigLeftFingerspoint1.o" "MoxRigRN.phl[183]";
connectAttr "MoxRigRN.phl[184]" "pairBlend3.w";
connectAttr "gr_LeftFingers_blendRigLeftFingersorient1.o" "MoxRigRN.phl[185]";
connectAttr "rig_LeftHandPinky1_rotateX.o" "MoxRigRN.phl[186]";
connectAttr "rig_LeftHandPinky1_rotateY.o" "MoxRigRN.phl[187]";
connectAttr "rig_LeftHandPinky1_rotateZ.o" "MoxRigRN.phl[188]";
connectAttr "rig_LeftHandPinky2_rotateX.o" "MoxRigRN.phl[189]";
connectAttr "rig_LeftHandPinky2_rotateY.o" "MoxRigRN.phl[190]";
connectAttr "rig_LeftHandPinky2_rotateZ.o" "MoxRigRN.phl[191]";
connectAttr "rig_LeftHandPinky3_rotateX.o" "MoxRigRN.phl[192]";
connectAttr "rig_LeftHandPinky3_rotateY.o" "MoxRigRN.phl[193]";
connectAttr "rig_LeftHandPinky3_rotateZ.o" "MoxRigRN.phl[194]";
connectAttr "rig_LeftHandRing1_rotateX.o" "MoxRigRN.phl[195]";
connectAttr "rig_LeftHandRing1_rotateY.o" "MoxRigRN.phl[196]";
connectAttr "rig_LeftHandRing1_rotateZ.o" "MoxRigRN.phl[197]";
connectAttr "rig_LeftHandRing2_rotateX.o" "MoxRigRN.phl[198]";
connectAttr "rig_LeftHandRing2_rotateY.o" "MoxRigRN.phl[199]";
connectAttr "rig_LeftHandRing2_rotateZ.o" "MoxRigRN.phl[200]";
connectAttr "rig_LeftHandRing3_rotateX.o" "MoxRigRN.phl[201]";
connectAttr "rig_LeftHandRing3_rotateY.o" "MoxRigRN.phl[202]";
connectAttr "rig_LeftHandRing3_rotateZ.o" "MoxRigRN.phl[203]";
connectAttr "rig_LeftHandMiddle1_rotateX.o" "MoxRigRN.phl[204]";
connectAttr "rig_LeftHandMiddle1_rotateY.o" "MoxRigRN.phl[205]";
connectAttr "rig_LeftHandMiddle1_rotateZ.o" "MoxRigRN.phl[206]";
connectAttr "rig_LeftHandMiddle2_rotateX.o" "MoxRigRN.phl[207]";
connectAttr "rig_LeftHandMiddle2_rotateY.o" "MoxRigRN.phl[208]";
connectAttr "rig_LeftHandMiddle2_rotateZ.o" "MoxRigRN.phl[209]";
connectAttr "rig_LeftHandMiddle3_rotateX.o" "MoxRigRN.phl[210]";
connectAttr "rig_LeftHandMiddle3_rotateY.o" "MoxRigRN.phl[211]";
connectAttr "rig_LeftHandMiddle3_rotateZ.o" "MoxRigRN.phl[212]";
connectAttr "rig_LeftHandIndex1_rotateX.o" "MoxRigRN.phl[213]";
connectAttr "rig_LeftHandIndex1_rotateY.o" "MoxRigRN.phl[214]";
connectAttr "rig_LeftHandIndex1_rotateZ.o" "MoxRigRN.phl[215]";
connectAttr "rig_LeftHandIndex2_rotateX.o" "MoxRigRN.phl[216]";
connectAttr "rig_LeftHandIndex2_rotateY.o" "MoxRigRN.phl[217]";
connectAttr "rig_LeftHandIndex2_rotateZ.o" "MoxRigRN.phl[218]";
connectAttr "rig_LeftHandIndex3_rotateX.o" "MoxRigRN.phl[219]";
connectAttr "rig_LeftHandIndex3_rotateY.o" "MoxRigRN.phl[220]";
connectAttr "rig_LeftHandIndex3_rotateZ.o" "MoxRigRN.phl[221]";
connectAttr "rig_LeftHandThumb1_rotateX.o" "MoxRigRN.phl[222]";
connectAttr "rig_LeftHandThumb1_rotateY.o" "MoxRigRN.phl[223]";
connectAttr "rig_LeftHandThumb1_rotateZ.o" "MoxRigRN.phl[224]";
connectAttr "rig_LeftHandThumb2_rotateX.o" "MoxRigRN.phl[225]";
connectAttr "rig_LeftHandThumb2_rotateY.o" "MoxRigRN.phl[226]";
connectAttr "rig_LeftHandThumb2_rotateZ.o" "MoxRigRN.phl[227]";
connectAttr "rig_LeftHandThumb3_rotateX.o" "MoxRigRN.phl[228]";
connectAttr "rig_LeftHandThumb3_rotateY.o" "MoxRigRN.phl[229]";
connectAttr "rig_LeftHandThumb3_rotateZ.o" "MoxRigRN.phl[230]";
connectAttr "rig_LeftFingers_pointConstraint1_nodeState.o" "MoxRigRN.phl[231]";
connectAttr "MoxRigRN.phl[232]" "pairBlend2.itx2";
connectAttr "MoxRigRN.phl[233]" "pairBlend2.ity2";
connectAttr "MoxRigRN.phl[234]" "pairBlend2.itz2";
connectAttr "rig_LeftFingers_pointConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[235]"
		;
connectAttr "rig_LeftFingers_pointConstraint1_offsetX.o" "MoxRigRN.phl[236]";
connectAttr "rig_LeftFingers_pointConstraint1_offsetY.o" "MoxRigRN.phl[237]";
connectAttr "rig_LeftFingers_pointConstraint1_offsetZ.o" "MoxRigRN.phl[238]";
connectAttr "rig_LeftFingers_orientConstraint1_nodeState.o" "MoxRigRN.phl[239]";
connectAttr "MoxRigRN.phl[240]" "pairBlend3.irx2";
connectAttr "MoxRigRN.phl[241]" "pairBlend3.iry2";
connectAttr "MoxRigRN.phl[242]" "pairBlend3.irz2";
connectAttr "rig_LeftFingers_orientConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[243]"
		;
connectAttr "rig_LeftFingers_orientConstraint1_offsetX.o" "MoxRigRN.phl[244]";
connectAttr "rig_LeftFingers_orientConstraint1_offsetY.o" "MoxRigRN.phl[245]";
connectAttr "rig_LeftFingers_orientConstraint1_offsetZ.o" "MoxRigRN.phl[246]";
connectAttr "rig_LeftFingers_orientConstraint1_interpType.o" "MoxRigRN.phl[247]"
		;
connectAttr "pairBlend4.otx" "MoxRigRN.phl[248]";
connectAttr "pairBlend4.oty" "MoxRigRN.phl[249]";
connectAttr "pairBlend4.otz" "MoxRigRN.phl[250]";
connectAttr "pairBlend5.orx" "MoxRigRN.phl[251]";
connectAttr "pairBlend5.ory" "MoxRigRN.phl[252]";
connectAttr "pairBlend5.orz" "MoxRigRN.phl[253]";
connectAttr "MoxRigRN.phl[254]" "pairBlend4.w";
connectAttr "gr_RightFingers_blendRigRightFingerspoint1.o" "MoxRigRN.phl[255]";
connectAttr "MoxRigRN.phl[256]" "pairBlend5.w";
connectAttr "gr_RightFingers_blendRigRightFingersorient1.o" "MoxRigRN.phl[257]";
connectAttr "rig_RightHandThumb1_rotateX.o" "MoxRigRN.phl[258]";
connectAttr "rig_RightHandThumb1_rotateY.o" "MoxRigRN.phl[259]";
connectAttr "rig_RightHandThumb1_rotateZ.o" "MoxRigRN.phl[260]";
connectAttr "rig_RightHandThumb2_rotateX.o" "MoxRigRN.phl[261]";
connectAttr "rig_RightHandThumb2_rotateY.o" "MoxRigRN.phl[262]";
connectAttr "rig_RightHandThumb2_rotateZ.o" "MoxRigRN.phl[263]";
connectAttr "rig_RightHandThumb3_rotateX.o" "MoxRigRN.phl[264]";
connectAttr "rig_RightHandThumb3_rotateY.o" "MoxRigRN.phl[265]";
connectAttr "rig_RightHandThumb3_rotateZ.o" "MoxRigRN.phl[266]";
connectAttr "rig_RightHandIndex1_rotateX.o" "MoxRigRN.phl[267]";
connectAttr "rig_RightHandIndex1_rotateY.o" "MoxRigRN.phl[268]";
connectAttr "rig_RightHandIndex1_rotateZ.o" "MoxRigRN.phl[269]";
connectAttr "rig_RightHandIndex2_rotateX.o" "MoxRigRN.phl[270]";
connectAttr "rig_RightHandIndex2_rotateY.o" "MoxRigRN.phl[271]";
connectAttr "rig_RightHandIndex2_rotateZ.o" "MoxRigRN.phl[272]";
connectAttr "rig_RightHandIndex3_rotateX.o" "MoxRigRN.phl[273]";
connectAttr "rig_RightHandIndex3_rotateY.o" "MoxRigRN.phl[274]";
connectAttr "rig_RightHandIndex3_rotateZ.o" "MoxRigRN.phl[275]";
connectAttr "rig_RightHandMiddle1_rotateX.o" "MoxRigRN.phl[276]";
connectAttr "rig_RightHandMiddle1_rotateY.o" "MoxRigRN.phl[277]";
connectAttr "rig_RightHandMiddle1_rotateZ.o" "MoxRigRN.phl[278]";
connectAttr "rig_RightHandMiddle2_rotateX.o" "MoxRigRN.phl[279]";
connectAttr "rig_RightHandMiddle2_rotateY.o" "MoxRigRN.phl[280]";
connectAttr "rig_RightHandMiddle2_rotateZ.o" "MoxRigRN.phl[281]";
connectAttr "rig_RightHandMiddle3_rotateX.o" "MoxRigRN.phl[282]";
connectAttr "rig_RightHandMiddle3_rotateY.o" "MoxRigRN.phl[283]";
connectAttr "rig_RightHandMiddle3_rotateZ.o" "MoxRigRN.phl[284]";
connectAttr "rig_RightHandRing1_rotateX.o" "MoxRigRN.phl[285]";
connectAttr "rig_RightHandRing1_rotateY.o" "MoxRigRN.phl[286]";
connectAttr "rig_RightHandRing1_rotateZ.o" "MoxRigRN.phl[287]";
connectAttr "rig_RightHandRing2_rotateX.o" "MoxRigRN.phl[288]";
connectAttr "rig_RightHandRing2_rotateY.o" "MoxRigRN.phl[289]";
connectAttr "rig_RightHandRing2_rotateZ.o" "MoxRigRN.phl[290]";
connectAttr "rig_RightHandRing3_rotateX.o" "MoxRigRN.phl[291]";
connectAttr "rig_RightHandRing3_rotateY.o" "MoxRigRN.phl[292]";
connectAttr "rig_RightHandRing3_rotateZ.o" "MoxRigRN.phl[293]";
connectAttr "rig_RightHandPinky1_rotateX.o" "MoxRigRN.phl[294]";
connectAttr "rig_RightHandPinky1_rotateY.o" "MoxRigRN.phl[295]";
connectAttr "rig_RightHandPinky1_rotateZ.o" "MoxRigRN.phl[296]";
connectAttr "rig_RightHandPinky2_rotateX.o" "MoxRigRN.phl[297]";
connectAttr "rig_RightHandPinky2_rotateY.o" "MoxRigRN.phl[298]";
connectAttr "rig_RightHandPinky2_rotateZ.o" "MoxRigRN.phl[299]";
connectAttr "rig_RightHandPinky3_rotateX.o" "MoxRigRN.phl[300]";
connectAttr "rig_RightHandPinky3_rotateY.o" "MoxRigRN.phl[301]";
connectAttr "rig_RightHandPinky3_rotateZ.o" "MoxRigRN.phl[302]";
connectAttr "rig_RightFingers_pointConstraint1_nodeState.o" "MoxRigRN.phl[303]";
connectAttr "MoxRigRN.phl[304]" "pairBlend4.itx2";
connectAttr "MoxRigRN.phl[305]" "pairBlend4.ity2";
connectAttr "MoxRigRN.phl[306]" "pairBlend4.itz2";
connectAttr "rig_RightFingers_pointConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[307]"
		;
connectAttr "rig_RightFingers_pointConstraint1_offsetX.o" "MoxRigRN.phl[308]";
connectAttr "rig_RightFingers_pointConstraint1_offsetY.o" "MoxRigRN.phl[309]";
connectAttr "rig_RightFingers_pointConstraint1_offsetZ.o" "MoxRigRN.phl[310]";
connectAttr "rig_RightFingers_orientConstraint1_nodeState.o" "MoxRigRN.phl[311]"
		;
connectAttr "MoxRigRN.phl[312]" "pairBlend5.irx2";
connectAttr "MoxRigRN.phl[313]" "pairBlend5.iry2";
connectAttr "MoxRigRN.phl[314]" "pairBlend5.irz2";
connectAttr "rig_RightFingers_orientConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[315]"
		;
connectAttr "rig_RightFingers_orientConstraint1_offsetX.o" "MoxRigRN.phl[316]";
connectAttr "rig_RightFingers_orientConstraint1_offsetY.o" "MoxRigRN.phl[317]";
connectAttr "rig_RightFingers_orientConstraint1_offsetZ.o" "MoxRigRN.phl[318]";
connectAttr "rig_RightFingers_orientConstraint1_interpType.o" "MoxRigRN.phl[319]"
		;
connectAttr "rig_LeftLegUpv_translateX.o" "MoxRigRN.phl[320]";
connectAttr "rig_LeftLegUpv_translateY.o" "MoxRigRN.phl[321]";
connectAttr "rig_LeftLegUpv_translateZ.o" "MoxRigRN.phl[322]";
connectAttr "rig_LeftLegUpv_visibility.o" "MoxRigRN.phl[323]";
connectAttr "rig_LeftFoot_rotateX.o" "MoxRigRN.phl[324]";
connectAttr "rig_LeftFoot_rotateY.o" "MoxRigRN.phl[325]";
connectAttr "rig_LeftFoot_rotateZ.o" "MoxRigRN.phl[326]";
connectAttr "rig_LeftFoot_visibility.o" "MoxRigRN.phl[327]";
connectAttr "rig_LeftFoot_translateX.o" "MoxRigRN.phl[328]";
connectAttr "rig_LeftFoot_translateY.o" "MoxRigRN.phl[329]";
connectAttr "rig_LeftFoot_translateZ.o" "MoxRigRN.phl[330]";
connectAttr "rig_LeftToeBase_rotateX.o" "MoxRigRN.phl[331]";
connectAttr "rig_LeftToeBase_rotateY.o" "MoxRigRN.phl[332]";
connectAttr "rig_LeftToeBase_rotateZ.o" "MoxRigRN.phl[333]";
connectAttr "ik_LeftFoot_visibility.o" "MoxRigRN.phl[334]";
connectAttr "ik_LeftFoot_offset.o" "MoxRigRN.phl[335]";
connectAttr "ik_LeftFoot_roll.o" "MoxRigRN.phl[336]";
connectAttr "ik_LeftFoot_twist.o" "MoxRigRN.phl[337]";
connectAttr "ik_LeftFoot_poleVectorConstraint1_nodeState.o" "MoxRigRN.phl[338]";
connectAttr "ik_LeftFoot_poleVectorConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[339]"
		;
connectAttr "ik_LeftFoot_poleVectorConstraint1_offsetX.o" "MoxRigRN.phl[340]";
connectAttr "ik_LeftFoot_poleVectorConstraint1_offsetY.o" "MoxRigRN.phl[341]";
connectAttr "ik_LeftFoot_poleVectorConstraint1_offsetZ.o" "MoxRigRN.phl[342]";
connectAttr "rig_RightLegUpv_translateX.o" "MoxRigRN.phl[343]";
connectAttr "rig_RightLegUpv_translateY.o" "MoxRigRN.phl[344]";
connectAttr "rig_RightLegUpv_translateZ.o" "MoxRigRN.phl[345]";
connectAttr "rig_RightLegUpv_visibility.o" "MoxRigRN.phl[346]";
connectAttr "rig_RightFoot_rotateX.o" "MoxRigRN.phl[347]";
connectAttr "rig_RightFoot_rotateY.o" "MoxRigRN.phl[348]";
connectAttr "rig_RightFoot_rotateZ.o" "MoxRigRN.phl[349]";
connectAttr "rig_RightFoot_visibility.o" "MoxRigRN.phl[350]";
connectAttr "rig_RightFoot_translateX.o" "MoxRigRN.phl[351]";
connectAttr "rig_RightFoot_translateY.o" "MoxRigRN.phl[352]";
connectAttr "rig_RightFoot_translateZ.o" "MoxRigRN.phl[353]";
connectAttr "rig_RightToeBase_rotateX.o" "MoxRigRN.phl[354]";
connectAttr "rig_RightToeBase_rotateY.o" "MoxRigRN.phl[355]";
connectAttr "rig_RightToeBase_rotateZ.o" "MoxRigRN.phl[356]";
connectAttr "ik_RightFoot_visibility.o" "MoxRigRN.phl[357]";
connectAttr "ik_RightFoot_offset.o" "MoxRigRN.phl[358]";
connectAttr "ik_RightFoot_roll.o" "MoxRigRN.phl[359]";
connectAttr "ik_RightFoot_twist.o" "MoxRigRN.phl[360]";
connectAttr "ik_RightFoot_poleVectorConstraint1_nodeState.o" "MoxRigRN.phl[361]"
		;
connectAttr "ik_RightFoot_poleVectorConstraint1_target_0__targetWeight.o" "MoxRigRN.phl[362]"
		;
connectAttr "ik_RightFoot_poleVectorConstraint1_offsetX.o" "MoxRigRN.phl[363]";
connectAttr "ik_RightFoot_poleVectorConstraint1_offsetY.o" "MoxRigRN.phl[364]";
connectAttr "ik_RightFoot_poleVectorConstraint1_offsetZ.o" "MoxRigRN.phl[365]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend1.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "pairBlend2_inTranslateX1.o" "pairBlend2.itx1";
connectAttr "pairBlend2_inTranslateY1.o" "pairBlend2.ity1";
connectAttr "pairBlend2_inTranslateZ1.o" "pairBlend2.itz1";
connectAttr "pairBlend3_inRotateX1.o" "pairBlend3.irx1";
connectAttr "pairBlend3_inRotateY1.o" "pairBlend3.iry1";
connectAttr "pairBlend3_inRotateZ1.o" "pairBlend3.irz1";
connectAttr "pairBlend4_inTranslateX1.o" "pairBlend4.itx1";
connectAttr "pairBlend4_inTranslateY1.o" "pairBlend4.ity1";
connectAttr "pairBlend4_inTranslateZ1.o" "pairBlend4.itz1";
connectAttr "pairBlend5_inRotateX1.o" "pairBlend5.irx1";
connectAttr "pairBlend5_inRotateY1.o" "pairBlend5.iry1";
connectAttr "pairBlend5_inRotateZ1.o" "pairBlend5.irz1";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
// End of usd_ren_0010_anim_v0001.ma
