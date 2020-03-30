#############################################################################
# Makefile for building: RestAPI
# Generated by qmake (3.1) (Qt 5.12.5)
# Project:  source\RestAPI.pro
# Template: subdirs
# Command: O:\Qt\5.12.5\mingw73_64\bin\qmake.exe -o Makefile source\RestAPI.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: make_first
QMAKE         = O:\Qt\5.12.5\mingw73_64\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
QINSTALL      = O:\Qt\5.12.5\mingw73_64\bin\qmake.exe -install qinstall
QINSTALL_PROGRAM = O:\Qt\5.12.5\mingw73_64\bin\qmake.exe -install qinstall -exe
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		sub-app \
		sub-src \
		sub-tests-unit


sub-app-qmake_all: sub-src-qmake_all FORCE
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"
	cd app\ && $(MAKE) -f Makefile qmake_all
sub-app: sub-src FORCE
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile
sub-app-make_first: sub-src-make_first FORCE
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile 
sub-app-all: sub-src-all FORCE
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile all
sub-app-clean: sub-src-clean FORCE
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile clean
sub-app-distclean: sub-src-distclean FORCE
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile distclean
sub-app-install_subtargets: sub-src-install_subtargets FORCE
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile install
sub-app-uninstall_subtargets: sub-src-uninstall_subtargets FORCE
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile uninstall
sub-src-qmake_all:  FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"
	cd src\ && $(MAKE) -f Makefile qmake_all
sub-src: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile
sub-src-make_first: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile 
sub-src-all: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile all
sub-src-clean: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile clean
sub-src-distclean: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile distclean
sub-src-install_subtargets: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile install
sub-src-uninstall_subtargets: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile uninstall
sub-tests-unit-qmake_all:  FORCE
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"
	cd tests\unit\ && $(MAKE) -f Makefile qmake_all
sub-tests-unit: FORCE
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile
sub-tests-unit-make_first: FORCE
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile 
sub-tests-unit-all: FORCE
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile all
sub-tests-unit-clean: FORCE
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile clean
sub-tests-unit-distclean: FORCE
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile distclean
sub-tests-unit-install_subtargets: FORCE
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile install
sub-tests-unit-uninstall_subtargets: FORCE
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile uninstall

Makefile: source/RestAPI.pro O:/Qt/5.12.5/mingw73_64/mkspecs/win32-g++/qmake.conf O:/Qt/5.12.5/mingw73_64/mkspecs/features/spec_pre.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/qdevice.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/device_config.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/common/sanitize.conf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/common/gcc-base.conf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/common/g++-base.conf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/common/angle.conf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/win32/windows_vulkan_sdk.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/common/windows-vulkan.conf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/common/g++-win32.conf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/qconfig.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3danimation.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3danimation_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dcore.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dcore_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dextras.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dextras_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dinput.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dinput_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dlogic.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dlogic_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquick.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquick_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickanimation.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickanimation_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickextras.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickextras_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickinput.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickinput_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickrender.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickrender_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickscene2d.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickscene2d_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3drender.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3drender_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axbase.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axbase_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axcontainer.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axcontainer_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axserver.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axserver_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_bluetooth.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_charts.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_charts_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_concurrent.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_core.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_core_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_datavisualization.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_datavisualization_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_dbus.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_dbus_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_designer.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_designer_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_edid_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_egl_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_fb_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_gamepad.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_gamepad_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_gui.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_gui_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_help.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_help_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_location.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_location_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_multimedia.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_network.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_network_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_networkauth.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_networkauth_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_nfc.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_nfc_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_opengl.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_opengl_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_openglextensions.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_positioning.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_positioning_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_positioningquick.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_positioningquick_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_printsupport.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_purchasing.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_purchasing_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qml.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qml_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qmldebug_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qmltest.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quick.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quick_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickcontrols2.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickshapes_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quicktemplates2.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_remoteobjects.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_remoteobjects_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_repparser.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_repparser_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_script.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_script_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_scripttools.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_scxml.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_scxml_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_sensors.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_sensors_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_serialbus.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_serialbus_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_serialport.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_serialport_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_sql.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_sql_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_studio3d.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_studio3d_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_svg.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_svg_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_testlib.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_testlib_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_texttospeech.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_texttospeech_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_theme_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_uiplugin.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_uitools.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_uitools_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_virtualkeyboard.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_virtualkeyboard_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_vulkan_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_webchannel.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_webchannel_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_websockets.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_websockets_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_widgets.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_widgets_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_windowsuiautomation_support_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_winextras.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_winextras_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_xml.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_xml_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/qt_functions.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/qt_config.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/win32-g++/qmake.conf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/spec_post.prf \
		.qmake.stash \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/exclusive_builds.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/toolchain.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/default_pre.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/win32/default_pre.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/resolve_config.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/exclusive_builds_post.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/default_post.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/qml_debug.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/precompile_header.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/warn_on.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/qmake_use.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/file_copies.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/win32/windows.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/testcase_targets.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/exceptions.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/yacc.prf \
		O:/Qt/5.12.5/mingw73_64/mkspecs/features/lex.prf \
		source/RestAPI.pro
	$(QMAKE) -o Makefile source\RestAPI.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"
