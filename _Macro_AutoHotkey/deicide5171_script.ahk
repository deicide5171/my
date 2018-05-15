/*
	- Name : Game Macro
	- Developer Name : deicide5171
	- Create Date : 2018.01.29
	- Update Date : 2018.02.09
	- Version : 1.0.1
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 전역변수 설정
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetDefaults(void){
	global
	logDir := "logs\deicide5171_script_log.txt"
	testPerX := 11.354167  ; C7
	testPerY := 31.388889  ; C7
	
	
	return
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 단축키 설정
; qwerasdf // F2(Reload) // F3(테스트실행) // F4(종료)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#q::
	target := "웹사이트 회원탈퇴 처리결과 통보서_tving.com_개인정보_20180219.xlsx"
	workingDir := "C:\VDI공유폴더"
	execProgram(target, workingDir)
Return

#w::
	getPerXY()
Return

#e::
	getPerXY()
Return

#r::
	getPerXY()
Return

#a::
	getPerXY()
Return

#s::
	getPerXY()
Return

#d::
	getPerXY()
Return

#f::
	getPerXY()
Return

F2::
	Reload
Return

F3::
	; 전역변수 설정
	SetDefaults(0)
	
	; GUI
	; GroupBox 설정값
	statGroupBoxW = 200
	statGroupBoxY = 500
	statGroupBoxTitle = 상태
	
	settingGroupBoxW = 200
	settingGroupBoxY = 500
	settingGroupBoxTitle = 설정
	
	buttonGroupBoxW = 200
	buttonGroupBoxY = 500
	buttonGroupBoxTitle = 매크로
	
	statPsettingGroupBoxW := statGroupBoxW + settingGroupBoxW
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; 상태 GroupBox
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	Gui, Add, GroupBox, w%statGroupBoxW% h%statGroupBoxY% cED006D  vGroup1, %statGroupBoxTitle%
	Gui, Add, Text, xs+5 ys+30 , * 추후 업데이트 예정
	/*
	Gui, Add, Checkbox, xs+5 yp+25 vCheck1 gCheck1Action, 체크박스 1
	Gui, Add, Checkbox, x+20 yp vCheck2 gCheck2Action, 체크박스 2
	Gui, Add, Checkbox, x+20 yp Right vCheck3 Checked, 체크박스 3 (오른쪽 위치, 구동 시 체크상태)
	Gui, Add, Radio, xs+5 y+15 gRadioGroup1 vRadioGroup1, 라디오 1-1 (기본)
	Gui, Add, Radio, x+20 yp gRadioGroup1, 라디오 1-2
	Gui, Add, Radio, x+20 yp gRadioGroup1 Right , 라디오 1-3 (오른쪽)
	Gui, Add, Text, xs+5 y+10 c1266FF, ---------------------------------그룹 나누기------------------------------------
	Gui, Add, Radio, xs+5 yp+20 gRadioGroup2 vRadioGroup2, 라디오 2-1 (기본)
	Gui, Add, Radio, x+20 yp gRadioGroup2, 라디오 2-2
	Gui, Add, Radio, x+20 yp gRadioGroup2 Right, 라디오 2-3 (오른쪽)
	Gui, Add, Button, x+15 yp gBT1, 선택 결과 확인
	*/
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; 설정 GroupBox
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	Gui, Add, GroupBox, xs+%statGroupBoxW% ys w%settingGroupBoxW% h%settingGroupBoxY% cED006D  vGroup2, %settingGroupBoxTitle%
	/*
	Gui, Add, Text, xs+5 yp+30 c1266FF, DropDownList:
	Gui, Add, DropDownList, x+30 yp-4 vDrop1 gDrop1Action, Select BG color||Red|Green|Blue|Black|Yellow
	Gui, Add, DropDownList, x+30 yp vDrop2, Select City||서울|뉴욕|런던|파리|로마|이스탄불
	Gui, Add, Text, xs+5 yp+35 c1266FF, Combobox:
	Gui, Add, ComboBox, x+46 yp-4 vCombo1, Red|Green|Blue|Black|Yellow
	Gui, Add, Button, x+30 yp-2 gBT2, 보기
	Gui, Add, Text, xs+5 y+5 cpurple, < 기타 purple, white 등 기본컬러 또는 RGB 6자리 코드(000000=black) 입력, [보기]  >
	Gui, Add, Text, xs+5 yp+30 c1266FF, ListBox:
	Gui, Add, ListBox, x+66 yp-4 vList1, Red|Green|Blue|Black|Yellow
	Gui, Add, Button, x+30 yp+17 gBT3, 보기
	Gui, Add, Button, x+72 yp gBT4, 선택 결과 확인
	*/
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; 버튼 GroupBox
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	Gui, Add, GroupBox, xs+%statPsettingGroupBoxW% ys w%buttonGroupBoxW% h%buttonGroupBoxY% cED006D vGroup3, %buttonGroupBoxTitle%
	Gui, Add, Button, xp+5 yp+20 gSTARTBT, 게임실행	; Nox실행 -> "검은사막"실행 -> 로그인 -> 케릭터 선택
	
	Gui, Add, Button, xp yp+30 gMBT1, Macro1	; 1번 숙제 진행
	Gui, Add, Button, xp yp+30 gMBT2, Macro2	; 2번 숙제 진행
	Gui, Add, Button, xp yp+30 gMBT3, Macro3	; 3번 숙제 진행
	Gui, Add, Button, xp yp+30 gMBT4, Macro4	; 4번 숙제 진행
	Gui, Add, Button, xp yp+30 gMBT5, Macro5	; 5번 숙제 진행
		
	Gui, Add, Button, xp yp+30 gSHUTDOWNBT, PC종료	; Nox종료 -> Shutdown 강제 실행
	Gui, Add, Button, xp yp+30 gEXITBT, 종료	; AutoHotKey Reload(= GUI 종료)
	
	
	/*
	Gui, Add, Text, xs+5 yp+30 c1266FF, Slider:
	Gui, Add, Slider, x+40 yp-4 w320 Tickinterval10 gSlider1 altsubmit vSlider1
	Gui, Add, Text, x+8 yp+6 c1266FF Left vNslider, 먼저 선택
	Gui, Add, Text, xs+5 yp+40 c1266FF, Progress:
	Gui, Add, Progress, x+20 yp-4 w320 h20 c1266FF BackgroundC6C6C6 Range0-100 vProgress1
	Gui, Add, Text, x+10 yp+6 c1266FF w20 Left vNprogress, 100
	Gui, Add, Button, x+15 yp-7 gBT5, 시작
	*/
	Gui, Show, AutoSize Center, Deicide5171
	return
	
