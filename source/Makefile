BUILD := ../build
TARGET := $(BUILD)/../boot.bin
OBJECTS := sector.o boot.o
OBJECTS := $(addprefix $(BUILD)/,$(OBJECTS))
DIRS := sector

CC := clang++
CCFLAGS := \
	-target x86_64-elf \
	-ffreestanding \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics

LD := ld
LDSCRIPT := script.ld
LDFLAGS := -T $(LDSCRIPT) -m elf_x86_64

.PHONY: boot
all: $(BUILD) $(DIRS) $(TARGET)

$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $^
	objcopy -O binary $@ $@
	truncate -s 1M $@

.PHONY: $(DIRS)
$(DIRS):
	$(MAKE) -C $@ all

$(BUILD)/%.o: %.cc
	$(CC) $(CCFLAGS) -o $@ -c $^

$(BUILD):
	@mkdir -p $@

clean:
	@for DIR in $(DIRS); do \
		$(MAKE) -C $$DIR clean; \
	done
	@rm -f $(TARGET) $(BUILD)/*
