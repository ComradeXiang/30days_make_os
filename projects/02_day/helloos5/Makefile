
# デフォルト動作

default :
	D:\30daysOS\tolset/z_tools/make.exe img

# ファイル生成規則

ipl.bin : ipl.nas Makefile
	D:\30daysOS\tolset/z_tools/nask.exe ipl.nas ipl.bin ipl.lst

helloos.img : ipl.bin Makefile
	D:\30daysOS\tolset/z_tools/edimg.exe   imgin:D:\30daysOS\tolset/z_tools/fdimg0at.tek \
		wbinimg src:ipl.bin len:512 from:0 to:0   imgout:helloos.img

# コマンド

asm :
	D:\30daysOS\tolset/z_tools/make.exe -r ipl.bin

img :
	D:\30daysOS\tolset/z_tools/make.exe -r helloos.img

run :
	D:\30daysOS\tolset/z_tools/make.exe img
	copy helloos.img D:\30daysOS\tolset\z_tools\qemu\fdimage0.bin
	D:\30daysOS\tolset/z_tools/make.exe -C D:\30daysOS\tolset/z_tools/qemu

install :
	D:\30daysOS\tolset/z_tools/make.exe img
	D:\30daysOS\tolset/z_tools/imgtol.com w a: helloos.img

clean :
	-del ipl.bin
	-del ipl.lst

src_only :
	D:\30daysOS\tolset/z_tools/make.exe clean
	-del helloos.img
