# This makefile:
# * Converts KiCad exported Gerber files to G-code files usable with LinuxCNC
# * Merges drill toolpaths to one 1mm drill toolpath
# * Reset coordinate system
# * Use resulting bla_front.ngc, bla_drill.ngc, bla_back.ngc files

PROJECT=sumoesp
MILL_FEED=300
DRILL_FEED=300
SPINDLE_SPEED=6000
FINISH_HEIGHT=40
DRILL_DEPTH=8

# Tiling
TILING_X=2
TILING_Y=1

all: export/${PROJECT}_drill.ngc

%_drill.ngc: %.drl %-F.Cu.gtl %-B.Cu.gbl
	pcb2gcode \
	    --vectorial \
		--zero-start \
		--onedrill \
		--software linuxcnc \
		--tile-x ${TILING_X} \
		--tile-y ${TILING_Y} \
		--front $*-F.Cu.gtl \
		--back $*-B.Cu.gbl \
		--drill $*.drl \
		--front-output $*_front.ngc \
		--back-output $*_back.ngc \
		--drill-output $*_drill.ngc \
		--metric \
		--zsafe 3 --zchange ${FINISH_HEIGHT} \
		--zwork 0 --offset 0.12 --mill-feed ${MILL_FEED} --mill-speed ${SPINDLE_SPEED} \
		--zdrill -${DRILL_DEPTH} --drill-feed ${DRILL_FEED} --drill-speed ${SPINDLE_SPEED}

clean:
	rm -fv export/*.ngc export/*-merged.drl
