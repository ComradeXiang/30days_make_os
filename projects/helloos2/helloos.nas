; hello-os
; TAB=4

; ศบ?iฅ?yFAT12iฎ???pIใ?

		DB		0xeb, 0x4e, 0x90
		DB		"HELLOIPL"		; ??ๆIผฬยศฅCำI๘(8?)
		DW		512				; ?ข๎ๆisectorjIๅฌiK??512?j
		DB		1				; โฦiclusterjIๅฌiK??1ข๎ๆj
		DW		1				; FATINnสui๊สธๆ๊ข๎ๆ?nj
		DB		2				; FATIขiK??2j
		DW		224				; ชฺ?Iๅฌi๊ส?ฌ224?j
		DW		2880			; ?ฅ?IๅฌiK??2880๎ๆj
		DB		0xf0			; ฅ?I??iK?ฅ0xf0j
		DW		9				; FATI?xiK?ฅ9๎ๆj
		DW		18				; 1ขฅนitrackjL{ข๎ๆiK?ฅ18j
		DW		2				; ฅ?iK?ฅ2j
		DD		0				; sgpชๆCK?ฅ0
		DD		2880			; dส๊ฅ?ๅฌ
		DB		0,0,0x29		; ำ?sพCล่
		DD		0xffffffff		; iย\ฅjษ??
		DB		"HELLO-OS   "	; ฅ?Iผฬi11?j
		DB		"FAT12   "		; ฅ?iฎผฬi8?j
		RESB	18				; ๆ๓o18?

; ๖ๅฬ

		DB		0xb8, 0x00, 0x00, 0x8e, 0xd0, 0xbc, 0x00, 0x7c
		DB		0x8e, 0xd8, 0x8e, 0xc0, 0xbe, 0x74, 0x7c, 0x8a
		DB		0x04, 0x83, 0xc6, 0x01, 0x3c, 0x00, 0x74, 0x09
		DB		0xb4, 0x0e, 0xbb, 0x0f, 0x00, 0xcd, 0x10, 0xeb
		DB		0xee, 0xf4, 0xeb, 0xfd

; Mง?ฆช

		DB		0x0a, 0x0a		; 2ข?s
		DB		"hello, world"
		DB		0X0a
		DB		"my master is The Great XiangZC"
		DB		0x0a			; ?s
		DB		0

		RESB	0x1fe-$			; Uส0x00Cผ0x001fe

		DB		0x55, 0xaa

; ศบฅ??ๆศOชI?o

		DB		0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
		RESB	4600
		DB		0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
		RESB	1469432
