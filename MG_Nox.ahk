/*
	GUI
	
	1. 매크로 시작 button
	2. 매크로 중지 button
	3. 매크로 Reload button
	4. 설정 button
	
	5. window spy
	6. 마우스 현재 좌표, color, 창 Title, 창 class명
	7. Nox 실행
	8. Nox 종료
	9. CPU, Memory 사용량 모니터링
	10. 매크로 동작 로그
	11. Autohotkey 종료


; Example: Tab control:
Gui, Macro: New, , Nerugal
Gui, Macro: Add, Button, w100, 매크로시작
Gui, Macro: Add, Button, w100, 매크로중지
Gui, Macro: Add, Button, w100, Reload
Gui, Macro: Add, Button, w100, 설정
Gui, Macro: Add, Button, w100, Nox실행
Gui, Macro: Add, Button, w100, Nox종료
Gui, Macro: Add, Button, w100, 종료
Gui, Macro: Show
return

MacroButton종료:
GuiClose:
GuiEscape:
Gui, Submit
ExitApp

MacroButtonReload:
   Reload
Return

*/


/*
	전역 변수 설정
	
	1. 설정값
	2. 화면사이즈
	3. 이미지경로
*/

; "분노 스킬" 버튼
global 분노스킬x := 123
global 분노스킬y := 123

; "뒤로 가기" 버튼
global 뒤로가기x := 123
global 뒤로가기y := 123

; "협동" 버튼
global 협동x := 123
global 협동y := 123
; "파티 던전" 버튼
global 파티던전x := 123
global 파티던전y := 123
; "레이드" 버튼
global 레이드x := 123
global 레이드y := 123
; "빠른 참가" 버튼
global 빠른참가x := 123
global 빠른참가y := 123
; "다시하기" 버튼
global 다시하기x := 123
global 다시하기y := 123

; "모험(메인)" 버튼
; "스토리" 버튼
; "모험(세부)" 버튼
; 스테이지 선택
; "반복 전투" 버튼

; "골드 던전" 버튼
; "요일 던전" 버튼
; 골드, 요일 "난이도" 선택 버튼
; 골드, 요일 완료후 "해당 던전" 선택 버튼
; "무한의탑" 버튼
; "연속 전투" 버튼

; [알림] "아니오" 버튼
; [알림] "예" 버튼   필요하려나?
; [알림] "나가기" 버튼

; 로그 기록용 count 값들 필요