Return

F4::
	ExitApp
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; GUI Button Function List
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
STARTBT:
	MsgBox, Nox실행 및 로그인 기능
return

MBT1:
	MsgBox, 1번 매크로
return
MBT2:
	MsgBox, 2번 매크로
return
MBT3:
	MsgBox, 3번 매크로
return
MBT4:
	MsgBox, 4번 매크로
return
MBT5:
	MsgBox, 5번 매크로
return

EXITBT:
	Reload
return

SHUTDOWNBT:
	; Nox종료
	
	
	; PC종료
	shutdownPcPower()
return

;----------------------------------------------------------------------------------- subroutine 1
Check1Action:
Gui, Submit, NoHide
if Check1=1
	GuiControl,, Group1, vGroup1: gCheck1Action- (1)번 체크
else
	GuiControl,, Group1, vGroup1: gCheck1Action- (1)번 체크 해제
return
Check2Action:
Gui, Submit, NoHide
if Check2=1
	GuiControl,, Group1, vGroup1: gCheck2Action- (2)번 체크
else
	GuiControl,, Group1, vGroup1: gCheck2Action- (2)번 체크 해제
return
RadioGroup1:
Gui, Submit, NoHide
GuiControl,, Group1, gRadioGroup1- 1그룹의 %RadioGroup1%번 radio 선택
return
RadioGroup2:
Gui, Submit, NoHide
GuiControl,, Group1, gRadioGroup2- 2그룹의 %RadioGroup2%번 radio 선택
return
BT1:
Gui, Submit, NoHide
GuiControl,, Group1, 선택결과: Check1(%Check1%), Check2(%Check2%), Check3(%Check3%), RadioGroup1(%RadioGroup1%), RadioGroup2(%RadioGroup2%)
return
;----------------------------------------------------------------------------------- subroutine 2-1
Drop1Action:
Gui, Submit, NoHide							; Gui의 값을 이용하기 위해서는 필수적인 명령줄입니다.
;MsgBox % Drop1 ",  " Drop2				; 활성화 해서 확인해 보세요
GuiControl,, Group2, vGroup2: gDrop1Action - %Drop1% 을 선택했군요...
if (Drop1="Red") {
	textcolor=yellow
} else if (Drop1="Green") {
	textcolor=white
} else if (Drop1="Blue") {
	textcolor=red
} else if (Drop1="Black") {
	textcolor=yellow
} else if (Drop1="Yellow") {
	textcolor=black
} else {
	MsgBox 아무 것도 선택 안했어요
	return
}
Gui, 2: Font, s10 bold
Gui, 2: Color, %Drop1%			; 바탕색
Gui, 2: Add, Text, c%textcolor%, 바탕색,글자색 확인 (2초 후 사라짐)			; 글자색
Gui, 2: Show, w250 h100, Gui 2
sleep, 2000
Gui, 2: Destroy		; gui 폭발!!
return
2GuiClose:
Gui, 2: Destroy
return
;----------------------------------------------------------------------------------- subroutine 2-2
BT2:
Gui, Submit, NoHide
if (Combo1="Red") {
	textcolor=yellow
} else if (Combo1="Green") {
	textcolor=white
} else if (Combo1="Blue") {
	textcolor=red
} else if (Combo1="Black") {
	textcolor=yellow
} else if (Combo1="Yellow") {
	textcolor=black
}
Gui, 3: Font, s10 bold
Gui, 3: Color, %Combo1%
Gui, 3: Add, Text, c%textcolor%, 바탕색,글자색 확인 (2초 후 사라짐)
Gui, 3: Show, w250 h100, Gui 3
sleep, 2000
Gui, 3: Destroy
return
3GuiClose:
Gui, 3: Destroy
return
;----------------------------------------------------------------------------------- subroutine 2-3
BT3:
Gui, Submit, NoHide
if (List1="Red") {
	textcolor=yellow
} else if (List1="Green") {
	textcolor=white
} else if (List1="Blue") {
	textcolor=red
} else if (List1="Black") {
	textcolor=yellow
} else if (List1="Yellow") {
	textcolor=black
} else {
	MsgBox 아무 것도 선택 안했어요
	return
}
Gui, 4: Font, s10 bold
Gui, 4: Color, %List1%
Gui, 4: Add, Text, c%textcolor%, 바탕색,글자색 확인 (2초 후 사라짐)
Gui, 4: Show, w250 h100, Gui 2
sleep, 2000
Gui, 4: Destroy
return

