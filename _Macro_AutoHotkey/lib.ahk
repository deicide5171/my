/*
	단축키 설정
	# : win 키
	! : alt
	^ : control
	+ : shift
	Numpad0 & Numpad1 : 숫자패드0 누른 상태에서 숫자패드1 누르면 실행 (키와 마우스 클릭 혼합하여 사용 가능)
	< : 왼쪽키(<^ : 왼쪽 control 키)
	> : 오른쪽키(>! : 오른쪽 alt 키)
	* : 아무키 조합
	~RButton : 마우스 우클릭
	WheelUp : 마우스 휠
*/
; Numpad0 & Numpad1::MsgBox You pressed Numpad1 while holding down Numpad0.1
; <^<!m::MsgBox You pressed LeftControl+LeftAlt+m.
; ~RButton::MsgBox You clicked the right mouse button.
; WheelUp::MsgBox You wheel up mouse.
/*
#n::
Run Notepad
return
*/
/*
^!s::
Run Notepad
return
*/

/*
	타이핑 치환
*/
/*
::text1::
(
Any text between the top and bottom parentheses is treated literally, including commas and percent signs.
By default, the hard carriage return (Enter) between the previous line and this one is also preserved.
    By default, the indentation (tab) to the left of this line is preserved.

See continuation section for how to change these default behaviors.
)
*/
::wlzladl::
(
[CJ개인정보지킴이]
)
return


/*
	hotkey 치환 
	a::b
	b::a
	
	#IfWinActive ahk_class Notepad ; 메모장에서만 a <-> b 치환하여 키 사용
	a::b  ; Makes the 'a' key send a 'b' key, but only in Notepad.
*/

/*
	마우스 버튼 값
	
	LButton
	RButton
	Mbutton : 휠버튼
	XButton1
	XButton2
	WheelDown
	WheelUp
	WheelLeft
	WheelRight
*/

/*
	Script를 EXE파일로 전환
	> Ahk2Exe.exe /in "MyScript.ahk" /icon "MyIcon.ico"
*/


#z::
   Reload
Return

#x::
	Loop, 87
	{
	
	MouseMove 400, 382
   Sleep 100
   Click 400, 382
   Sleep 2000
   
   MouseMove 1193, 239
   Sleep 100
   Click 1193, 239
   Sleep 2000
   
   MouseMove 350, 404
   Sleep 100
   Click 350, 404
   Sleep 100
   
   MouseMove 330, 438
   Sleep 100
   Click 330, 438
   Sleep 100   
   
   MouseMove 970, 536
   Sleep 100
   Click 970, 536
   Sleep 100
   
   MouseMove 970, 681
   Sleep 100
   Click 970, 681
   Sleep 100
   
   MouseMove 35, 929
   Sleep 100
   Click 35, 929
   Sleep 2000
   
   MouseMove 128, 207
   Sleep 100
   Click 128, 207
   Sleep 2000
	
	
	
	
	}
	
	
   
   
   
   
Return