cmc\cmc C:\VM\cmlib\stdlib.cm
cmc\cmc C:\VM\bios\disk.cm
cmc\cmc C:\VM\bios\graphics.cm
cmc\cmc C:\VM\bios\isr.cm
cmc\cmc C:\VM\bios\ir_handlers.cm
cmc\cmc C:\VM\bios\bios.cm

cml\cml -o C:\VM\bios.exe -l 0x000F0000 C:\VM\bios\bios.o C:\VM\bios\ir_handlers.o C:\VM\cmlib\stdlib.o C:\VM\bios\disk.o C:\VM\bios\graphics.o C:\VM\bios\isr.o

cmc\cmc C:\VM\bootloader\bootloader.cm

cml\cml -o C:\VM\bootloader.exe -l 0x00007C00 C:\VM\bootloader\bootloader.o

cmc\cmc C:\VM\kernel\kernel.cm

cml\cml -o C:\VM\kernel.exe C:\VM\kernel\kernel.o -l 1048576