4GuiClose:
Gui, 4: Destroy
return

BT4:
Gui, Submit, NoHide
GuiControl,, Group2, 선택결과: Drop1(%Drop1%), Drop2(%Drop2%), Combo(%Combo1%), List(%List1%)
return
;----------------------------------------------------------------------------------- subroutine 3
Slider1:
Gui, Submit, NoHide
GuiControl,, Nslider, %Slider1%
return

BT5:
Gui, Submit, NoHide
N:=0
GuiControl,, Group3, vGroup3: 진행중....
Loop
{
	N++
	if (N>Slider1) {
		break
	}
	GuiControl,, Progress1, %N%
	GuiControl,, Nprogress, %N%
	sleep, 50
}

GuiControl,, Group3, vGroup3: 끄~~읕
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 개발 중
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Nox창 이름 확인
; Nox창 존재 유무 확인 및 활성화
; 게임 실행
; 로그인
; 메인화면 상태 확인 (클릭해야할 부분 확인)
; 버튼별 color, 좌표 등등 확인
; 숙제정리
; 기능정리
; 케릭터 변경 (5케릭)
; 리소스 확인
; GUI 꾸미기

; 멀티창?
	; 1~n 창 띄우기
	; 1~n 창 차례차례 숙제진행
	; 1~n 창 차례차례 케릭터 변경
	; 1~n 창 끝나면 종료

