
include common.mk

PROJ_ROOT := $(shell pwd)

.PHONY: debug release clean all

debug:
	@echo "Building the debug version."
	@cd ./extlibc_test && make DBG_MODE=1 PROJ_ROOT=$(PROJ_ROOT)

release:
	@echo "Building the release version."
	@cd ./extlibc_test && make DBG_MODE=0 PROJ_ROOT=$(PROJ_ROOT)

clean:
	@echo "Cleaning the project."
	@cd $(DEST_FOLDER_DBG) && rm -rf *.o *.d *.a *.exe
	@cd $(DEST_FOLDER_REL) && rm -rf *.o *.d *.a *.exe
	@echo "Finished cleaning."

all: debug release
	@echo "All building finished."

