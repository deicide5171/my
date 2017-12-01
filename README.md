<2018년>

1. 이론
	1. 자료구조(Java, Javascript) + 디자인 패턴 + 알고리즘(visualgo.net 으로 정리 및 공부 + 시험)
	2. 네트워크, 서버
	3. Database - 설계, 튜닝 (MySql, MongoDB)
	4. 보안
	5. Spring
	6. Web Develop
	7. HTML5
	8. Git
	9. Rest API
	10. TDD
	
	*. 필독 도서 읽기

2. 실습
	0. 개인 노트북 - 개발자 셋팅, 소스백업(Local Git, 외장하드), 클라우드
	1. 자료구조, 면접문제, 성능측면, 알고리즘등 테스트 소스를 활용한 분석
	2. Nginx, Tomcat, https, Oauth2.0, JWT - 로컬셋팅
	3. Spring Template Project 설계 및 구현 (Front, BackEnd 별로 다양한 툴 기반 셋팅 준비)
		- Spring, Java, React, AWS, Mybatis, JPA 등등
	4. Github + SourceTree 활용
	5. AWS 구성 (설계, 비용)
	6. AutoHotkey : 매크로 개발
	7. Spring Rest API
	8. Node.js 따라하기

3. Web Application

4. HTML5 웹 게임
	
5. 영어회화
	1. 여행관련 단어
	2. 여행관련 문장
	3. 유투브, 미드
	
6. 탁구 이론
	1. 기술 정리
	2. 서브, 서브리시브 정리
	3. 초반 3구 패턴 총정리
	4. 경기 스타일
	5. 유투브

7. 탁구 실습
	1. 67Kg
	2. 남 7부
	3. 남 6부
	
8. 경제, 제테크
	1. 세금
	2. 건강국민보험
	3. 국민연금
	4. 보험
	5. 주택청약
	6. 부동산
	7. 개인사업
	8. 개인방송 or 유투브

9. 여행
	1. 국내여행
	2. 해외 - 패키지여행
	3. 해외 - 자유여행
	
*. 기타
	1. 요리(한식, 양식, 커피, 제빵)
	2. 당구, 철권
	3. 보컬
	4. 역사
	
--------------------------------------------------------------------------------------------------------------------

1-1. 자료구조(visualgo.net + Javascript 자료구조 책)
	1. 정렬(Sort)
		1. 버블정렬(Bubble Sort) : 순차적으로 2개씩 값 비교하여 정렬안되어 있는 경우 Swap(교체). 더 이상 Swap(교체)이 발생하지 않을 때까지 반복.
			do
			  swapped = false
			  for i = 1 to indexOfLastUnsortedElement-1
				if leftElement > rightElement
				  swap(leftElement, rightElement)
				  swapped = true
			while swapped
		2. 선택정렬(Selection Sort) : 정렬대상들 중에 최소값을 찾는다. 맨 앞 대상과 Swap. 앞의 과정을 정렬대상 N개 - 1 번 반복하여 실행한다.
			repeat (numOfElements - 1) times
			  set the first unsorted element as the minimum
			  for each of the unsorted elements
				if element < currentMinimum
				  set element as new minimum
			  swap minimum with first unsorted position
		3. 삽입정렬(Insertion Sort) : 정렬대상을 순차적으로 확인. 자기보다 앞에 있는 숫자들과 비교(최대 N-1번)하여 더 작은 값이 나오면 그 값 뒤에 삽입을 N번 반복
			mark first element as sorted
			for each unsorted element X
			  'extract' the element X
			  for j = lastSortedIndex down to 0
				if current element j > X
				  move sorted element to the right by 1
				break loop and insert X here
		4. 병합정렬(Merge Sort) : 
			split each element into partitions of size 1
			recursively merge adjancent partitions
			  for i = leftPartStartIndex to rightPartLastIndex inclusive
				if leftPartHeadValue <= rightPartHeadValue
				  copy leftPartHeadValue
				else: copy rightPartHeadValue
			copy elements back to original array
		5. 빠른정렬(Quick Sort)
		6. 임의의빠른정렬(Random Quick Sort)
		7. ??정렬(Counting Sort)
		8. ??정렬(Radix Sort)
		
	
