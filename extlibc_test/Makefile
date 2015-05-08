
.PHONY: debug release clean all

include ../common.mk

TARGET_OBJS += extlibc_test.o
TARGET_OBJS += hello_world.o

$(TARGET_TEST): $(TARGET_OBJS)
	@echo "Building $(TARGET_TEST)"
	@cd $(DEST_FOLDER) && $(CC) $(TARGET_OBJS) -o $(TARGET_TEST)
	@echo "Building finished."

%.o: %.c
	@echo "Compiling $<"
	@$(CC) $(CCFLAGS) $(DEST_FOLDER)/$@ $<
