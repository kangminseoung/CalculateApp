//
//  CalculateViewController.swift
//  CalculateApp
//
//  Created by 강민성 on 11/20/24.
//

import SnapKit
import UIKit

class CalculateViewController: UIViewController {

    
    private var currentExpression: String = "" // currentExpression 초기값은 빈 문자열 ""입니다.

    // 첫번째 값 0을 할당
    private var firstNumber = 12345

    // 레이블 요소
    let label = UILabel()

    // 첫번쨰줄 Button 요소
    var sevenButton = UIButton()  // sevenButton이라는 이름의 UIButton 객체를 생성.
    let eightButton = UIButton()  // eightButton이라는 이름의 UIButton 객체를 생성.
    let nineButton = UIButton()  // nineButton이라는 이름의 UIButton 객체를 생성.
    let additionButton = UIButton()  // additionButton이라는 이름의 UIButton 객체를 생성.

    // 두번쨰줄 Button 요소
    let fourButton = UIButton()  // fourButton이라는 이름의 UIButton 객체를 생성.
    let fiveButton = UIButton()  // fiveButton이라는 이름의 UIButton 객체를 생성.
    let sixButton = UIButton()  // sixButton이라는 이름의 UIButton 객체를 생성.
    let subtractionButton = UIButton()  // subtractionButton이라는 이름의 UIButton 객체를 생성.

    // 세번째줄 Button 요소
    var firstButton = UIButton()  // firstButton이라는 이름의 UIButton 객체를 생성.
    let secondButton = UIButton()  // secondButton이라는 이름의 UIButton 객체를 생성.
    let threeButton = UIButton()  // threeButton이라는 이름의 UIButton 객체를 생성.
    let multplyButton = UIButton()  // multplyButton이라는 이름의 UIButton 객체를 생성.

    // 네번째줄 Button 요소
    let resetButton = UIButton()  // resetButton이라는 이름의 UIButton 객체를 생성.
    let zeroButton = UIButton()  // zeroButton이라는 이름의 UIButton 객체를 생성.
    let equalButton = UIButton()  // equalButton이라는 이름의 UIButton 객체를 생성.
    let divideButton = UIButton()  // divideButton이라는 이름의 UIButton 객체를 생성.

    // StackView 요소
    let firstStackView = UIStackView()  // firstStackView이라는 이름의 UIStackView 객체를 생성.
    let secondStackView = UIStackView()  // secondStackView이라는 이름의 UIStackView 객체를 생성.
    let thirdStackView = UIStackView()  // thirdStackView이라는 이름의 UIStackView 객체를 생성.
    let fourthStackView = UIStackView()  // fourthStackView이라는 이름의 UIStackView 객체를 생성.

    // 세로 StackView
    let verticalStackView = UIStackView()  // verticalStackView이라는 이름의 UIStackView 객체를 생성.

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {  // configureUI는 사용자 인터페이스 요소들의 초기 설정하는 메서드
        view.backgroundColor = .black  // 뷰 화면의 배경색을 검정색으로 설정.

        // 레이블 속성 설정
        label.text = "\(firstNumber)"  // label text 는 0

        label.textColor = .white  // label text 색깔은 white

        label.font = .boldSystemFont(ofSize: 60)  // label font는 굵은 시스템 글꼴 / 사이즈는 60

        label.textAlignment = .right  // label text 위치 조정은 오른쪽으로 정렬

        // label을 View에 추가
        view.addSubview(label)

        // label 레이아웃 설정
        label.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(30)  // 뷰의 왼쪽과 오른쪽에서 각각 30포인트 안쪽으로 설정.

            $0.top.equalToSuperview().offset(200)  // 화면의 상단에서 아래로 200포인트 떨어진 곳에 설정.

            $0.height.equalTo(100)  // 높이는 100포인트 고정.

        }