; 설정값?
Nox창 이름
숙제 반복 횟수?
PC종료 시간(몇분후? 몇시간후?)

; 상태
숙제상태
매크로 오류
PC종료 남은시간

	


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 개발 완료 - Function
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; "x, y" 형태로 현재 마우스 커서 좌표 Clipboard에 저장
getXY(){
	MouseGetPos, xpos, ypos 
	; clipboard =   ; Empty the clipboard.
	clipboard = %xpos%, %ypos%   ; Give the clipboard entirely new contents.
	Msgbox, X : %xpos%, Y : %ypos%
	
	#Persistent
	SetTimer, WatchCursor, 100
	return

	WatchCursor:
	MouseGetPos, , , id, control
	WinGetTitle, title, ahk_id %id%
	WinGetClass, class, ahk_id %id%
	ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control%
	return
}

; 활성화된 창 + 마우스 위치 기준 상태정보(id, class, title, control, 마우스좌표, 색상, 좌표비)
getPerXY(){
	MouseGetPos, MouseX, MouseY, id, control
	PixelGetColor, color, %MouseX%, %MouseY%, RGB
	perX := MouseX / A_ScreenWidth * 100
	perY := MouseY / A_ScreenHeight * 100
	oriX := Ceil(A_ScreenWidth * perX / 100)
	oriY := Ceil(A_ScreenHeight * perY / 100)
	
	WinGetTitle, title, ahk_id %id%
	WinGetClass, class, ahk_id %id%
	ToolTip, ahk_id %id%`nahk_class %class%`ntitle %title%`nControl: %control%`nMouseX: %MouseX%`nMouseY: %MouseY%`nColor: %color%`nperX: %perX%`nperY: %perY%`noriX: %oriX%`noriY: %oriY%, , , 1
	
	SetTimer RemoveToolTip, 10000
	clipboard = x, y : (%perX%, %perY%)`ncolor : %color%`ntitle : %title%`ncontrol : %control%
	return
}

RemoveToolTip: 
Tooltip 
return

; 활성화된 창 기준 x, y 비를 원본 좌표로 변환
getOriXY(perX, perY){
	oriX := Ceil(A_ScreenWidth * perX / 100)
	oriY := Ceil(A_ScreenHeight * perY / 100)
	
	clipboard = %oriX%, %oriY%
	
	WinGetTitle, title, ahk_id %id%
	WinGetClass, class, ahk_id %id%
	ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control%`nMouseX: %MouseX%`nMouseY: %MouseY%`nColor: %color%`noriX: %oriX%`noriY: %oriY%
	return
}

; RGB 형태로 현재 마우스 커서 좌표의 색상 Clipboard에 저장
getColor(){
	MouseGetPos, MouseX, MouseY ; 마우스 좌표 가져오기
	PixelGetColor, color, %MouseX%, %MouseY%, RGB ; 해당 마우스 좌표 Color ID 가져오기
	clipboard = %color%
	MsgBox %MouseX%, %MouseY% %color%
}

