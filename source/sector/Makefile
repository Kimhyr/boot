BUILD := ../../build/sector
TARGET := $(BUILD)/../sector.o
OBJECTS := start.o
OBJECTS := $(addprefix $(BUILD)/,$(OBJECTS))

AS := nasm
ASFLAGS := -f elf64

LD := ld
LDSCRIPT := ../script.ld
LDFLAGS := -T $(LDSCRIPT) -r

.PHONY: boot
all: $(BUILD) $(TARGET)

$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $^

$(BUILD)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $^

$(BUILD):
	@mkdir -p $@

clean:
	@rm -f $(BUILD)/*
