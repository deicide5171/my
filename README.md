* My

- Java
  1. 핵심 개념
  2. 버전별 특징
  
- Spring
  1. 핵심 개념
  2. 설정
  3. MVC(Model, View, Controller)
  4. Transaction
  5. Security
  6. Filter
  7. AOP
  8. Batch
  
- Javascript
  1. 핵심 개념
  2. ES6이후 버전 특징
  3. Node.js npm
  4. Babel 등등 개발에 필요한 설정 및 기본 구성
  
- GIS
  1. OGC
  2. OpenLayers
  3. Mapbox
  4. PostgreSQL
  5. QGIS
  6. 공간데이터
  7. GeoServer

- Mini Project

https://teams.microsoft.com/l/meetup-join/19%3ameeting_NTdhOWQwMzktODdjMi00OTUyLTk5NjctMTZkNmQxNTQ5YjYy%40thread.v2/0?context=%7b%22Tid%22%3a%22c3009ee9-85dd-4ecf-a86f-79941767d706%22%2c%22Oid%22%3a%22785c58de-018f-4a9f-8f41-d5ee0dd88b54%22%7d

https://teams.microsoft.com/dl/launcher/launcher.html?url=%2F_%23%2Fl%2Fmeetup-join%2F19%3Ameeting_MDQ2Yjc5ZTUtYjU2Yy00N2I1LTgzMjYtNTNiMDljYThiZDVi%40thread.v2%2F0%3Fcontext%3D%257b%2522Tid%2522%253a%2522c3009ee9-85dd-4ecf-a86f-79941767d706%2522%252c%2522Oid%2522%253a%2522534827b7-aa42-47df-8825-371453840ae6%2522%257d%26anon%3Dtrue&type=meetup-join&deeplinkId=a1105db8-b32f-4ca7-94b2-0fd202805aeb&directDl=true&msLaunch=true&enableMobilePage=true&suppressPrompt=true



어제 정업 관련 회의 내용 입니다.



파란색으로 표시한 부분이 저희가 Management (공정 프로그램) 에서 수정해야할 사항이고 뒤에 예상 작업기간을 작성했습니다.



확인 부탁드리고 수정사항 없다면 현대쪽에 아래와 같이 전달 드리고 Mcols 생성 해달라고 요청하겠습니다.



이상입니다.





--- 회의 내용 ---



아래 내용의 Action Item 검토 및 적용 가능 일정 산정 부탁드립니다.
 

내용 -

지도 테마 정업 (1회/월)
A.     절차 논의

                                i.         42번 타일서버(고사양)을 활용해 39번 서버 검증 절차 삭제 예정

                               ii.         북한 지역 타일링 방안 재고 필요

B.      Action Item

                                i.         39번 서버 à 42번 타일서버 데이터 전송 방식 변경 필요

1.     39번 MS-SQL à 39번 PostgreSQL à S3(.bak) à 42번 타일서버

                               ii.         종별 및 스타일 기반 ini 파일 생성 시 자동화 필요

                              iii.         CSS 수기 변경한 경우 검증 방안 필요

                              iv.         CSS, 심볼 이미지를 GeoServer 로 적재 시 자동화 필요

                               v.         데이터 공정 단계별 자동 전환 필요 (2D)

                              vi.         데이터 공정 진행 중 알림 체계 필요 (telegram 활용 가능) (4D)

                             vii.         공정 중 발생하는 정업 용 파일 (스타일 json 등) S3 자동 업로드 필요 (2D)

1.     업로드 후 사용자 배포 전 적재 여부 검증화 방안 필요

                            viii.         지도 검수 페이지에서 표시 지도 선택 기능 필요 (2D)

1.     Default 지도도 선택할 수 있도록 개선

2.     벡터주기 및 풀벡터의 경우 서비스 폴더 지정 가능하도록 개선

                              ix.         지도 검수 페이지의 checklist 추가 시 좌표, 레벨 입력 가능하도록 개선 (완료)


리얼링크 정업 (1회/2개월)
A.     절차 논의

                                i.         배포 5일 전 정업 시작

                               ii.         최종 서비스 전 데이터 재배포 시 타일링 수시 대응


지하주차장 정업 (1회/월)
A.     절차 논의

                                i.         원도개발팀에서 38번 서버로 주차장DB 적재할 수 있도록 진행 (국내지도개발팀에 요청)

B.      Action Item

                                i.         주차장 각도 정보, NAME_CODE 데이터 추가 필요 (MCOLS를 통한 공정 수정 요청 예정)

                               ii.         검증용 S3 폴더 및 샘플페이지를 통한 검증 필요


기타
A.     지하주차장 기능 적용 시 지도 표시 속도에 영향을 줄 수 있는지 검토 요청

 

이상.
 

감사합니다.