/*
	로그 설정
*/
global logFile = "MG_Nox_log.txt"
log(sentence){
	FileAppend, [%A_Year%/%A_Mon%/%A_Mday% %A_Hour%:%A_Min%:%A_Sec%] [%sentence%]`n, %logFile%
}

/*
	단축키 설정
*/
F1::
	/*
	;Settimer, SubR1, 1000
	if WinExist("ahk_class Notepad++"){
		ControlClick, x100 y100, *new 1 - Notepad++ [Administrator], , Left
		ControlSend, Scintilla1, 테스트테스트, *new 1 - Notepad++ [Administrator]
		;ControlSend, , abc, cmd.exe
		;ControlSend, , 테스트테스트, 제목 없음 - 메모장
	}
	*/
	
	
	log("로그입력!!!")
	
Return

F2::
	Reload
Return

F3::
	fPartyDungeon()
Return

F4::
	ExitApp
Return

SubR1:
	SendInput, {v}
Return

/*
	기능별 함수
	
	<다크어벤저3>
	1. 협동
		- 파티
		- 레이드
	2. 모험
		- 스토리
		- 모험
		- 골드던전
		- 요일던전
		- 무한의탑
	3. 대전
		- 개인
		- 3vs3
		
		
	
	4. 퀘스트
		- 업적
		- 주간
		- 일일
		- 메인
	5. 보너스
		- 이벤트
		- 휴식보상
		- 출석부
	6. 아리스
		- 축복받은 보물함(무료)
		- 일반 보물함(무료)
	7. 대장간
		- 연마제 생산
	8. 우편, 친구
	
	9. 일괄판매
	
	<공통>
	1. 이미지서치
	2. 창 전체 사이즈 기준으로 버튼 위치 좌표 계산
	
*/

fPartyDungeon(){
	; 메인화면으로 이동

	; "협동" 클릭

	; "파티 던전" 클릭

	; "빠른 참가" 클릭	* 보석사용하려고하면 중지

	; 기다리면 자동 시작

	; "메인 메뉴", "파티 던전", "다시하기" 중 1 선택
	; "메인 메뉴" : 메인화면으로 이동
	; "파티 던전" : "파티 던전" 화면으로 이동(오토에선 필요 없을듯.)
	; "다시하기" : "빠른 참가" 화면으로 이동
	; "다시하기" 반복

	; [파티 던전 깃발 부족 알림] "아니오" 선택시 "파티 던전" 화면으로 이동 -> "뒤로 가기" (="메인 메뉴") == fPartyDungeon() 종료
}

fRaid(){
	; 메인화면으로 이동

	; "협동" 클릭

	; "레이드" 클릭

	; "빠른 참가" 클릭

	; 기다리면 자동 시작

	; "메인 메뉴", "레이드", "다시하기" 중 1 선택
	; "메인 메뉴" : 메인화면으로 이동
	; "레이드" : "레이드" 화면으로 이동(오토에선 필요 없을듯.)
	; "다시하기" : "빠른 참가" 화면으로 이동
	; "다시하기" 반복

	; [레이드 깃발 부족 알림] "아니오" 선택시 "레이드" 화면으로 이동 -> "뒤로 가기" (="메인 메뉴")  == fRaid() 종료
}

fStory(){
	; 메인화면으로 이동

	; "모험" 클릭

	; "스토리" 클릭

	; "시작" 클릭
	
	; 기다리면 자동 시작

	; [전투 불능 상태] "나가기" 클릭 "스토리" 화면으로 이동후 "뒤로 가기"  fStory() 종료
}

fAdventure(){
	; 메인화면으로 이동

	; "모험" 클릭

	; "모험(세부)" 클릭

	; 스테이지 선택  ** 고민 필요!!
	
	; "반복 전투" 클릭

	; 기다리면 자동 시작

	; [전투 불능 상태] "나가기" 클릭 "모험(세부)" 화면으로 이동후 스테이지 재선택후 "반복 전투" 클릭 필요 *** 자세하게 확인필요
	
	
	
	; [모험 열쇠 부족 알림] "아니오" 선택시 "모험(세부)" 화면으로 이동 -> "뒤로 가기" (="메인 메뉴")  == fAdventure() 종료
}

fGoldDungeon(){
	; 메인화면으로 이동

	; "모험" 클릭

	; "골드 던전" 클릭

	; 난이도 선택후 전투 진행  ** 고민 필요
	
	; 전투 완료 화면에서 "골드 던전" 선택
	
	; 난이도 선택후 전투 진행  ** 고민 필요
	
	; 전투 완료 화면에서 "골드 던전" 선택
	
	; 따로 알림이 없어서 2회만 반복하고 "뒤로 가기" fGoldDungeon() 종료
}

fDayDungeon(){
	; 메인화면으로 이동

	; "모험" 클릭

	; "요일 던전" 클릭

	; 난이도 선택후 전투 진행  ** 고민 필요
	
	; 전투 완료 화면에서 "요일 던전" 선택
	
	; 난이도 선택후 전투 진행  ** 고민 필요
	
	; 전투 완료 화면에서 "요일 던전" 선택
	
	; 따로 알림이 없어서 1회만 반복하고 "뒤로 가기" fDayDungeon() 종료
}

fInfinityTower(){
	; 메인화면으로 이동

	; "모험" 클릭

	; "무한의탑" 클릭

	; "연속 전투" 클릭
	
	; [전투 불능 상태] "나가기" 클릭 "무한의탑" 화면으로 이동
	
	; "뒤로 가기" 클릭	fInfinityTower() 종료
}



fCommonAutoBattleCheckinBattle(){
	; (공통 - 전투중) "협동", "골드 던전" 오토중 "자동전투 off", "자동전투 on", "수동스킬" 상태인 경우, "자동전투 on" 상태로 변경
}

fCommonSkillinBattle(){
	; (공통 - 전투중) "분노 스킬" 1초마다 클릭
}

fCommonItemSell(){
	; (공통 - 가방 Full) 아이템 일괄 판매
}


fCommonProgramOn(programName, programPath){
	IfWinNotExist, programName
	{
		Run, programPath
	}
}

fCommonNoxOff(programName){
	IfWinExist, programName
	{
		WinClose, programName
	}
}

fCommonComputerOff(code){
	;Shutdown, 0 ; Logoff
	;Shutdown, 1 ; Shutdown
	;Shutdown, 2 ; Reboot
	;Shutdown, 4 ; Force
	;Shutdown, 6 ; Force a Reboot (2 + 4 = 6)
	;Shutdown, 8 ; Power Down
	
	Shutdown, code
}

/*
	<SecondCounter 클래스 사용법>
	
	counter := new SecondCounter
	counter.Start()
	Sleep 5000
	counter.Stop()
	Sleep 2000
*/
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
		; this.interval 시간마다 실행할 내용
        ToolTip % ++this.count
    }
}





