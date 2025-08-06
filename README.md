## vga2ansi

This is a very simple program that reads 4000 bytes of input (to be exact, an 80x25 mode 03h screen that would normally be at address 0xB800 in DOS), and outputs a
UTF-8 compatible ANSI format representing it. This is designed to be able to be used within other applications.

Requires Linux-compatible GCC and Make in its current form; should be quite easy to compile on any OS if you update the (admittedly sloppy) makefile.

To use, simply `make`, then do the following:
- `./vga2ansi < INPUT.BIN > OUTPUT.ANS`
- `cat OUTPUT.ANS`

This program respects the COLORTERM env variable. Clear it if you want a classic ^]]30-38/40-48 colormapping, or set it to 'truecolor' for a truecolor-compatible output.
ex:
- `COLORTERM=truecolor ./vga2ansi < ENDOOM.BIN > ENDOOM.ANS`
- `COLORTERM= ./vga2ansi < TEST.BIN > TEST.ANS`

