LOCAL_PATH := $(call my-dir)

###########################
#
# Amiberry shared library
#
###########################

include $(CLEAR_VARS)

LOCAL_MODULE := amiberry
LOCAL_SHARED_LIBRARIES := SDL2 guisan

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/include/uae
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/osdep

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,, \
	$(LOCAL_PATH)/src/akiko.cpp \
	$(LOCAL_PATH)/src/ar.cpp \
	$(LOCAL_PATH)/src/aros.rom.cpp \
	$(LOCAL_PATH)/src/audio.cpp \
	$(LOCAL_PATH)/src/autoconf.cpp \
	$(LOCAL_PATH)/src/blitfunc.cpp \
	$(LOCAL_PATH)/src/blittable.cpp \
	$(LOCAL_PATH)/src/blitter.cpp \
	$(LOCAL_PATH)/src/blkdev.cpp \
	$(LOCAL_PATH)/src/blkdev_cdimage.cpp \
	$(LOCAL_PATH)/src/bsdsocket.cpp \
	$(LOCAL_PATH)/src/calc.cpp \
	$(LOCAL_PATH)/src/cd32_fmv.cpp \
	$(LOCAL_PATH)/src/cd32_fmv_genlock.cpp \
	$(LOCAL_PATH)/src/cdrom.cpp \
	$(LOCAL_PATH)/src/cfgfile.cpp \
	$(LOCAL_PATH)/src/cia.cpp \
	$(LOCAL_PATH)/src/crc32.cpp \
	$(LOCAL_PATH)/src/custom.cpp \
	$(LOCAL_PATH)/src/def_icons.cpp \
	$(LOCAL_PATH)/src/devices.cpp \
	$(LOCAL_PATH)/src/disk.cpp \
	$(LOCAL_PATH)/src/diskutil.cpp \
	$(LOCAL_PATH)/src/dlopen.cpp \
	$(LOCAL_PATH)/src/drawing.cpp \
	$(LOCAL_PATH)/src/events.cpp \
	$(LOCAL_PATH)/src/expansion.cpp \
	$(LOCAL_PATH)/src/fdi2raw.cpp \
	$(LOCAL_PATH)/src/filesys.asm \
	$(LOCAL_PATH)/src/flashrom.cpp \
	$(LOCAL_PATH)/src/fpp.cpp \
	$(LOCAL_PATH)/src/fsdb.cpp \
	$(LOCAL_PATH)/src/fsdb_unix.cpp \
	$(LOCAL_PATH)/src/fsusage.cpp \
	$(LOCAL_PATH)/src/gayle.cpp \
	$(LOCAL_PATH)/src/gfxboard.cpp \
	$(LOCAL_PATH)/src/gfxutil.cpp \
	$(LOCAL_PATH)/src/hardfile.cpp \
	$(LOCAL_PATH)/src/hrtmon.rom.cpp \
	$(LOCAL_PATH)/src/ide.cpp \
	$(LOCAL_PATH)/src/inputdevice.cpp \
	$(LOCAL_PATH)/src/keybuf.cpp \
	$(LOCAL_PATH)/src/main.cpp \
	$(LOCAL_PATH)/src/memory.cpp \
	$(LOCAL_PATH)/src/native2amiga.cpp \
	$(LOCAL_PATH)/src/rommgr.cpp \
	$(LOCAL_PATH)/src/rtc.cpp \
	$(LOCAL_PATH)/src/savestate.cpp \
	$(LOCAL_PATH)/src/scsi.cpp \
	$(LOCAL_PATH)/src/statusline.cpp \
	$(LOCAL_PATH)/src/traps.cpp \
	$(LOCAL_PATH)/src/uaelib.cpp \
	$(LOCAL_PATH)/src/uaeresource.cpp \
	$(LOCAL_PATH)/src/zfile.cpp \
	$(LOCAL_PATH)/src/zfile_archive.cpp \
	$(LOCAL_PATH)/src/archivers/7z/7zAlloc.cpp \
	$(LOCAL_PATH)/src/archivers/7z/7zBuf.cpp \
	$(LOCAL_PATH)/src/archivers/7z/7zCrc.cpp \
	$(LOCAL_PATH)/src/archivers/7z/7zCrcOpt.cpp \
	$(LOCAL_PATH)/src/archivers/7z/7zDec.cpp \
	$(LOCAL_PATH)/src/archivers/7z/7zIn.cpp \
	$(LOCAL_PATH)/src/archivers/7z/7zStream.cpp \
	$(LOCAL_PATH)/src/archivers/7z/Bcj2.cpp \
	$(LOCAL_PATH)/src/archivers/7z/Bra.cpp \
	$(LOCAL_PATH)/src/archivers/7z/Bra86.cpp \
	$(LOCAL_PATH)/src/archivers/7z/LzmaDec.cpp \
	$(LOCAL_PATH)/src/archivers/7z/Lzma2Dec.cpp \
	$(LOCAL_PATH)/src/archivers/7z/BraIA64.c \
	$(LOCAL_PATH)/src/archivers/7z/Delta.c \
	$(LOCAL_PATH)/src/archivers/7z/Sha256.c \
	$(LOCAL_PATH)/src/archivers/7z/Xz.cpp \
	$(LOCAL_PATH)/src/archivers/7z/XzCrc64.c \
	$(LOCAL_PATH)/src/archivers/7z/XzDec.c \
	$(LOCAL_PATH)/src/archivers/dms/crc_csum.cpp \
	$(LOCAL_PATH)/src/archivers/dms/getbits.cpp \
	$(LOCAL_PATH)/src/archivers/dms/maketbl.cpp \
	$(LOCAL_PATH)/src/archivers/dms/pfile.cpp \
	$(LOCAL_PATH)/src/archivers/dms/tables.cpp \
	$(LOCAL_PATH)/src/archivers/dms/u_deep.cpp \
	$(LOCAL_PATH)/src/archivers/dms/u_heavy.cpp \
	$(LOCAL_PATH)/src/archivers/dms/u_init.cpp \
	$(LOCAL_PATH)/src/archivers/dms/u_medium.cpp \
	$(LOCAL_PATH)/src/archivers/dms/u_quick.cpp \
	$(LOCAL_PATH)/src/archivers/dms/u_rle.cpp \
	$(LOCAL_PATH)/src/archivers/lha/crcio.cpp \
	$(LOCAL_PATH)/src/archivers/lha/dhuf.cpp \
	$(LOCAL_PATH)/src/archivers/lha/header.cpp \
	$(LOCAL_PATH)/src/archivers/lha/huf.cpp \
	$(LOCAL_PATH)/src/archivers/lha/larc.cpp \
	$(LOCAL_PATH)/src/archivers/lha/lhamaketbl.cpp \
	$(LOCAL_PATH)/src/archivers/lha/lharc.cpp \
	$(LOCAL_PATH)/src/archivers/lha/shuf.cpp \
	$(LOCAL_PATH)/src/archivers/lha/slide.cpp \
	$(LOCAL_PATH)/src/archivers/lha/uae_lha.cpp \
	$(LOCAL_PATH)/src/archivers/lha/util.cpp \
	$(LOCAL_PATH)/src/archivers/lzx/unlzx.cpp \
	$(LOCAL_PATH)/src/archivers/mp2/kjmp2.cpp \
	$(LOCAL_PATH)/src/archivers/wrp/warp.cpp \
	$(LOCAL_PATH)/src/archivers/zip/unzip.cpp \
	$(LOCAL_PATH)/src/caps/caps_win32.cpp \
	$(LOCAL_PATH)/src/machdep/support.cpp \
	$(LOCAL_PATH)/src/osdep/bsdsocket_host.cpp \
	$(LOCAL_PATH)/src/osdep/cda_play.cpp \
	$(LOCAL_PATH)/src/osdep/charset.cpp \
	$(LOCAL_PATH)/src/osdep/fsdb_host.cpp \
	$(LOCAL_PATH)/src/osdep/amiberry_hardfile.cpp \
	$(LOCAL_PATH)/src/osdep/keyboard.cpp \
	$(LOCAL_PATH)/src/osdep/mp3decoder.cpp \
	$(LOCAL_PATH)/src/osdep/picasso96.cpp \
	$(LOCAL_PATH)/src/osdep/writelog.cpp \
	$(LOCAL_PATH)/src/osdep/amiberry.cpp \
	$(LOCAL_PATH)/src/osdep/amiberry_filesys.cpp \
	$(LOCAL_PATH)/src/osdep/amiberry_input.cpp \
	$(LOCAL_PATH)/src/osdep/amiberry_gfx.cpp \
	$(LOCAL_PATH)/src/osdep/amiberry_gui.cpp \
	$(LOCAL_PATH)/src/osdep/amiberry_rp9.cpp \
	$(LOCAL_PATH)/src/osdep/amiberry_mem.cpp \
	$(LOCAL_PATH)/src/osdep/sigsegv_handler.cpp \
	$(LOCAL_PATH)/src/sounddep/sound.cpp \
	$(LOCAL_PATH)/src/osdep/gui/UaeRadioButton.cpp \
	$(LOCAL_PATH)/src/osdep/gui/UaeDropDown.cpp \
	$(LOCAL_PATH)/src/osdep/gui/UaeCheckBox.cpp \
	$(LOCAL_PATH)/src/osdep/gui/UaeListBox.cpp \
	$(LOCAL_PATH)/src/osdep/gui/InGameMessage.cpp \
	$(LOCAL_PATH)/src/osdep/gui/SelectorEntry.cpp \
	$(LOCAL_PATH)/src/osdep/gui/ShowHelp.cpp \
	$(LOCAL_PATH)/src/osdep/gui/ShowMessage.cpp \
	$(LOCAL_PATH)/src/osdep/gui/SelectFolder.cpp \
	$(LOCAL_PATH)/src/osdep/gui/SelectFile.cpp \
	$(LOCAL_PATH)/src/osdep/gui/CreateFilesysHardfile.cpp \
	$(LOCAL_PATH)/src/osdep/gui/EditFilesysVirtual.cpp \
	$(LOCAL_PATH)/src/osdep/gui/EditFilesysHardfile.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelAbout.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelPaths.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelQuickstart.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelConfig.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelCPU.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelChipset.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelCustom.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelROM.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelRAM.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelFloppy.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelHD.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelInput.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelDisplay.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelSound.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelMisc.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelSavestate.cpp \
	$(LOCAL_PATH)/src/osdep/gui/main_window.cpp \
	$(LOCAL_PATH)/src/osdep/gui/Navigation.cpp \
	$(LOCAL_PATH)/src/osdep/gui/androidsdl_event.cpp \
	$(LOCAL_PATH)/src/osdep/gui/PanelOnScreen.cpp \
	$(LOCAL_PATH)/src/newcpu.cpp \
	$(LOCAL_PATH)/src/newcpu_common.cpp \
	$(LOCAL_PATH)/src/readcpu.cpp \
	$(LOCAL_PATH)/src/cpudefs.cpp \
	$(LOCAL_PATH)/src/cpustbl.cpp \
	$(LOCAL_PATH)/src/cpuemu_0.cpp \
	$(LOCAL_PATH)/src/cpuemu_4.cpp \
	$(LOCAL_PATH)/src/cpuemu_11.cpp \
	$(LOCAL_PATH)/src/cpuemu_40.cpp \
	$(LOCAL_PATH)/src/cpuemu_44.cpp \
	$(LOCAL_PATH)/src/jit/compemu.cpp \
	$(LOCAL_PATH)/src/jit/compstbl.cpp \
	$(LOCAL_PATH)/src/jit/compemu_fpp.cpp \
	$(LOCAL_PATH)/src/jit/compemu_support.cpp)

#  src/osdep/neon_helper.s

#LOCAL_CFLAGS += -mfpu=neon -mfloat-abi=soft
LOCAL_CFLAGS += -DANDROIDSDL -DARMV6T2 -DUSE_ARMNEON -DARM_HAS_DIV -DUSE_SDL2
LOCAL_CFLAGS += -DANDROID=1 -DHAVE_NEON=1 -DHAVE_SDL_DISPLAY=1
LOCAL_CFLAGS += -DAMIBERRY -DARMV6_ASSEMBLY
LOCAL_CFLAGS += -DGCCCONSTFUNC="__attribute__((const))"
LOCAL_CFLAGS += -frename-registers
LOCAL_LDLIBS := -lSDL2 -lSDL2_image -lSDL2_ttf # -lguisan -L$(LOCAL_PATH)/guisan/lib
LOCAL_LDLIBS += -lpthread -lz -lpng -lrt -lxml2 -lFLAC -lmpg123 -ldl -lmpeg2convert -lmpeg2
LOCAL_CPPFLAGS += -MD -MP
LOCAL_CPPFLAGS += -Isrc -Isrc/osdep -Isrc/threaddep -Isrc/include -Isrc/archivers
cmd-strip := 

include $(BUILD_SHARED_LIBRARY)


