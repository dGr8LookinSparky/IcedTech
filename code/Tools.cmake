# Tools.cmake

include(CSharpUtilities)

set(src_radiant_net 
	tools/radiant.net/bin
	tools/radiant.net/Editor.cs
	tools/radiant.net/filelist.txt
	tools/radiant.net/NativeAPI.cs
	tools/radiant.net/packages.config
	tools/radiant.net/RadiantHelpers.cs
	tools/radiant.net/Forms/CamWndDialog.cs
	tools/radiant.net/Forms/CamWndDialog.Designer.cs
	tools/radiant.net/Forms/CamWndDialog.resx
	tools/radiant.net/Forms/EntityCreateDialog.cs
	tools/radiant.net/Forms/EntityCreateDialog.Designer.cs
	tools/radiant.net/Forms/EntityCreateDialog.resx
	tools/radiant.net/Forms/EntitySelection.cs
	tools/radiant.net/Forms/EntitySelection.Designer.cs
	tools/radiant.net/Forms/EntitySelection.resx
	tools/radiant.net/Forms/InspectorDialog.cs
	tools/radiant.net/Forms/InspectorDialog.Designer.cs
	tools/radiant.net/Forms/InspectorDialog.resx
	tools/radiant.net/Forms/ProgressDialog.cs
	tools/radiant.net/Forms/ProgressDialog.Designer.cs
	tools/radiant.net/Forms/ProgressDialog.resx
	tools/radiant.net/Forms/XYWndDialog.cs
	tools/radiant.net/Forms/XYWndDialog.Designer.cs
	tools/radiant.net/Forms/XYWndDialog.resx
	tools/radiant.net/Properties/AssemblyInfo.cs
)

