/*
	자동입력
	1. 지킴이(wlzladl) 입력 후 Space 입력시 자동으로 "[CJ개인정보지킴이]" 입력
*/
::wlzladl::
(
[CJ개인정보지킴이]
)
Return

/*
	사용 프로그램 자동 On
*/
^!a::
	Run, C:\sts
	Run, notepad++
	Run, explorer C:\Users\hawayi\Desktop\CJ, , Min
	Run, http://cjvdi.cj.net, , Max
	Run, C:\Program Files (x86)\Microsoft Office\Office15\lync.exe
	Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --user-agent="Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36 NetHelper70, , Min
Return

/*
	AHK Script 새로고침
*/
#z::
   Reload
Return

#n::                                        ;Win+n에 할당
DetectHiddenWindows,On                      ;비표시의 윈도우를 대상으로 포함하도록(듯이) 한다
ControlSend,,^!x,ahk_class Qt5QWindowIcon   ;대상 윈도우에Ctrl+N키를 송신
MsgBox asdf
return

/*
	RedMine 일감 전부 Close
*/
#x::
	Loop, 100
	{
		MouseMove 400, 406
		Sleep 1000
		Click 400, 406
		Sleep 2000

		MouseMove 1190, 235
		Sleep 1000
		Click 1190, 235
		Sleep 2000

		MouseMove 303, 415
		Sleep 500
		Click 303, 415
		Sleep 500
		
		MouseMove 330, 480
		Sleep 500
		Click 330, 480
		Sleep 500
		
		MouseMove 330, 465
		Sleep 500
		Click 330, 465
		Sleep 500
		
		MouseMove 330, 560
		Sleep 500
		Click 330, 560
		Sleep 500
		
		MouseMove 970, 535
		Sleep 500
		Click 970, 535
		Sleep 500
		
		MouseMove 970, 690
		Sleep 500
		Click 970, 690
		Sleep 500

		MouseMove 40, 950
		Sleep 1000
		Click 40, 950
		Sleep 1000
		
		MouseMove 116, 209
		Sleep 500
		Click 116, 209
		Sleep 1000
	}
Return