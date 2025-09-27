final_tutorial2.dmp: tutorial2.elf
	riscv64-unknown-elf-objdump -d tutorial2.elf > final_tutorial2.dmp

tutorial2.elf: tutorial2.c
	riscv64-unknown-elf-gcc -O3 -Wall -nostdlib -march=rv32imav -mabi=ilp32 tutorial2.c function.h fact.s -o tutorial2.elf

clean:
	rm -f tutorial2.elf final_tutorial2.dmp