; 선택 지점의 ahk_class, title, control, mouse X,Y , color 정보 ToolTip 표출
getState(){
	MouseGetPos, MouseX, MouseY, id, control
	PixelGetColor, color, %MouseX%, %MouseY%, RGB
	clipboard = %MouseX%, %MouseY% %color%
	WinGetTitle, title, ahk_id %id%
	WinGetClass, class, ahk_id %id%
	ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control%`nMouseX: %MouseX%`nMouseY: %MouseY%`nColor: %color%
	return
}

; 특정 Pixel기준으로 검색 범위를 지정하여 Color ID 매칭 확인
searchPixel(pX, pY, pColor){
	; Params
	; 	특정 Pixel 위치 (pX, pY)
	; 	검색범위의 좌측상단 좌표(sX1, sY1)
	; 	검색범위의 우측하단 좌표(sX2, sY2)
	; 	검색 Color ID(BGR기준 decimal or hexadecimal (Ex) 0x9d6346)
	; 	유사도(0-255, 값이 클수록 많은 Color ID값과 매칭된다.)
	; 	Fast|RGB Fast : (256-color) 미만의 해상도를 빠르게 찾는다. RGB : BGR이 아닌 RGB 타입으로 검색한다.
	
	; 상황에 따라 아래 변수 변경 필요할 수 있음.
	variation = 1
	sX1 = 10
	sY1 = 10
	sX2 = 20
	sY2 = 20
	
	; MouseGetPos, MouseX, MouseY ; 마우스 좌표 가져오기
	; PixelSearch, %MouseX%, %MouseY%, 10, 10, 20, 20, 0xFEFEFE, %variation%, Fast RGB
	
	PixelSearch, pX, pY, sX1, sY1, sX2, sY2, pColor, %variation%, Fast RGB
	if ErrorLevel
		MsgBox, That color was not found in the specified region.
	else
		MsgBox, A color(=%pColor%) within %variation% shades of variation was found at X%pX% Y%pY%.
	
	return
}

; 특정 Pixel기준으로 검색 범위를 지정하여 Image 매칭 확인
searchImage(imgPath){
	/*
	; 사용법!!!
	; %A_ScriptDir% : 현재 .ahk파일 위치
	imgFolderPath = %A_ScriptDir%\img\
	imgFile = t.PNG
	searchImgPath = %imgFolderPath%%imgFile%
	searchImage(searchImgPath)
	*/
	
	; 검색 결과 찾은 X, 찾은 Y 좌표(fX, fY)
	; 검색 좌측상단 좌표(sX1, sY1)
	; 검색 우측하단 좌표(sX2, sY2)
	; 검색대상 이미지 경로(imgPath) : option 추가 가능 *IconN, *n, *TransN, *wn, *hn
	
	; 상황에 따라 아래 변수 변경 필요할 수 있음.
	sX1 = 0
	sY1 = 0
	sX2 = A_ScreenWidth
	sY2 = A_ScreenHeight
	variation = 20
	
	; A_ScreenWidth, A_ScreenHeight 스크린 width, height 변수
	; 예제 : 아이콘 이미지 찾기 -> ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *Icon3 %A_ProgramFiles%\SomeApp\SomeApp.exe 
	
	CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
	ImageSearch, fX, fY, sX1, sY1, sX2, sY2, *%variation% %imgPath%
	if ErrorLevel = 2
		MsgBox, Could not conduct the search. -> %imgPath%
	else if ErrorLevel = 1
		MsgBox Image could not be found on the screen.
	else
		MsgBox The Image(= %imgPath%) was found at X%fX% Y%fY%.
		
	return
}

; PC Power off
shutdownPcPower(){
	Shutdown, 8
	return
}

; Windows Force a reboot (reboot + force = 2 + 4 = 6)
shutdownRebootWindows(){
	Shutdown, 6
	return
}

; Log
log(sentence){
	; 사용법 : log("로그입력!!!")
	FileCreateDir, logs	; .ahk 위치에 "logs" 폴더 생성
	global logDir
	FileAppend, [%A_Year%/%A_Mon%/%A_Mday% %A_Hour%:%A_Min%:%A_Sec%] [%sentence%]`n, %logDir%
	return
}

; 특정 창 Key 입력
cSend(controlName, sendKey, winTitle){
	ControlSend, %controlName%, %sendKey%, %winTitle%
	return
}

; 특정 창 x, y 좌표 좌클릭
cLClick(x, y, winTitle){
	/*	사용법
	x = 210
	y = 383
	winTitle = 통합 문서1 - Excel
	cLClick(x, y, winTitle)
	*/
	
	ControlClick, x%x% y%y%, %winTitle%, ,Left
	return
}

; 특정 창 x, y 좌표 우클릭
cRClick(x, y, winTitle){
	ControlClick, x%x% y%y%, %winTitle%, ,Right
	return
}

; Beep음
callSoundBeep(frequency, duration){
	SoundBeep, %frequency%, %duration%  ; Play a higher pitch for half a second.
}