        // 숫자 버튼들 설정
        let calculatorbuttons: [UIButton] = [  // buttons 상수의 타입은 UIButton 배열이고 버튼 배열을 할당 한다.
            sevenButton, eightButton, nineButton, additionButton, fourButton,
            fiveButton, sixButton, subtractionButton, firstButton, secondButton,
            threeButton, multplyButton, resetButton, zeroButton, equalButton,
            divideButton,
        ]

        // titles 연산 버튼 설정
        // 타이틀 정수타입으로 변환 후 색상 변경 해보기!
        let titles: [String] = [  // 타이틀 상수의 타입은 String 배열이고 연산 버튼을 할당.
            "7", "8", "9", "+",
            "4", "5", "6", "-",
            "1", "2", "3", "*",
            "AC", "0", "=", "/",
        ]

        // 버튼 타이틀과 스타일 설정 (for문 사용)
        for (index, button) in calculatorbuttons.enumerated() {  // `calculatorbuttons` 배열을 순회하면서 각 버튼과 해당 인덱스를 가져온다. `index` 현재 버튼의 배열 내 위치를 나타내는 정수 (0부터 시작). `button` 배열 내에서 가져온 UIButton 객체

            button.titleLabel?.font = .boldSystemFont(ofSize: 30)  // 버튼의 titleLabel에 설정된 텍스트의 글꼴을 굵은 시스템 폰트로 설정하고, 글꼴 크기는 30포인트.

            button.backgroundColor = UIColor(
                red: 58 / 255, green: 58 / 255, blue: 58 / 255, alpha: 1.0)  // 버튼의 배경색을 어두운 회색 으로 설정.

            button.layer.cornerRadius = 40  // 버튼의 코너를 둥글게 만들어 원형으로 보이도록 설정. 설정값 = 40

            button.setTitle(titles[index], for: .normal)  // 버튼의 제목은 title로 설정 하고, `titles`배열의 `index`번째 요소를 버튼의 제목으로 사용 `for: .normal`은 버튼이 일반 상태일 때 보여주는 텍스트 지정.
            button.snp.makeConstraints {
                make in
                make.height.equalTo(80)
            }

            // HorizontalStackViews 속성 설정
            [
                firstStackView, secondStackView, thirdStackView,
                fourthStackView,
            ]  // 첫번째, 두번째, 세번째, 네번째, StackView를 배열로 묶음.
            .forEach {  // 배열 내 각 StackView에 대해 동일한 속성을 반복 설정.
                $0.axis = .horizontal  // StackView의 방향을 가로 방향으로 설정.
                $0.backgroundColor = .black  // StackView의 배경색을 검정색으로 설정.
                $0.spacing = 10  // StackView 내에서 자식 뷰들 간의 간격을 10으로 설정.
                $0.distribution = .fillEqually  // StackView 내 자식뷰들을 동일한 크기로 나눠서 배치.

            }

            // 첫번째 StackView에 버튼 추가
            [sevenButton, eightButton, nineButton, additionButton].forEach {
                firstStackView.addArrangedSubview($0)
            }

            // 두번쨰 StackView에 버튼 추가
            [fourButton, fiveButton, sixButton, subtractionButton].forEach {
                secondStackView.addArrangedSubview($0)
            }

            // 세번째 StackView에 버튼 추가
            [firstButton, secondButton, threeButton, multplyButton].forEach {
                thirdStackView.addArrangedSubview($0)
            }

            // 네번째 StackView에 버튼 추가
            [resetButton, zeroButton, equalButton, divideButton].forEach {
                fourthStackView.addArrangedSubview($0)
            }

            // 세로 StackView 속성 설정
            verticalStackView.axis = .vertical  // verticalStackView 세로 방향으로 구성.
            verticalStackView.backgroundColor = .black  // 배경색을 검정으로 설정.
            verticalStackView.spacing = 10  // 자식 뷰 간 간격 10으로 설정.
            verticalStackView.distribution = .fillEqually  // 자식 뷰의 크기를 동일하게 분배.

            // verticalStackView를 view에 추가
            [verticalStackView]
                .forEach { view.addSubview($0) }

            // verticalStackView 레이아웃 설정
            verticalStackView.snp.makeConstraints {
                $0.width.equalTo(350)  // 가로 길이를 350으로 설정
                $0.top.equalTo(label.snp.bottom).offset(60)  // label 아래로 60 간격
//                $0.bottom.equalToSuperview().inset(80)
                $0.centerX.equalToSuperview()  // superView의 centerX에 맞춤
            }

            // 상수를 선언하고, 4개의 UIStackView 객체를 배열로 묶음.
            let stackViews = [
                firstStackView, secondStackView, thirdStackView,
                fourthStackView,
            ]

            // forEach를 사용하여 수평 StackView들을 세로 StackView에 추가.
            stackViews.forEach { verticalStackView.addArrangedSubview($0) }

        }

