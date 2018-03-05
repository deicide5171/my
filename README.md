<2018년>

1. 이론
	1. 자료구조(Java, Javascript) + 디자인 패턴 + 알고리즘(visualgo.net 으로 정리 및 공부 + 시험)
	2. 네트워크(기본 이론), 서버(tomcat, apache, nginx)
	3. Database - 설계, 튜닝 (MySql, MongoDB)
	4. 보안(Spring Security, SSL 인증)
	5. Spring(이론, 실습, Setting, Annotation, AOP, Batch 등등)
	6. Web Develop(실전기능구현)
	7. Git(SourceTree 활용법, Github 활용), SVN
	8. Angular
	9. Bootstrap
	10. AWS 제공 Service 훑어보기
	
	*. Rest API
	*. TDD
	*. 필독 도서 읽기

2. 실습
	0. 개인 노트북 - 개발자 셋팅, 소스백업(Local Git, 외장하드), 클라우드
	1. 자료구조, 면접문제, 성능측면, 알고리즘등 테스트 소스를 활용한 분석
	2. Nginx, Tomcat, https, Oauth2.0, JWT - 로컬셋팅
	3. Spring Template Project 설계 및 구현 (Front, BackEnd 별로 다양한 툴 기반 셋팅 준비)
		- Spring, Java, React, AWS, Mybatis, JPA 등등
	4. Github + SourceTree 활용
	5. AWS 구성 (설계, 비용)
	6. Spring Rest API
	7. 면접 Coding Test 문제풀기(java)

3. Web Application TO-DO
	- NoteBook Developer Setting
	- Project Setting(Spring Boot, Spring 설정)
	- 기본 웹페이지 띄우기
	- DB 설정
	- SVN, Git Setting
	- 기능 설계
	- 기능 구현
	- Test 소스 구현
	- ......
	- AWS 배포 및 웹서비스 시작
	
4. 영어회화
	
5. 탁구(67kg)
	
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
		
	
