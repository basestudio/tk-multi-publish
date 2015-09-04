@echo off
rem Copyright (c) 2013 Shotgun Software Inc.
rem 
rem CONFIDENTIAL AND PROPRIETARY
rem 
rem This work is provided "AS IS" and subject to the Shotgun Pipeline Toolkit 
rem Source Code License included in this distribution package. See LICENSE.
rem By accessing, using, copying or modifying this work you indicate your 
rem agreement to the Shotgun Pipeline Toolkit Source Code License. All rights 
rem not expressly granted therein are reserved by Shotgun Software Inc.

rem The path to output all built .py files to: 
set UI_PYTHON_PATH=../python/tk_multi_publish/ui

rem build UI's:
echo "building user interfaces..."
call pyside-uic --from-imports publish_form.ui -o publish_form.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" publish_form.py
move publish_form.py %UI_PYTHON_PATH%

call pyside-uic --from-imports publish_details_form.ui -o publish_details_form.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" publish_details_form.py
move publish_details_form.py %UI_PYTHON_PATH%

call pyside-uic --from-imports publish_progress_form.ui -o publish_progress_form.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" publish_progress_form.py
move publish_progress_form.py %UI_PYTHON_PATH%

call pyside-uic --from-imports publish_result_form.ui -o publish_result_form.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" publish_result_form.py
move publish_result_form.py %UI_PYTHON_PATH%

call pyside-uic --from-imports output_item.ui -o output_item.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" output_item.py
move output_item.py %UI_PYTHON_PATH%

call pyside-uic --from-imports group_header.ui -o group_header.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" group_header.py
move group_header.py %UI_PYTHON_PATH%

call pyside-uic --from-imports item_list.ui -o item_list.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" item_list.py
move item_list.py %UI_PYTHON_PATH%

call pyside-uic --from-imports item.ui -o item.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" item.py
move item.py %UI_PYTHON_PATH%

call pyside-uic --from-imports error_item.ui -o error_list.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" error_list.py
move error_list.py %UI_PYTHON_PATH%

call pyside-uic --from-imports error_item.ui -o error_item.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" error_item.py
move error_item.py %UI_PYTHON_PATH%


rem build resources
echo "building resources..."
pyside-rcc resources.qrc > resources_rc.py
sed -i "" -e "s/from PySide import/from tank.platform.qt import/g" -e "/# Created:/d" resources_rc.py
move resources_rc.py %UI_PYTHON_PATH%

set UI_PYTHON_PATH=
