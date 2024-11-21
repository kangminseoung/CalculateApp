## Calculator App 개요  
+ 계산기 앱은 Swift 및 UIKit으로 구축된 간단한 iOS 애플리케이션 입니다.   
+ 재설정(AC) 및 같음(=) 기능과 덧셈, 뺄셈, 곱셈, 나눗셈과 같은 기본 산술 연산을 지원합니다.
***
## Calculator App 기능
+ 기본 연산 : +, -, *, /를 사용하여 계산을 수행.
+ 버튼을 누를 때마다 현재 계산 문자열이 동적으로 업데이트되는 것을 실시간 입력 표시.
+ 잘못된 수식이나 계산 오류에 대한 오류 메세지를 처리한다.
+ 버튼의 디자인 버튼들의 크기 및 위치 조정.
***
## Calculator App 사용된 기술
+ 언어 : Swift
+ UI 프레임워크 : UIKit
+ AutoLayout : SnapKit
+ 문자열 형태의 수식을 표현하기 위해 NSExpression 사용.
***
## Calculator App 작동 방식
1. 앱을 실행한다
2. 숫자 및 연사자 입력
3. = 버튼을 활용해 계산을 수행
4. 계산이 끝나면 AC버튼을 클릭해 초기화
***
## Calculator App UI 세부 사항.
+ 라벨 입력 및 결과를 표시 (화면 오른쪽 상단)
+ 숫자 버튼, 연산자 버튼, AC 리셋버튼, = 같음 버튼을 수직,수평 스택뷰를 이용해 간격을 조정.
+ 배경색은 검정색을 하고, 텍스트는 흰색을 표시.
+ 버튼 스타일은 동근 모서리 숫자의 경우는 어두운 회색 배경, 연산 자의 경우 주황색으로 구별.
+ 글꼴은 라벨과 버튼 모두 굵고 선명한 글꼴 사용.
