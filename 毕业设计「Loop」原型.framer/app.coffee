
setState = (icons) ->
	for icon in icons
		icon.states.stateOn =
			opacity: 1
			animationOptions:
				time: 0
		icon.states.stateOff =
			opacity: 0
			animationOptions:
				time: 0
setState([home,homedark,states,statesdark,device,devicedark])
			
TabBar.states.hide =
	opacity: 0
	animationOptions:
		time: 0
TabBar.states.show =
	opacity: 1
	animationOptions:
		time: 0

navi_device_light.states.hide =
	opacity:0
	animationOptions:
		time:.3
navi_device_light.states.show =
	opacity: 100
	animationOptions:
		time:.3

lighten_light.states.show =
	opacity: 100
	animationOptions:
		time:.3
lighten_drak.states.show =
	opacity: 100
	animationOptions:
		time:0
lighten_light.states.hide =
	opacity: 0
	animationOptions:
		time:0
lighten_drak.states.hide =
	opacity: 0
	animationOptions:
		time:0.3

lighten_on.states.show =
	opacity: 100
	animationOptions:
		time:.3
lighten_off.states.show =
	opacity: 100
	animationOptions:
		time:0
lighten_on.states.hide =
	opacity: 0
	animationOptions:
		time:0
lighten_off.states.hide =
	opacity: 0
	animationOptions:
		time:0.3
		


flow = new FlowComponent
flow.footer = TabBar
# flow.header = navibar
flow.showNext(landingpage)
TabBar.animate("hide")

landingpage.onTap ->
	flow.showNext(signin,animate:false)

button_登录.onTap ->
	flow.showNext(homepage,animate:false)
	TabBar.animate("show")
	lighten_light.animate("hide")

客厅控制.onTap ->
	flow.showOverlayBottom(livingroom)
	TabBar.animate("hide")
livingroomLeft.onTap ->
	flow.showPrevious(homepage)
	TabBar.animate("show")

devicedark.onTap ->
	flow.showNext(devicepage,animate:false)
	navi_device_light.animate("hide")
	home.animate("stateOff")
	homedark.animate("stateOn")
	states.animate("stateOff")
	devicedark.animate("stateOff")
	device.animate("stateOn")
	statesdark.animate("stateOn")

statesdark.onTap ->
	flow.showNext(statespage,animate:false)
	home.animate("stateOff")
	homedark.animate("stateOn")
	device.animate("stateOff")
	devicedark.animate("stateOn")
	statesdark.animate("stateOff")
	states.animate("stateOn")

homedark.onTap ->
	flow.showNext(homepage,animate:false)
	states.animate("stateOff")
	device.animate("stateOff")
	statesdark.animate("stateOn")
	devicedark.animate("stateOn")
	home.animate("stateOn")
	homedark.animate("stateOff")
	
# 侧边栏的跳转
homerightcode.states.hide =
	x: 0
	y: 0
	opacity: 0
homerightcode.states.show =
	x: 0
	y: 0
	opacity: 100
homerightcode.states.switchInstant "hide"

homerightscan.states.hide =
	x: 0
	y: 0
	opacity: 0
homerightscan.states.show =
	x: 0
	y: 0
	opacity: 100
homerightscan.states.switchInstant "hide"

icon_menu_home.onTap ->
	flow.showOverlayRight(homerightmain)
	
icon_menu_states.onTap ->
	flow.showOverlayRight(homerightmain)

icon_menu_device.onTap ->
	flow.showOverlayRight(homerightmain)
	
homecode.onTap ->
	homerightcode.animate("show")
scantab.onTap ->
	homerightscan.animate("show")
codetab.onTap ->
	homerightcode.animate("show")
	homerightscan.animate("hide")

back_code.onTap ->
	homerightcode.animate("hide",animate:false)
	homerightscan.animate("hide",animate:false)
back_scan.onTap ->
	homerightscan.animate("hide",animate:false)
	homerightcode.animate("hide",animate:false)