O:/Qt/5.12.5/mingw73_64/mkspecs/features/spec_pre.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/qdevice.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/device_config.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/common/sanitize.conf:
O:/Qt/5.12.5/mingw73_64/mkspecs/common/gcc-base.conf:
O:/Qt/5.12.5/mingw73_64/mkspecs/common/g++-base.conf:
O:/Qt/5.12.5/mingw73_64/mkspecs/common/angle.conf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/win32/windows_vulkan_sdk.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/common/windows-vulkan.conf:
O:/Qt/5.12.5/mingw73_64/mkspecs/common/g++-win32.conf:
O:/Qt/5.12.5/mingw73_64/mkspecs/qconfig.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3danimation.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3danimation_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dcore.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dcore_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dextras.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dextras_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dinput.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dinput_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dlogic.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dlogic_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquick.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquick_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickanimation.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickanimation_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickextras.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickextras_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickinput.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickinput_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickrender.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickrender_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickscene2d.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3dquickscene2d_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3drender.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_3drender_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_accessibility_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axbase.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axbase_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axcontainer.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axcontainer_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axserver.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_axserver_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_bluetooth.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_bluetooth_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_bootstrap_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_charts.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_charts_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_concurrent.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_concurrent_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_core.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_core_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_datavisualization.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_datavisualization_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_dbus.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_dbus_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_designer.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_designer_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_edid_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_egl_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_fb_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_fontdatabase_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_gamepad.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_gamepad_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_gui.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_gui_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_help.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_help_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_location.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_location_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_multimedia.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_multimedia_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_multimediawidgets.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_network.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_network_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_networkauth.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_networkauth_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_nfc.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_nfc_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_opengl.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_opengl_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_openglextensions.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_openglextensions_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_packetprotocol_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_platformcompositor_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_positioning.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_positioning_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_positioningquick.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_positioningquick_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_printsupport.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_printsupport_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_purchasing.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_purchasing_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qml.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qml_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qmldebug_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qmltest.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qmltest_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quick.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quick_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickcontrols2.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickshapes_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quicktemplates2.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickwidgets.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_remoteobjects.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_remoteobjects_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_repparser.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_repparser_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_script.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_script_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_scripttools.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_scripttools_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_scxml.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_scxml_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_sensors.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_sensors_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_serialbus.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_serialbus_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_serialport.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_serialport_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_sql.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_sql_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_studio3d.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_studio3d_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_svg.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_svg_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_testlib.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_testlib_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_texttospeech.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_texttospeech_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_theme_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_uiplugin.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_uitools.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_uitools_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_virtualkeyboard.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_virtualkeyboard_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_vulkan_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_webchannel.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_webchannel_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_websockets.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_websockets_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_widgets.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_widgets_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_windowsuiautomation_support_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_winextras.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_winextras_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_xml.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_xml_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_xmlpatterns.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/qt_functions.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/qt_config.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/win32-g++/qmake.conf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/spec_post.prf:
.qmake.stash:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/exclusive_builds.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/toolchain.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/default_pre.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/win32/default_pre.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/resolve_config.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/exclusive_builds_post.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/default_post.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/qml_debug.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/precompile_header.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/warn_on.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/qmake_use.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/file_copies.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/win32/windows.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/testcase_targets.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/exceptions.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/yacc.prf:
O:/Qt/5.12.5/mingw73_64/mkspecs/features/lex.prf:
source/RestAPI.pro:
qmake: FORCE
	@$(QMAKE) -o Makefile source\RestAPI.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"

qmake_all: sub-app-qmake_all sub-src-qmake_all sub-tests-unit-qmake_all FORCE

make_first: sub-app-make_first sub-src-make_first sub-tests-unit-make_first  FORCE
all: sub-app-all sub-src-all sub-tests-unit-all  FORCE
clean: sub-app-clean sub-src-clean sub-tests-unit-clean  FORCE
distclean: sub-app-distclean sub-src-distclean sub-tests-unit-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash
install_subtargets: sub-app-install_subtargets sub-src-install_subtargets sub-tests-unit-install_subtargets FORCE
uninstall_subtargets: sub-app-uninstall_subtargets sub-src-uninstall_subtargets sub-tests-unit-uninstall_subtargets FORCE

sub-app-debug: sub-src-debug
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile debug
sub-src-debug:
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile debug
sub-tests-unit-debug:
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile debug
debug: sub-app-debug sub-src-debug sub-tests-unit-debug

sub-app-release: sub-src-release
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile release
sub-src-release:
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile release
sub-tests-unit-release:
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile release
release: sub-app-release sub-src-release sub-tests-unit-release

sub-app-check: sub-src-check
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile check
sub-src-check:
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile check
sub-tests-unit-check:
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile check
check: sub-app-check sub-src-check sub-tests-unit-check

sub-app-benchmark: sub-src-benchmark
	@if not exist app\ mkdir app\ & if not exist app\ exit 1
	cd app\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\app\app.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile benchmark
sub-src-benchmark:
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\src\src.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile benchmark
sub-tests-unit-benchmark:
	@if not exist tests\unit\ mkdir tests\unit\ & if not exist tests\unit\ exit 1
	cd tests\unit\ && ( if not exist Makefile $(QMAKE) -o Makefile D:\ProjectsC++\RestAPI\source\tests\unit\unit.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile benchmark
benchmark: sub-app-benchmark sub-src-benchmark sub-tests-unit-benchmark
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