set(src_tools
	./tools/tools_precompiled.cpp
	./tools/af/DialogAF.cpp
	./tools/af/DialogAFBody.cpp
	./tools/af/DialogAFConstraint.cpp
	./tools/af/DialogAFConstraintBallAndSocket.cpp
	./tools/af/DialogAFConstraintFixed.cpp
	./tools/af/DialogAFConstraintHinge.cpp
	./tools/af/DialogAFConstraintSlider.cpp
	./tools/af/DialogAFConstraintSpring.cpp
	./tools/af/DialogAFConstraintUniversal.cpp
	./tools/af/DialogAFName.cpp
	./tools/af/DialogAFProperties.cpp
	./tools/af/DialogAFView.cpp
	./tools/comafx/CDIB.cpp
	./tools/comafx/CPathTreeCtrl.cpp
	./tools/comafx/CSyntaxRichEditCtrl.cpp
	./tools/comafx/DialogColorPicker.cpp
	./tools/comafx/DialogGoToLine.cpp
	./tools/comafx/DialogName.cpp
	./tools/comafx/StdAfx.cpp
	./tools/comafx/VectorCtl.cpp
	./tools/common/AlphaPopup.cpp
	./tools/common/ColorButton.cpp
	./tools/common/MaskEdit.cpp
	./tools/common/OpenFileDialog.cpp
	./tools/common/PropertyGrid.cpp
	./tools/common/RegistryOptions.cpp
	./tools/common/RollupPanel.cpp
	./tools/common/SpinButton.cpp
	./tools/common/PropTree/PropTree.cpp
	./tools/common/PropTree/PropTreeInfo.cpp
	./tools/common/PropTree/PropTreeItem.cpp
	./tools/common/PropTree/PropTreeItemButton.cpp
	./tools/common/PropTree/PropTreeItemCheck.cpp
	./tools/common/PropTree/PropTreeItemColor.cpp
	./tools/common/PropTree/PropTreeItemCombo.cpp
	./tools/common/PropTree/PropTreeItemEdit.cpp
	./tools/common/PropTree/PropTreeItemEditButton.cpp
	./tools/common/PropTree/PropTreeItemFileEdit.cpp
	./tools/common/PropTree/PropTreeItemStatic.cpp
	./tools/common/PropTree/PropTreeList.cpp
	./tools/common/PropTree/PropTreeView.cpp
	./tools/compilers/aas/AASBuild.cpp
	./tools/compilers/aas/AASBuild_file.cpp
	./tools/compilers/aas/AASBuild_gravity.cpp
	./tools/compilers/aas/AASBuild_ledge.cpp
	./tools/compilers/aas/AASBuild_merge.cpp
	./tools/compilers/aas/AASCluster.cpp
	./tools/compilers/aas/AASFile.cpp
	./tools/compilers/aas/AASFileManager.cpp
	./tools/compilers/aas/AASFile_optimize.cpp
	./tools/compilers/aas/AASFile_sample.cpp
	./tools/compilers/aas/AASReach.cpp
	./tools/compilers/aas/Brush.cpp
	./tools/compilers/aas/BrushBSP.cpp
	./tools/compilers/dmap/dmap.cpp
	./tools/compilers/dmap/facebsp.cpp
	./tools/compilers/dmap/gldraw.cpp
	./tools/compilers/dmap/glfile.cpp
	./tools/compilers/dmap/leakfile.cpp
	./tools/compilers/dmap/map.cpp
	./tools/compilers/dmap/optimize.cpp
	./tools/compilers/dmap/optimize_gcc.cpp
	./tools/compilers/dmap/output.cpp
	./tools/compilers/dmap/portals.cpp
	./tools/compilers/dmap/shadowopt3.cpp
	./tools/compilers/dmap/tritjunction.cpp
	./tools/compilers/dmap/tritools.cpp
	./tools/compilers/dmap/ubrush.cpp
	./tools/compilers/dmap/usurface.cpp
	./tools/compilers/megagen/MegaGen.cpp
	./tools/compilers/megagen/MegaProject.cpp
	./tools/compilers/megalight/MegaLight.cpp
	./tools/compilers/renderbump/renderbump.cpp
	./tools/compilers/roqvq/codec.cpp
	./tools/compilers/roqvq/NSBitmapImageRep.cpp
	./tools/compilers/roqvq/roq.cpp
	./tools/compilers/roqvq/roqParam.cpp
	./tools/decl/DialogDeclBrowser.cpp
	./tools/decl/DialogDeclEditor.cpp
	./tools/decl/DialogDeclNew.cpp
	./tools/guied/GEApp.cpp
	./tools/guied/GECheckInDlg.cpp
	./tools/guied/GEDeleteModifier.cpp
	./tools/guied/GEHideModifier.cpp
	./tools/guied/GEInsertModifier.cpp
	./tools/guied/GEItemPropsDlg.cpp
	./tools/guied/GEItemScriptsDlg.cpp
	./tools/guied/GEKeyValueModifier.cpp
	./tools/guied/GEModifier.cpp
	./tools/guied/GEModifierGroup.cpp
	./tools/guied/GEModifierStack.cpp
	./tools/guied/GEMoveModifier.cpp
	./tools/guied/GENavigator.cpp
	./tools/guied/GEOptions.cpp
	./tools/guied/GEOptionsDlg.cpp
	./tools/guied/GEProperties.cpp
	./tools/guied/GEPropertyPage.cpp
	./tools/guied/GESelectionMgr.cpp
	./tools/guied/GESizeModifier.cpp
	./tools/guied/GEStateModifier.cpp
	./tools/guied/GEStatusBar.cpp
	./tools/guied/GETransformer.cpp
	./tools/guied/GEViewer.cpp
	./tools/guied/GEWindowWrapper.cpp
	./tools/guied/GEWorkspace.cpp
	./tools/guied/GEWorkspaceFile.cpp
	./tools/guied/GEZOrderModifier.cpp
	./tools/guied/guied.cpp
	./tools/materialeditor/ConsoleView.cpp
	./tools/materialeditor/FindDialog.cpp
	./tools/materialeditor/MaterialDef.cpp
	./tools/materialeditor/MaterialDoc.cpp
	./tools/materialeditor/MaterialDocManager.cpp
	./tools/materialeditor/MaterialEditor.cpp
	./tools/materialeditor/MaterialEditView.cpp
	./tools/materialeditor/MaterialModifier.cpp
	./tools/materialeditor/MaterialPreviewPropView.cpp
	./tools/materialeditor/MaterialPreviewView.cpp
	./tools/materialeditor/MaterialPropTreeView.cpp
	./tools/materialeditor/MaterialTreeView.cpp
	./tools/materialeditor/MaterialView.cpp
	./tools/materialeditor/MEMainFrame.cpp
	./tools/materialeditor/MEOptions.cpp
	./tools/materialeditor/StageView.cpp
	./tools/materialeditor/ToggleListView.cpp
	./tools/particle/DialogParticleEditor.cpp
	./tools/pda/DialogPDAEditor.cpp
	./tools/radiant/autocaulk.cpp
	./tools/radiant/CameraTargetDlg.cpp
	./tools/radiant/CamWnd.cpp
	./tools/radiant/CapDialog.cpp
	./tools/radiant/cmdlib.cpp
	./tools/radiant/CommandsDlg.cpp
	./tools/radiant/CommentsDlg.cpp
	./tools/radiant/ConsoleDlg.cpp
	./tools/radiant/CurveDlg.cpp
	./tools/radiant/DialogInfo.cpp
	./tools/radiant/DialogTextures.cpp
	./tools/radiant/DialogThick.cpp
	./tools/radiant/DlgCamera.cpp
	./tools/radiant/DlgEvent.cpp
	./tools/radiant/DRAG.cpp
	./tools/radiant/ECLASS.cpp
	./tools/radiant/EditorBrush.cpp
	./tools/radiant/EditorBrushPrimit.cpp
	./tools/radiant/EditorEntity.cpp
	./tools/radiant/EditorMap.cpp
	./tools/radiant/EditViewDlg.cpp
	./tools/radiant/EntityDlg.cpp
	./tools/radiant/EntKeyFindReplace.cpp
	./tools/radiant/FindTextureDlg.cpp
	./tools/radiant/GetString.cpp
	./tools/radiant/GLWidget.cpp
	./tools/radiant/InspectorDialog.cpp
	./tools/radiant/LightDlg.cpp
	./tools/radiant/CSG.cpp
	./tools/radiant/MainFrm.cpp
	./tools/radiant/MapInfo.cpp
	./tools/radiant/MediaPreviewDlg.cpp
	./tools/radiant/MRU.cpp
	./tools/radiant/NewProjDlg.cpp
	./tools/radiant/NewTexWnd.cpp
	./tools/radiant/PARSE.cpp
	./tools/radiant/PatchDensityDlg.cpp
	./tools/radiant/PatchDialog.cpp
	./tools/radiant/PMESH.cpp
	./tools/radiant/PointFile.cpp
	./tools/radiant/PrefsDlg.cpp
	./tools/radiant/PreviewDlg.cpp
	./tools/radiant/PropertyList.cpp
	./tools/radiant/QE3.cpp
	./tools/radiant/Radiant.cpp
	./tools/radiant/RotateDlg.cpp
	./tools/radiant/ScaleDialog.cpp
	./tools/radiant/SELECT.cpp
	./tools/radiant/splines.cpp
	./tools/radiant/SurfaceDlg.cpp
	./tools/radiant/TabsDlg.cpp
	./tools/radiant/TearoffContainerWindow.cpp
	./tools/radiant/TextureBar.cpp
	./tools/radiant/Undo.cpp
	./tools/radiant/VERTSEL.cpp
	./tools/radiant/WaitDlg.cpp
	./tools/radiant/WaveOpen.cpp
	./tools/radiant/WIN_DLG.cpp
	./tools/radiant/WIN_QE3.cpp
	./tools/radiant/XYWnd.cpp
	./tools/radiant/Z.cpp
	./tools/radiant/ZClip.cpp
	./tools/script/DialogScriptEditor.cpp
	./tools/sound/DialogSound.cpp
	./tools/sound/DialogSoundGroup.cpp
	./tools/edit_public.h
	./tools/tools_precompiled.h
	./tools/af/DialogAF.h
	./tools/af/DialogAFBody.h
	./tools/af/DialogAFConstraint.h
	./tools/af/DialogAFConstraintBallAndSocket.h
	./tools/af/DialogAFConstraintFixed.h
	./tools/af/DialogAFConstraintHinge.h
	./tools/af/DialogAFConstraintSlider.h
	./tools/af/DialogAFConstraintSpring.h
	./tools/af/DialogAFConstraintUniversal.h
	./tools/af/DialogAFName.h
	./tools/af/DialogAFProperties.h
	./tools/af/DialogAFView.h
	./tools/comafx/CDIB.h
	./tools/comafx/CPathTreeCtrl.h
	./tools/comafx/CSyntaxRichEditCtrl.h
	./tools/comafx/DialogColorPicker.h
	./tools/comafx/DialogGoToLine.h
	./tools/comafx/DialogName.h
	./tools/comafx/StdAfx.h
	./tools/comafx/VectorCtl.h
	./tools/common/ColorButton.h
	./tools/common/DialogHelpers.h
	./tools/common/MaskEdit.h
	./tools/common/OpenFileDialog.h
	./tools/common/PropertyGrid.h
	./tools/common/RegistryOptions.h
	./tools/common/RenderBumpFlatDialog.h
	./tools/common/RollupPanel.h
	./tools/common/SpinButton.h
	./tools/common/PropTree/PropTree.h
	./tools/common/PropTree/PropTreeInfo.h
	./tools/common/PropTree/PropTreeItem.h
	./tools/common/PropTree/PropTreeItemButton.h
	./tools/common/PropTree/PropTreeItemCheck.h
	./tools/common/PropTree/PropTreeItemColor.h
	./tools/common/PropTree/PropTreeItemCombo.h
	./tools/common/PropTree/PropTreeItemEdit.h
	./tools/common/PropTree/PropTreeItemEditButton.h
	./tools/common/PropTree/PropTreeItemFileEdit.h
	./tools/common/PropTree/PropTreeItemStatic.h
	./tools/common/PropTree/PropTreeList.h
	./tools/common/PropTree/PropTreeView.h
	./tools/compilers/compiler_public.h
	./tools/compilers/aas/AASBuild_local.h
	./tools/compilers/aas/AASCluster.h
	./tools/compilers/aas/AASFile.h
	./tools/compilers/aas/AASFileManager.h
	./tools/compilers/aas/AASFile_local.h
	./tools/compilers/aas/AASReach.h
	./tools/compilers/aas/Brush.h
	./tools/compilers/aas/BrushBSP.h
	./tools/compilers/dmap/dmap.h
	./tools/compilers/megagen/MegaGen.h
	./tools/compilers/megalight/MegaLight_file.h
	./tools/compilers/roqvq/codec.h
	./tools/compilers/roqvq/gdefs.h
	./tools/compilers/roqvq/quaddefs.h
	./tools/compilers/roqvq/roq.h
	./tools/compilers/roqvq/roqParam.h
	./tools/debugger/DebuggerApp.h
	./tools/debugger/DebuggerBreakpoint.h
	./tools/debugger/DebuggerClient.h
	./tools/debugger/DebuggerFindDlg.h
	./tools/debugger/DebuggerMessages.h
	./tools/debugger/DebuggerQuickWatchDlg.h
	./tools/debugger/DebuggerScript.h
	./tools/debugger/DebuggerServer.h
	./tools/debugger/DebuggerWindow.h
	./tools/decl/DialogDeclBrowser.h
	./tools/decl/DialogDeclEditor.h
	./tools/decl/DialogDeclNew.h
	./tools/decl/DialogEntityDefEditor.h
	./tools/guied/GEApp.h
	./tools/guied/GEDeleteModifier.h
	./tools/guied/GEHideModifier.h
	./tools/guied/GEInsertModifier.h
	./tools/guied/GEItemPropsDlg.h
	./tools/guied/GEItemScriptsDlg.h
	./tools/guied/GEKeyValueModifier.h
	./tools/guied/GEModifier.h
	./tools/guied/GEModifierGroup.h
	./tools/guied/GEModifierStack.h
	./tools/guied/GEMoveModifier.h
	./tools/guied/GENavigator.h
	./tools/guied/GEOptions.h
	./tools/guied/GEOptionsDlg.h
	./tools/guied/GEProperties.h
	./tools/guied/GEPropertyPage.h
	./tools/guied/GESelectionMgr.h
	./tools/guied/GESizeModifier.h
	./tools/guied/GEStateModifier.h
	./tools/guied/GEStatusBar.h
	./tools/guied/GETransformer.h
	./tools/guied/GEViewer.h
	./tools/guied/GEWindowWrapper.h
	./tools/guied/GEWorkspace.h
	./tools/guied/GEZOrderModifier.h
	./tools/Help/default.htm
	./tools/Help/MT_help.htm
	./tools/Help/MVH_Controls.htm
	./tools/Help/MVH_Issues.htm
	./tools/Help/MVH_Misc.htm
	./tools/Help/MVH_Mouse.htm
	./tools/Help/MVH_Overview.htm
	./tools/Help/Tools.hhc
	./tools/Help/Tools.hhk
	./tools/Help/Tools.hhp
	./tools/materialeditor/ConsoleView.h
	./tools/materialeditor/FindDialog.h
	./tools/materialeditor/MaterialDef.h
	./tools/materialeditor/MaterialDoc.h
	./tools/materialeditor/MaterialDocManager.h
	./tools/materialeditor/MaterialEditor.h
	./tools/materialeditor/MaterialEditView.h
	./tools/materialeditor/MaterialModifier.h
	./tools/materialeditor/MaterialPreviewPropView.h
	./tools/materialeditor/MaterialPreviewView.h
	./tools/materialeditor/MaterialPropTreeView.h
	./tools/materialeditor/MaterialTreeView.h
	./tools/materialeditor/MaterialView.h
	./tools/materialeditor/MEMainFrame.h
	./tools/materialeditor/MEOptions.h
	./tools/materialeditor/StageView.h
	./tools/materialeditor/ToggleListView.h
	./tools/particle/DialogParticleEditor.h
	./tools/pda/DialogPDAEditor.h
	./tools/radiant/autocaulk.h
	./tools/radiant/CameraTargetDlg.h
	./tools/radiant/CamWnd.h
	./tools/radiant/CapDialog.h
	./tools/radiant/cmdlib.h
	./tools/radiant/CommandsDlg.h
	./tools/radiant/CommentsDlg.h
	./tools/radiant/ConsoleDlg.h
	./tools/radiant/CurveDlg.h
	./tools/radiant/DialogInfo.h
	./tools/radiant/DialogTextures.h
	./tools/radiant/DialogThick.h
	./tools/radiant/DlgCamera.h
	./tools/radiant/DlgEvent.h
	./tools/radiant/EditorBrush.h
	./tools/radiant/EditorEntity.h
	./tools/radiant/EditorMap.h
	./tools/radiant/EditViewDlg.h
	./tools/radiant/EntityDlg.h
	./tools/radiant/EntKeyFindReplace.h
	./tools/radiant/FindTextureDlg.h
	./tools/radiant/GetString.h
	./tools/radiant/GLWidget.h
	./tools/radiant/InspectorDialog.h
	./tools/radiant/LightDlg.h
	./tools/radiant/MainFrm.h
	./tools/radiant/MapInfo.h
	./tools/radiant/MediaPreviewDlg.h
	./tools/radiant/MRU.H
	./tools/radiant/NewProjDlg.h
	./tools/radiant/NewTexWnd.h
	./tools/radiant/PARSE.H
	./tools/radiant/PatchDensityDlg.h
	./tools/radiant/PatchDialog.h
	./tools/radiant/PMESH.H
	./tools/radiant/PrefsDlg.h
	./tools/radiant/PreviewDlg.h
	./tools/radiant/PropertyList.h
	./tools/radiant/QE3.H
	./tools/radiant/QEDEFS.H
	./tools/radiant/QERTYPES.H
	./tools/radiant/Radiant.h
	./tools/radiant/RotateDlg.h
	./tools/radiant/ScaleDialog.h
	./tools/radiant/SELECT.H
	./tools/radiant/splines.h
	./tools/radiant/SurfaceDlg.h
	./tools/radiant/TabsDlg.h
	./tools/radiant/TearoffContainerWindow.h
	./tools/radiant/TextureBar.h
	./tools/radiant/Textures.h
	./tools/radiant/Undo.h
	./tools/radiant/WaitDlg.h
	./tools/radiant/WaveOpen.h
	./tools/radiant/XYWnd.h
	./tools/radiant/Z.H
	./tools/radiant/ZClip.h
	./tools/script/DialogScriptEditor.h
	./tools/sound/DialogSound.h
	./tools/sound/DialogSoundGroup.h
)

# Add radiant.net
#add_library(RadiantDotNet SHARED ${src_radiant_net})
#set_property(TARGET RadiantDotNet PROPERTY VS_DOTNET_TARGET_FRAMEWORK_VERSION "v4.6.1")
#set(CMAKE_CSharp_FLAGS "/langversion:latest")
#set_property(TARGET RadiantDotNet PROPERTY VS_DOTNET_REFERENCES
#    "Microsoft.CSharp"
#    "System"
#    "System.Core"
#    "System.Data"
#    "System.Deployment"
#    "System.Drawing"
#    "System.Net.Http"
#    "System.Xml"
#)

# Add tools library
add_library(Tools STATIC ${src_tools})
add_precompiled_header( Tools tools_precompiled.h  SOURCE_CXX ./tools/tools_precompiled.cpp )
set_target_properties(Tools PROPERTIES LINK_FLAGS "/PDB:\"Tools.pdb\"")