roomname.onTap ->
	flow.showOverlayLeft(homeleftmain)
	

devicename.onTap ->
	flow.showOverlayLeft(deviceleftmain)
	洗手间设备亮.animate("hide")
	
	
	
#添加设备
navi_device.states.hide =
	opacity:0
	animationOptions:
			time:0
navi_device.states.show =
	opacity:100
	animationOptions:
			time:0
			
devicepage.states.big =
	scale: 1
	animationOptions:
		time:.3
devicepage.states.small =
	scale: .93
	animationOptions:
		time:.3


add_device.onTap ->
	flow.showOverlayBottom(popbottom)
	navi_device.animate("hide")
	devicepage.animate("small")
	navi_device_light.animate("show")
finishadd.onTap ->
	flow.showPrevious(devicepage)
	devicepage.animate("big")
	navi_device.animate("show")
	navi_device_light.animate("hide")
foldback.onTap ->
	flow.showPrevious(devicepage)
	devicepage.animate("big")
	navi_device.animate("show")
#设备左侧栏状态切换
洗手间设备亮.states.hide =
	opacity: 0
	animationOptions:
		time: 0
洗手间设备亮.states.show =
	opacity: 100
	animationOptions:
		time:0


#开关动效
knob.states.off =
	x: 0
	animationOptions:
		time:.3
knob.states.on =
	x: 21
	animationOptions:
		time:.3
base_dark.states.show =
	opacity: 100
	animationOptions:
		time:0
base_dark.states.hide =
	opacity: 0
	animationOptions:
		time:0
		
base_light.states.show =
	opacity: 100

base_light.states.hide =
	opacity: 0

base_dark.states.switchInstant "show"
base_light.states.switchInstant "hide"
knob.states.switchInstant "off"
lighten_light.states.switchInstant "hide"
lighten_drak.states.switchInstant "show"



switch_off.onTap ->
	knob.stateCycle "on","off"
	base_dark.stateCycle "show","hide"
	base_light.stateCycle "hide","show"
	lighten_drak.stateCycle "hide","show"
	lighten_light.stateCycle "show","hide"
	
knob_red.states.off =
	x: 0
	animationOptions:
		time:.3
knob_red.states.on =
	x: 21
	animationOptions:
		time:.3
base_off.states.show =
	opacity: 100
	animationOptions:
		time:0
base_off.states.hide =
	opacity: 0
	animationOptions:
		time:0
		
base_on.states.show =
	opacity: 100

base_on.states.hide =
	opacity: 0

base_off.states.switchInstant "hide"
base_on.states.switchInstant "show"
knob_red.states.switchInstant "on"
lighten_on.states.switchInstant "show"
lighten_off.states.switchInstant "hide"



switch_on.onTap ->
	knob_red.stateCycle "on","off"
	base_off.stateCycle "show","hide"
	base_on.stateCycle "hide","show"
	lighten_off.stateCycle "hide","show"
	lighten_on.stateCycle "show","hide"
	
	
#主页侧边栏折叠动效
homelefthide.states.show =
	y:208
	opacity:100
# 	y: 208
# 	height: 200
	animationOptions:
		time:.5
homelefthide.states.hide =
	y: 8
	opacity: 0
# 	y: 208
# 	height: 0
	animationOptions:
		time:.5
homeleftmove.states.start =
	y: 208
	animationOptions:
		time:.5
homeleftmove.states.end =
	y: 432
	animationOptions:
		time:.5
homeleftarrow.states.on =
	rotation: 0
	animationOptions:
		time:.3
homeleftarrow.states.off =
	rotation: -90
	animationOptions:
		time:.3

homelefthide.states.switchInstant "hide"
homeleftmove.states.switchInstant "start"
homeleftarrow.states.switchInstant "off"

homeleftarrow.onTap ->
	homelefthide.stateCycle "show","hide"
	homeleftmove.stateCycle "start","end"
	homeleftarrow.stateCycle "on","off"
	
#右侧边栏

