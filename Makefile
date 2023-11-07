AS65?=ca65
LD65?=ld65

PRG=obj/memory.o obj/registers.o obj/prg0.o obj/prg1.o obj/prg2.o obj/prg3.o obj/prg4.o obj/prg5.o obj/prg6.o obj/prg7.o
CHR=bin/chr0.bin bin/chr1.bin bin/chr2.bin bin/chr3.bin bin/chr4.bin bin/chr5.bin bin/chr6.bin bin/chr7.bin bin/chr8.bin bin/chr9.bin bin/chrA.bin bin/chrB.bin bin/chrC.bin bin/chrD.bin

Zelda2Reassembled.nes: bin/header.bin prg.bin chr.bin
	cat $+ > .$@.new
	mv .$@.new $@

obj/%.o: src/%.asm inc/mmc1.asm inc/nes.asm inc/macros.asm inc/globals.asm inc/variables.asm src/prg7/reset.asm src/prg7/vector.asm
	mkdir -p obj
	${AS65} -I inc -o $@ $<

prg.bin: nes.cfg $(PRG)
	$(LD65) -C nes.cfg -o $@ $(PRG)

chr.bin: $(CHR)
	cat $+ > .$@.new
	mv .$@.new $@

# Checks that the produced rom matches a known-vanilla checksum
check: prg.bin chr.bin vanilla-rom.sum
	sha1sum -c vanilla-rom.sum

clean:
	rm -f chr.bin prg.bin obj/*.o Zelda2Reassembled.nes
