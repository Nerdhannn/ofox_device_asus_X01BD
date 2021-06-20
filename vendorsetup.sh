#
# Copyright (C) 2018-2020 OrangeFox Recovery Project
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# See <http://www.gnu.org/licenses/>.
#
# Please maintain this if you use this script or any part of it
#
FDEVICE="X01BD"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

export OF_USE_LEGACY_CRYPTO=1
export PLATFORM_VERSION="16.1.0"
export PLATFORM_SECURITY_PATCH="2099-12-31"
export TW_DEFAULT_LANGUAGE="en"
export OF_OTA_RES_DECRYPT=1
#export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_ZIP_BINARY=1
export FOX_RESET_SETTINGS=1
export FOX_REPLACE_BUSYBOX_PS=1
export ALLOW_MISSING_DEPENDENCIES=true 
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_FLASHLIGHT_ENABLE="1"
export FOX_NOTCH="1"
export FOX_RESET_SETTINGS="1"
export OF_MAINTAINER="legacy07"
export FOX_BUILD_TYPE=Stable
export OF_DISABLE_DM_VERITY=1
export OF_DISABLE_FORCED_ENCRYPTION=1
export TW_DEVICE_VERSION="R11.1_1"
export FOX_VERSION="R11.1_1"
export FOX_R11=1
export OF_SUPPORT_PRE_FLASH_SCRIPT=1
export LC_ALL=C

export FOX_USE_NANO_EDITOR=1
export OF_USE_MAGISKBOOT=1
export FOX_ADVANCED_SECURITY=1
export OF_QUICK_BACKUP_LIST="/boot;/data;/system;/vendor;"
export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=0
export OF_PATCH_AVB20=1
export TARGET_DEVICE_ALT="ASUS_X01BD, X01BD"
export OF_RUN_POST_FORMAT_PROCESS=1

	# export FOX_USE_LZMA_COMPRESSION=1
	# export LZMA_RAMDISK_TARGETS="[recovery]"
	# export FOX_REPLACE_TOOLBOX_GETPROP=1

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
 	fi
  	
	add_lunch_combo omni_"$FDEVICE"-eng
	add_lunch_combo omni_"$FDEVICE"-userdebug
fi
#
