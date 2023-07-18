BUILD := ../build
TARGET := $(BUILD)/../boot.bin
OBJECTS := sector.o
OBJECTS := $(addprefix $(BUILD)/,$(OBJECTS))
DIRS := sector

LD := ld
LDSCRIPT := script.ld
LDFLAGS := -T $(LDSCRIPT) -m elf_x86_64

.PHONY: boot
all: $(BUILD) $(DIRS) $(TARGET)

$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $^
	objcopy -O binary $@ $@

.PHONY: $(DIRS)
$(DIRS):
	$(MAKE) -C $@ all

$(BUILD):
	@mkdir -p $@

clean:
	@for DIR in $(DIRS); do \
		$(MAKE) -C $$DIR clean; \
	done
	@rm -f $(BUILD)/*
