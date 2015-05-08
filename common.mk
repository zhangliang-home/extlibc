CC:=gcc

CCFLAGS_DBG:= -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -o
CCFLAGS_REL:= -O2 -Wall -Wextra -c -fmessage-length=0 -o

DEST_FOLDER_DBG = $(PROJ_ROOT)/Debug
DEST_FOLDER_REL = $(PROJ_ROOT)/Release

PROJ_NAME:=extlibc

ifeq ($(DBG_MODE), 1)
	CCFLAGS:=$(CCFLAGS_DBG)
	DEST_FOLDER := $(DEST_FOLDER_DBG)
else
	CCFLAGS:=$(CCFLAGS_REL)
	DEST_FOLDER := $(DEST_FOLDER_REL)
endif

TARGET_TEST:=$(PROJ_NAME)_test.exe
TARGET_LIB:=$(PROJ_NAME).a