; Program 실행
execProgram(target, workingDir){
	Run, %target%, %workingDir%
	return
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; AutoHotKey 예제
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^k::
	; 예제 - 프로그램 실행
	Run Notepad++ == Run notepad++ == Run notepad++.exe

	; 예제 - MsgBox
	MsgBox This is ok.
	MsgBox, This is ok too (it has an explicit comma).
	
	; 예제 - 최상위 창에 Key 입력
	Send Sincerely,{enter}John Smith  ; This line sends keystrokes to the active (foremost) window.
Return

/*	예제 - Timer #1
; Example #1: Close unwanted windows whenever they appear:
#Persistent
SetTimer, CloseMailWarnings, 250
return

CloseMailWarnings:
WinClose, Microsoft Outlook, A timeout occured while communicating
WinClose, Microsoft Outlook, A connection to the server could not be established
return
*/

/*	예제 - Timer #2
; Example #2: Wait for a certain window to appear and then alert the user:
#Persistent
SetTimer, Alert1, 500
return

Alert1:
IfWinNotExist, Video Conversion, Process Complete
    return
; Otherwise:
SetTimer, Alert1, Off  ; i.e. the timer turns itself off here.
SplashTextOn, , , The video conversion is finished.
Sleep, 3000
SplashTextOff
return
*/

/*	예제 - Timer #3
; Example #3: Using a method as the timer subroutine.

counter := new SecondCounter
counter.Start()
Sleep 5000
counter.Stop()
Sleep 2000

; An example class for counting the seconds...
class SecondCounter {
    __New() {
        this.interval := 1000
        this.count := 0
        ; Tick() has an implicit parameter "this" which is a reference to
        ; the object, so we need to create a function which encapsulates
        ; "this" and the method to call:
        this.timer := ObjBindMethod(this, "Tick")
    }
    Start() {
        ; Known limitation: SetTimer requires a plain variable reference.
        timer := this.timer
        SetTimer % timer, % this.interval
        ToolTip % "Counter started"
    }
    Stop() {
        ; To turn off the timer, we must pass the same object as before:
        timer := this.timer
        SetTimer % timer, Off
        ToolTip % "Counter stopped at " this.count
    }
    ; In this example, the timer calls this method:
    Tick() {
        ToolTip % ++this.count
    }
}
*/

/*
IfWinExist, Untitled - Notepad
	WinActivate ; use the window found above
else
	WinActivate, Calculator	
*/

; 특정 프로그램에서만 동작
/*
; notepad 에서만 동작하는 단축키
#IfWinActive ahk_class Notepad
^!a::MsgBox You pressed Ctrl-Alt-A while Notepad is active.  ; This hotkey will have no effect if pressed in other windows (and it will "pass through").
#c::MsgBox You pressed Win-C while Notepad is active.
::btw::This replacement text for "btw" will occur only in Notepad.

; notepad를 제외한 나머지에서 동작하는 단축키
#IfWinActive
#c::MsgBox You pressed Win-C in a window other than Notepad.
*/

/*
; Example 1: Adjust volume by scrolling the mouse wheel over the taskbar.
#If MouseIsOver("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}

; Example 2: Simple word-delete shortcuts for all Edit controls.
#If ActiveControlIsOfClass("Edit")
^BS::Send ^+{Left}{Del}
^Del::Send ^+{Right}{Del}

ActiveControlIsOfClass(Class) {
    ControlGetFocus, FocusedControl, A
    ControlGet, FocusedControlHwnd, Hwnd,, %FocusedControl%, A
    WinGetClass, FocusedControlClass, ahk_id %FocusedControlHwnd%
    return (FocusedControlClass=Class)
}

; Example 3: Context-insensitive hotkey.
#If
Esc::ExitApp

; Example 4: Dynamic hotkeys. Requires Example 1.
NumpadAdd::
Hotkey, If, MouseIsOver("ahk_class Shell_TrayWnd")
if (doubleup := !doubleup)
    Hotkey, WheelUp, DoubleUp
else
    Hotkey, WheelUp, WheelUp
return

DoubleUp:
Send {Volume_Up 2}
return
*/

; 메모장 존재하면 해당 window activate
/*
#IfWinExist ahk_class Notepad
#n::WinActivate  ; Activates the window found by #IfWin.
*/
