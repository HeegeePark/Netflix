//
//  SignImViewController.swift
//  Netflix
//
//  Created by 박희지 on 12/28/23.
//

import UIKit

// 회원가입 뷰컨트롤러
// 코드 실행을 위해서 스토리보드에서 Entry Point 변경이 필요합니다.
class SignInViewController: UIViewController {

    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var recommedCodeTextField: UITextField!
    
    @IBOutlet var signInButton: UIButton!
    
    @IBOutlet var moreInfoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        view.endEditing(true)
    }
    
    // 스위치 on/off에 따른 추가 정보 입력 텍스트필드 띄우기/숨기기
    @IBAction func moreInfoSwitchClicked(_ sender: UISwitch) {
        nicknameTextField.isHidden = !sender.isOn
        locationTextField.isHidden = !sender.isOn
        recommedCodeTextField.isHidden = !sender.isOn
    }
    
    // 회원가입 버튼 누르면 키보드 내러감
    @IBAction func signInButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    // return key 누르면 키보드 내려감
    @IBAction func dismiss(_ sender: UITextField) {
    }
    
    // UI 코드 부분
    func setupUI() {
        // 텍스트필드들
        designTextField(idTextField, placeholder: "이메일 주소 또는 전화번호", keyboardType: .emailAddress)
        designTextField(passwordTextField, placeholder: "비밀번호", isSecure: true)
        designTextField(nicknameTextField, placeholder: "닉네임")
        designTextField(locationTextField, placeholder: "위치")
        designTextField(recommedCodeTextField, placeholder: "추천 코드 입력")
        
        // 회원가입버튼
        signInButton.setTitle("회원가입", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.backgroundColor = .white
        
        // 스위치
        moreInfoSwitch.setOn(true, animated: true)
        moreInfoSwitch.onTintColor = .red
        moreInfoSwitch.thumbTintColor = .white
    }
    
    // 디자인 텍스트필드
    func designTextField(_ textField: UITextField, placeholder: String, keyboardType: UIKeyboardType = .default, isSecure: Bool = false) {
        textField.placeholder = placeholder
        textField.textColor = .white
        textField.keyboardType = keyboardType
        textField.isSecureTextEntry = isSecure
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .gray
    }
}
