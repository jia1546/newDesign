setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
assignFile -p 1 -file "D:/elevator/aclk/clock.bit"
Program -p 1 
Program -p 1 
Program -p 1 
Program -p 1 
setCable -port auto
Program -p 1 
setMode -bs
deleteDevice -position 3
deleteDevice -position 2
deleteDevice -position 1
setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
assignFile -p 1 -file "D:/elevator/aclk/test/clk_1hz.bit"
Program -p 1 
setMode -bs
deleteDevice -position 3
deleteDevice -position 2
deleteDevice -position 1
setMode -bs
setMode -bs
setCable -port auto
addDevice -p 1 -file "D:/elevator/aclk/test/clk_1hz.bit"
setCable -port auto
setCable -port auto
Program -p 1 
Program -p 1 
Program -p 1 
assignFile -p 1 -file "D:/elevator/aclk/test/clk_1hz.bit"
Program -p 1 
setCable -port auto
Program -p 1 
Program -p 1 
assignFile -p 1 -file "D:/elevator/aclk/test/clk_1hz.bit"
Program -p 1 
saveProjectFile -file "D:/elevator/aclk/test/test.ipf"
setMode -bs
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
