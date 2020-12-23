"".f2 STEXT nosplit size=130 args=0x28 locals=0x20
	0x0000 00000 (call.go:3)	TEXT	"".f2(SB), NOSPLIT|ABIInternal, $32-40
	0x0000 00000 (call.go:3)	SUBQ	$32, SP
	0x0004 00004 (call.go:3)	MOVQ	BP, 24(SP)
	0x0009 00009 (call.go:3)	LEAQ	24(SP), BP
	0x000e 00014 (call.go:3)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000e 00014 (call.go:3)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000e 00014 (call.go:3)	MOVQ	$0, "".~r2+56(SP)
	0x0017 00023 (call.go:3)	MOVQ	$0, "".~r3+64(SP)
	0x0020 00032 (call.go:3)	MOVQ	$0, "".~r4+72(SP)
	0x0029 00041 (call.go:4)	MOVQ	"".a+40(SP), AX
	0x002e 00046 (call.go:4)	MOVQ	"".a+40(SP), CX
	0x0033 00051 (call.go:4)	IMULQ	AX, CX
	0x0037 00055 (call.go:4)	MOVQ	CX, "".a2+16(SP)
	0x003c 00060 (call.go:5)	MOVQ	"".b+48(SP), AX
	0x0041 00065 (call.go:5)	MOVQ	"".b+48(SP), CX
	0x0046 00070 (call.go:5)	IMULQ	AX, CX
	0x004a 00074 (call.go:5)	MOVQ	CX, "".b2+8(SP)
	0x004f 00079 (call.go:6)	MOVQ	"".a2+16(SP), AX
	0x0054 00084 (call.go:6)	ADDQ	CX, AX
	0x0057 00087 (call.go:6)	MOVQ	AX, "".c(SP)
	0x005b 00091 (call.go:8)	MOVQ	"".a2+16(SP), AX
	0x0060 00096 (call.go:8)	MOVQ	AX, "".~r2+56(SP)
	0x0065 00101 (call.go:8)	MOVQ	"".b2+8(SP), AX
	0x006a 00106 (call.go:8)	MOVQ	AX, "".~r3+64(SP)
	0x006f 00111 (call.go:8)	MOVQ	"".c(SP), AX
	0x0073 00115 (call.go:8)	MOVQ	AX, "".~r4+72(SP)
	0x0078 00120 (call.go:8)	MOVQ	24(SP), BP
	0x007d 00125 (call.go:8)	ADDQ	$32, SP
	0x0081 00129 (call.go:8)	RET
	0x0000 48 83 ec 20 48 89 6c 24 18 48 8d 6c 24 18 48 c7  H.. H.l$.H.l$.H.
	0x0010 44 24 38 00 00 00 00 48 c7 44 24 40 00 00 00 00  D$8....H.D$@....
	0x0020 48 c7 44 24 48 00 00 00 00 48 8b 44 24 28 48 8b  H.D$H....H.D$(H.
	0x0030 4c 24 28 48 0f af c8 48 89 4c 24 10 48 8b 44 24  L$(H...H.L$.H.D$
	0x0040 30 48 8b 4c 24 30 48 0f af c8 48 89 4c 24 08 48  0H.L$0H...H.L$.H
	0x0050 8b 44 24 10 48 01 c8 48 89 04 24 48 8b 44 24 10  .D$.H..H..$H.D$.
	0x0060 48 89 44 24 38 48 8b 44 24 08 48 89 44 24 40 48  H.D$8H.D$.H.D$@H
	0x0070 8b 04 24 48 89 44 24 48 48 8b 6c 24 18 48 83 c4  ..$H.D$HH.l$.H..
	0x0080 20 c3                                             .
"".f1 STEXT size=151 args=0x20 locals=0x50
	0x0000 00000 (call.go:11)	TEXT	"".f1(SB), ABIInternal, $80-32
	0x0000 00000 (call.go:11)	MOVQ	(TLS), CX
	0x0009 00009 (call.go:11)	CMPQ	SP, 16(CX)
	0x000d 00013 (call.go:11)	PCDATA	$0, $-2
	0x000d 00013 (call.go:11)	JLS	141
	0x000f 00015 (call.go:11)	PCDATA	$0, $-1
	0x000f 00015 (call.go:11)	SUBQ	$80, SP
	0x0013 00019 (call.go:11)	MOVQ	BP, 72(SP)
	0x0018 00024 (call.go:11)	LEAQ	72(SP), BP
	0x001d 00029 (call.go:11)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (call.go:11)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (call.go:11)	MOVQ	$0, "".~r2+104(SP)
	0x0026 00038 (call.go:11)	MOVQ	$0, "".~r3+112(SP)
	0x002f 00047 (call.go:12)	MOVQ	"".a+88(SP), AX
	0x0034 00052 (call.go:12)	MOVQ	AX, (SP)
	0x0038 00056 (call.go:12)	MOVQ	"".b+96(SP), AX
	0x003d 00061 (call.go:12)	MOVQ	AX, 8(SP)
	0x0042 00066 (call.go:12)	PCDATA	$1, $0
	0x0042 00066 (call.go:12)	CALL	"".f2(SB)
	0x0047 00071 (call.go:12)	MOVQ	16(SP), AX
	0x004c 00076 (call.go:12)	MOVQ	AX, ""..autotmp_6+64(SP)
	0x0051 00081 (call.go:12)	MOVQ	24(SP), AX
	0x0056 00086 (call.go:12)	MOVQ	AX, ""..autotmp_7+56(SP)
	0x005b 00091 (call.go:12)	MOVQ	""..autotmp_6+64(SP), AX
	0x0060 00096 (call.go:12)	MOVQ	AX, "".x1+48(SP)
	0x0065 00101 (call.go:12)	MOVQ	""..autotmp_7+56(SP), AX
	0x006a 00106 (call.go:12)	MOVQ	AX, "".x2+40(SP)
	0x006f 00111 (call.go:13)	MOVQ	"".x1+48(SP), AX
	0x0074 00116 (call.go:13)	MOVQ	AX, "".~r2+104(SP)
	0x0079 00121 (call.go:13)	MOVQ	"".x2+40(SP), AX
	0x007e 00126 (call.go:13)	MOVQ	AX, "".~r3+112(SP)
	0x0083 00131 (call.go:13)	MOVQ	72(SP), BP
	0x0088 00136 (call.go:13)	ADDQ	$80, SP
	0x008c 00140 (call.go:13)	RET
	0x008d 00141 (call.go:13)	NOP
	0x008d 00141 (call.go:11)	PCDATA	$1, $-1
	0x008d 00141 (call.go:11)	PCDATA	$0, $-2
	0x008d 00141 (call.go:11)	CALL	runtime.morestack_noctxt(SB)
	0x0092 00146 (call.go:11)	PCDATA	$0, $-1
	0x0092 00146 (call.go:11)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 7e 48  dH..%....H;a.v~H
	0x0010 83 ec 50 48 89 6c 24 48 48 8d 6c 24 48 48 c7 44  ..PH.l$HH.l$HH.D
	0x0020 24 68 00 00 00 00 48 c7 44 24 70 00 00 00 00 48  $h....H.D$p....H
	0x0030 8b 44 24 58 48 89 04 24 48 8b 44 24 60 48 89 44  .D$XH..$H.D$`H.D
	0x0040 24 08 e8 00 00 00 00 48 8b 44 24 10 48 89 44 24  $......H.D$.H.D$
	0x0050 40 48 8b 44 24 18 48 89 44 24 38 48 8b 44 24 40  @H.D$.H.D$8H.D$@
	0x0060 48 89 44 24 30 48 8b 44 24 38 48 89 44 24 28 48  H.D$0H.D$8H.D$(H
	0x0070 8b 44 24 30 48 89 44 24 68 48 8b 44 24 28 48 89  .D$0H.D$hH.D$(H.
	0x0080 44 24 70 48 8b 6c 24 48 48 83 c4 50 c3 e8 00 00  D$pH.l$HH..P....
	0x0090 00 00 e9 69 ff ff ff                             ...i...
	rel 5+4 t=17 TLS+0
	rel 67+4 t=8 "".f2+0
	rel 142+4 t=8 runtime.morestack_noctxt+0
"".main STEXT size=158 args=0x0 locals=0x48
	0x0000 00000 (call.go:16)	TEXT	"".main(SB), ABIInternal, $72-0
	0x0000 00000 (call.go:16)	MOVQ	(TLS), CX
	0x0009 00009 (call.go:16)	CMPQ	SP, 16(CX)
	0x000d 00013 (call.go:16)	PCDATA	$0, $-2
	0x000d 00013 (call.go:16)	JLS	148
	0x0013 00019 (call.go:16)	PCDATA	$0, $-1
	0x0013 00019 (call.go:16)	SUBQ	$72, SP
	0x0017 00023 (call.go:16)	MOVQ	BP, 64(SP)
	0x001c 00028 (call.go:16)	LEAQ	64(SP), BP
	0x0021 00033 (call.go:16)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (call.go:16)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (call.go:17)	MOVQ	$1, (SP)
	0x0029 00041 (call.go:17)	MOVQ	$2, 8(SP)
	0x0032 00050 (call.go:17)	PCDATA	$1, $0
	0x0032 00050 (call.go:17)	CALL	"".f1(SB)
	0x0037 00055 (call.go:17)	MOVQ	16(SP), AX
	0x003c 00060 (call.go:17)	MOVQ	AX, ""..autotmp_2+40(SP)
	0x0041 00065 (call.go:17)	MOVQ	24(SP), AX
	0x0046 00070 (call.go:17)	MOVQ	AX, ""..autotmp_3+32(SP)
	0x004b 00075 (call.go:17)	MOVQ	""..autotmp_2+40(SP), AX
	0x0050 00080 (call.go:17)	MOVQ	AX, ""..autotmp_0+56(SP)
	0x0055 00085 (call.go:17)	MOVQ	""..autotmp_3+32(SP), AX
	0x005a 00090 (call.go:17)	MOVQ	AX, ""..autotmp_1+48(SP)
	0x005f 00095 (call.go:17)	NOP
	0x0060 00096 (call.go:17)	CALL	runtime.printlock(SB)
	0x0065 00101 (call.go:17)	MOVQ	""..autotmp_0+56(SP), AX
	0x006a 00106 (call.go:17)	MOVQ	AX, (SP)
	0x006e 00110 (call.go:17)	CALL	runtime.printint(SB)
	0x0073 00115 (call.go:17)	MOVQ	""..autotmp_1+48(SP), AX
	0x0078 00120 (call.go:17)	MOVQ	AX, (SP)
	0x007c 00124 (call.go:17)	NOP
	0x0080 00128 (call.go:17)	CALL	runtime.printint(SB)
	0x0085 00133 (call.go:17)	CALL	runtime.printunlock(SB)
	0x008a 00138 (call.go:18)	MOVQ	64(SP), BP
	0x008f 00143 (call.go:18)	ADDQ	$72, SP
	0x0093 00147 (call.go:18)	RET
	0x0094 00148 (call.go:18)	NOP
	0x0094 00148 (call.go:16)	PCDATA	$1, $-1
	0x0094 00148 (call.go:16)	PCDATA	$0, $-2
	0x0094 00148 (call.go:16)	CALL	runtime.morestack_noctxt(SB)
	0x0099 00153 (call.go:16)	PCDATA	$0, $-1
	0x0099 00153 (call.go:16)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 81  dH..%....H;a....
	0x0010 00 00 00 48 83 ec 48 48 89 6c 24 40 48 8d 6c 24  ...H..HH.l$@H.l$
	0x0020 40 48 c7 04 24 01 00 00 00 48 c7 44 24 08 02 00  @H..$....H.D$...
	0x0030 00 00 e8 00 00 00 00 48 8b 44 24 10 48 89 44 24  .......H.D$.H.D$
	0x0040 28 48 8b 44 24 18 48 89 44 24 20 48 8b 44 24 28  (H.D$.H.D$ H.D$(
	0x0050 48 89 44 24 38 48 8b 44 24 20 48 89 44 24 30 90  H.D$8H.D$ H.D$0.
	0x0060 e8 00 00 00 00 48 8b 44 24 38 48 89 04 24 e8 00  .....H.D$8H..$..
	0x0070 00 00 00 48 8b 44 24 30 48 89 04 24 0f 1f 40 00  ...H.D$0H..$..@.
	0x0080 e8 00 00 00 00 e8 00 00 00 00 48 8b 6c 24 40 48  ..........H.l$@H
	0x0090 83 c4 48 c3 e8 00 00 00 00 e9 62 ff ff ff        ..H.......b...
	rel 5+4 t=17 TLS+0
	rel 51+4 t=8 "".f1+0
	rel 97+4 t=8 runtime.printlock+0
	rel 111+4 t=8 runtime.printint+0
	rel 129+4 t=8 runtime.printint+0
	rel 134+4 t=8 runtime.printunlock+0
	rel 149+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