        // 연산 버튼 backgroundColor 색상을 orange로 설정.
        additionButton.backgroundColor = .orange
        subtractionButton.backgroundColor = .orange
        multplyButton.backgroundColor = .orange
        resetButton.backgroundColor = .orange
        equalButton.backgroundColor = .orange
        divideButton.backgroundColor = .orange

        // 버튼 액션 추가
        sevenButton.addTarget(
            self, action: #selector(sevenButtonTapped), for: .touchUpInside)
        eightButton.addTarget(
            self, action: #selector(eightButtonTapped), for: .touchUpInside)
        nineButton.addTarget(
            self, action: #selector(nineButtonTapped), for: .touchUpInside)
        fourButton.addTarget(
            self, action: #selector(fourButtonTapped), for: .touchUpInside)
        fiveButton.addTarget(
            self, action: #selector(fiveButtonTapped), for: .touchUpInside)
        sixButton.addTarget(
            self, action: #selector(sixButtonTapped), for: .touchUpInside)
        firstButton.addTarget(
            self, action: #selector(firstButtonTapped), for: .touchUpInside)
        secondButton.addTarget(
            self, action: #selector(secondButtonTapped), for: .touchUpInside
        )
        threeButton.addTarget(
            self, action: #selector(threeButtonTapped), for: .touchUpInside)
        zeroButton.addTarget(
            self, action: #selector(zeroButtonTapped), for: .touchUpInside)

        // 연산자 버튼 액션 추가
        additionButton.addTarget(
            self, action: #selector(additionButtonTapped), for: .touchDown)

        subtractionButton.addTarget(
            self, action: #selector(subtractionButtonTapped),
            for: .touchDown)

        multplyButton.addTarget(
            self, action: #selector(multplyButtonTapped), for: .touchDown)

        divideButton.addTarget(
            self, action: #selector(divideButtonTapped), for: .touchDown)

        // 리셋 버튼 액션 추가
        resetButton.addTarget(
            self, action: #selector(resetButtonTapped), for: .touchDown)

        // = 버튼 액션 추가
        equalButton.addTarget(
            self, action: #selector(equalButtonTapped), for: .touchDown)

    }

    @objc
    private func sevenButtonTapped() {  // 숫자 7을 눌렀을때 호출되는 메서드
        currentExpression += "7"  // currentExpression 7을 추가.
        label.text = currentExpression  // 화면 레이블에 "7" 표시.

    }

    @objc
    private func eightButtonTapped() {  // 숫자 8을 눌렀을때 호출되는 메서드
        currentExpression += "8"  // currentExpression 8을 추가.
        label.text = currentExpression  // 화면 레이블에 "8" 표시.

    }

    @objc
    private func nineButtonTapped() {  // 숫자 9를 눌렀을때 호출되는 메서드
        currentExpression += "9"  // currentExpression 9를 추가.
        label.text = currentExpression  // 화면 레이블에 "9" 표시.

    }

    @objc
    private func fourButtonTapped() {  // 숫자 4를 눌렀을때 호출되는 메서드
        currentExpression += "4"  // currentExpression 4를 추가
        label.text = currentExpression  // 화면 레이블에 "4"를 표시.

    }

    @objc
    private func fiveButtonTapped() {  // 숫자 5를 눌렀을때 호출되는 메서드
        currentExpression += "5"  // currentExpression 5를 추가
        label.text = currentExpression  // 화면 레이블에 "5"를 표시.

    }

    @objc
    private func sixButtonTapped() {  // 숫자 6을 눌렀을때 호출되는 메서드
        currentExpression += "6"  // currentExpression 6을 추가
        label.text = currentExpression  // 화면 레이블에 "6"을 표시.

    }

    @objc
    private func firstButtonTapped() {  // 숫자 1을 눌렀을때 호출되는 메서드
        currentExpression += "1"  // currentExpression 1을 추가
        label.text = currentExpression  // 화면 레이블에 "1"을 표시.

    }

    @objc
    private func secondButtonTapped() {  // 숫자 2를 눌렀을때 호출되는 메서드
        currentExpression += "2"  // currentExpression 2를 추가
        label.text = currentExpression  // 화면 레이블에 "2"를 표시.

    }

    @objc
    private func threeButtonTapped() {  // 숫자 3을 눌렀을때 호출되는 메서드
        currentExpression += "3"  // currentExpression 3을 추가
        label.text = currentExpression  // 화면 레이블에 "3"을 표시.

    }

    @objc
    private func zeroButtonTapped() {  // 숫자 0을 눌렀을때 호출되는 메서드
        currentExpression += "0"  // currentExpression 0을 추가
        label.text = currentExpression  // 화면 레이블에 "0"을 표시.

    }

    @objc
    private func additionButtonTapped() {  // 연산자 버튼 "+"를 눌렀을때 호출되는 메서드

        currentExpression += "+"  // currentExpression "+"를 추가
        label.text = currentExpression  // 화면 레이블에 "+"을 표시.

    }

    @objc
    private func subtractionButtonTapped() {  // 연산자 버튼 "-"을 눌렀을때 호출되는 메서드
        currentExpression += "-"  // currentExpression "-"를 추가
        label.text = currentExpression  // 화면 레이블에 "-"를 표시.

    }

    @objc
    private func multplyButtonTapped() {  // 연산자 버튼 "*"을 눌렀을때 호출되는 메서드
        currentExpression += "*"  // currentExpression "*"를 추가
        label.text = currentExpression  // 화면 레이블에 "*"를 표시.

    }

    @objc
    private func divideButtonTapped() {  // 연산자 버튼 "/"을 눌렀을때 호출되는 메서드
        currentExpression += "/"  // currentExpression "/"를 추가
        label.text = currentExpression  // 화면 레이블에 "/"를 표시.

    }

    @objc
    private func resetButtonTapped() {  // 연산자 버튼 AC를 눌렀을때 호출되는 메서드
        currentExpression = ""  // currentExpression ""을 추가
        label.text = "0"  // 화면 레이블에 "0"을 표시.

    }

    @objc
    private func equalButtonTapped() {
        let result = calculate(expression: currentExpression)  // calculate(expression:) 함수를 호출하여 currentExpression 수식을 계산하고 그 결과를 result 변수에 저장.
        if result != nil {  // result가 nil이 아니면 계산이 성공한 것이므로 결과를 label에 표시.
            label.text = "\(result!)"  // result를 문자열로 변환하여 레이블에 표시.
        } else {
            label.text = "error"  // result가 nil이면 계산이 실패한 것이므로 "error" 메세지를 표시
        }
        currentExpression = ""  // 계산이 끝나면 초기화
    }

    private func calculate(expression: String) -> Int? {
        // NSExpression을 사용해 문자열 형태의 수식을 표현.
        let expression = NSExpression(format: expression)

        // 수식을 계산하고 결과가 Int 타입인지 확인.
        if let result = expression.expressionValue(with: nil, context: nil)
            as? Int
        {
            return result  // 계산된 결과를 반환.
        } else {
            return nil  // 계산 실패 시 nil 반환.
        }
    }
}

#Preview("CalculateViewController") {
    //뷰 컨트롤러 생성
    CalculateViewController()
}
