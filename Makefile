######################################################################
##        Copyright (c) 2017 Carsten Wulff Software, Norway 
## ###################################################################
## Created       : wulff at 2017-4-17
## ###################################################################
##   This program is free software: you can redistribute it and/or modify
##   it under the terms of the GNU General Public License as published by
##   the Free Software Foundation, either version 3 of the License, or
##   (at your option) any later version.
## 
##   This program is distributed in the hope that it will be useful,
##   but WITHOUT ANY WARRANTY; without even the implied warranty of
##   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##   GNU General Public License for more details.
## 
##   You should have received a copy of the GNU General Public License
##   along with this program.  If not, see <http://www.gnu.org/licenses/>.
######################################################################

cic=../ciccreator/bin/cic
cicg=../ciccreator/bin/cic-gui
cics2aimspice=../ciccreator/scripts/cics2aimspice
tech=../ciccreator/examples/tech.json
lib = tb_stdlib

compile:
	cd build; ${cic} --I ../include ../src/${lib}.json ${tech} ${lib}
	cd build; ${cics2aimspice} ${lib}.cics ${lib}.spice

view:
	cd build; ${cicg} ${tech} ${lib}.cicl &
