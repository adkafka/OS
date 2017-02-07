arch ?= x86_64
kernel := build/kernel-$(arch).bin
iso := build/os-$(arch).iso

linker_script := src/$(arch)/linker.ld
grub_cfg := src/$(arch)/grub.cfg
assembly_source_files := $(wildcard src/$(arch)/*.asm)
assembly_object_files := $(patsubst src/$(arch)/%.asm, \
	build/$(arch)/%.o, $(assembly_source_files))

ld := x86_64-elf-ld
objdump := x86_64-elf-objdump

.PHONY: all clean run iso

all: $(kernel)

clean:
	@rm -r build

run: $(iso)
	@qemu-system-x86_64 -cdrom $(iso)

iso: $(iso)

$(iso): $(kernel) $(grub_cfg)
	@mkdir -p build/isofiles/boot/grub
	@cp $(kernel) build/isofiles/boot/kernel.bin
	@cp $(grub_cfg) build/isofiles/boot/grub
	@grub-mkrescue -o $(iso) build/isofiles 
	@rm -r build/isofiles

$(kernel): $(assembly_object_files) $(linker_script)
	@$(ld) -n -T $(linker_script) -o $(kernel) $(assembly_object_files)

# compile assembly files
build/$(arch)/%.o: src/$(arch)/%.asm
	@mkdir -p $(shell dirname $@)
	@nasm -felf64 $< -o $@
