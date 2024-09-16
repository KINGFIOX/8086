Module: /Users/wangfiox/Documents/8086/hello.c
GROUP: 'DGROUP' CONST,CONST2,_DATA

Segment: _TEXT BYTE USE16 0000000D bytes
0000				main_:
0000  B8 00 00				mov		ax,offset DGROUP:L$1
0003  50				push		ax
0004  E8 00 00				call		printf_
0007  83 C4 02				add		sp,0x0002
000A  31 C0				xor		ax,ax
000C  C3				ret

Routine Size: 13 bytes,    Routine Base: _TEXT + 0000

No disassembly errors

Segment: CONST WORD USE16 0000000F bytes
0000				L$1:
0000  48 65 6C 6C 6F 2C 20 57 6F 72 6C 64 21 0A 00    Hello, World!..

Segment: CONST2 WORD USE16 00000000 bytes

Segment: _DATA WORD USE16 00000000 bytes

