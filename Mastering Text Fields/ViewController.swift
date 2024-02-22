//
//  ViewController.swift
//  Mastering Text Fields
//
//  Created by Arthur Avagyan on 21.02.24.
//

import UIKit

class ViewController: UIViewController {
	
	private var phoneTextField: UITextField!
	private var emailTextField: UITextField!
	private var firstNameTextField: UITextField!
	private var lastNameTextField: UITextField!
	private var passwordTextField: UITextField!
	private var repeatPasswordTextField: UITextField!
	
	private var usernameTextField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		UITextField.appearance().font = .systemFont(ofSize: 10)
		setUpViews()
	}
	
	/// Final implementation (with username)
	private func setUpViews() {
		firstNameTextField = UITextField()
		firstNameTextField.frame = .init(x: 16, y: 100, width: 350, height: 40)
		firstNameTextField.placeholder = "First Name"
		firstNameTextField.borderStyle = .roundedRect
		firstNameTextField.textContentType = .givenName
		firstNameTextField.keyboardType = .default
		view.addSubview(firstNameTextField)
		
		lastNameTextField = UITextField()
		lastNameTextField.frame = .init(x: 16, y: 150, width: 350, height: 40)
		lastNameTextField.placeholder = "Last Name"
		lastNameTextField.borderStyle = .roundedRect
		lastNameTextField.textContentType = .familyName
		lastNameTextField.keyboardType = .default
		view.addSubview(lastNameTextField)
		
		phoneTextField = UITextField()
		phoneTextField.frame = .init(x: 16, y: 200, width: 350, height: 40)
		phoneTextField.placeholder = "Phone"
		phoneTextField.borderStyle = .roundedRect
		phoneTextField.textContentType = .telephoneNumber
		phoneTextField.keyboardType = .phonePad
		view.addSubview(phoneTextField)
		
		emailTextField = UITextField()
		emailTextField.frame = .init(x: 16, y: 250, width: 350, height: 40)
		emailTextField.placeholder = "Email"
		emailTextField.borderStyle = .roundedRect
		emailTextField.textContentType = .emailAddress
		emailTextField.keyboardType = .emailAddress
		view.addSubview(emailTextField)
		
		usernameTextField = UITextField()
		usernameTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
		usernameTextField.placeholder = "Username"
		usernameTextField.borderStyle = .roundedRect
		usernameTextField.textContentType = .username
		usernameTextField.keyboardType = .default
		view.addSubview(usernameTextField)
		
		passwordTextField = UITextField()
		passwordTextField.frame = .init(x: 16, y: 350, width: 350, height: 40)
		passwordTextField.placeholder = "Password"
		passwordTextField.borderStyle = .roundedRect
		passwordTextField.textContentType = .password
		passwordTextField.isSecureTextEntry = true
		passwordTextField.keyboardType = .default
		view.addSubview(passwordTextField)
		
		repeatPasswordTextField = UITextField()
		repeatPasswordTextField.frame = .init(x: 16, y: 400, width: 350, height: 40)
		repeatPasswordTextField.placeholder = "Repeat Password"
		repeatPasswordTextField.borderStyle = .roundedRect
		repeatPasswordTextField.textContentType = .password
		repeatPasswordTextField.isSecureTextEntry = true
		repeatPasswordTextField.keyboardType = .default
		view.addSubview(repeatPasswordTextField)
	}
	
	/// Initial implementation: lastNameTextField appearing before passwordTextField
	//	private func setUpViews() {
	//		phoneTextField = UITextField()
	//		phoneTextField.frame = .init(x: 16, y: 100, width: 350, height: 40)
	//		phoneTextField.placeholder = "Phone"
	//		phoneTextField.borderStyle = .roundedRect
	//		phoneTextField.textContentType = .telephoneNumber
	//		phoneTextField.keyboardType = .phonePad
	//		view.addSubview(phoneTextField)
	//
	//		emailTextField = UITextField()
	//		emailTextField.frame = .init(x: 16, y: 150, width: 350, height: 40)
	//		emailTextField.placeholder = "Email"
	//		emailTextField.borderStyle = .roundedRect
	//		emailTextField.textContentType = .emailAddress
	//		emailTextField.keyboardType = .emailAddress
	//		view.addSubview(emailTextField)
	//
	//		firstNameTextField = UITextField()
	//		firstNameTextField.frame = .init(x: 16, y: 200, width: 350, height: 40)
	//		firstNameTextField.placeholder = "First Name"
	//		firstNameTextField.borderStyle = .roundedRect
	//		firstNameTextField.textContentType = .givenName
	//		firstNameTextField.keyboardType = .default
	//		view.addSubview(firstNameTextField)
	//
	//		lastNameTextField = UITextField()
	//		lastNameTextField.frame = .init(x: 16, y: 250, width: 350, height: 40)
	//		lastNameTextField.placeholder = "Last Name"
	//		lastNameTextField.borderStyle = .roundedRect
	//		lastNameTextField.textContentType = .familyName
	//		lastNameTextField.keyboardType = .default
	//		view.addSubview(lastNameTextField)
	//
	//		passwordTextField = UITextField()
	//		passwordTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
	//		passwordTextField.placeholder = "Password"
	//		passwordTextField.borderStyle = .roundedRect
	//		passwordTextField.textContentType = .password
	//		passwordTextField.isSecureTextEntry = true
	//		passwordTextField.keyboardType = .default
	//		view.addSubview(passwordTextField)
	//
	//		repeatPasswordTextField = UITextField()
	//		repeatPasswordTextField.frame = .init(x: 16, y: 350, width: 350, height: 40)
	//		repeatPasswordTextField.placeholder = "Repeat Password"
	//		repeatPasswordTextField.borderStyle = .roundedRect
	//		repeatPasswordTextField.textContentType = .password
	//		repeatPasswordTextField.isSecureTextEntry = true
	//		repeatPasswordTextField.keyboardType = .default
	//		view.addSubview(repeatPasswordTextField)
	//	}
	
	/// MRE with lastNameTextField and passwordTextField
	//	private func setUpViews() {
	//		lastNameTextField = UITextField()
	//		lastNameTextField.frame = .init(x: 16, y: 250, width: 350, height: 40)
	//		lastNameTextField.placeholder = "Last Name"
	//		lastNameTextField.borderStyle = .roundedRect
	//		lastNameTextField.textContentType = .familyName
	//		lastNameTextField.keyboardType = .default
	//		view.addSubview(lastNameTextField)
	//
	//		passwordTextField = UITextField()
	//		passwordTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
	//		passwordTextField.placeholder = "Password"
	//		passwordTextField.borderStyle = .roundedRect
	//		passwordTextField.textContentType = .password
	//		passwordTextField.isSecureTextEntry = true
	//		passwordTextField.keyboardType = .default
	//		view.addSubview(passwordTextField)
	//	}
	
	/// Proving that textContentType set to .familyName works as expected
	//	private func setUpViews() {
	//		lastNameTextField = UITextField()
	//		lastNameTextField.frame = .init(x: 16, y: 250, width: 350, height: 40)
	//		lastNameTextField.placeholder = "Last Name"
	//		lastNameTextField.borderStyle = .roundedRect
	//		lastNameTextField.textContentType = .familyName
	//		lastNameTextField.keyboardType = .default
	//		view.addSubview(lastNameTextField)
	//	}
	
	/// Correct functioning implementation
	//	private func setUpViews() {
	//		usernameTextField = UITextField()
	//		usernameTextField.frame = .init(x: 16, y: 250, width: 350, height: 40)
	//		usernameTextField.placeholder = "Username"
	//		usernameTextField.borderStyle = .roundedRect
	//		usernameTextField.textContentType = .username
	//		usernameTextField.keyboardType = .default
	//		view.addSubview(usernameTextField)
	//
	//		passwordTextField = UITextField()
	//		passwordTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
	//		passwordTextField.placeholder = "Password"
	//		passwordTextField.borderStyle = .roundedRect
	//		passwordTextField.textContentType = .password
	//		passwordTextField.isSecureTextEntry = true
	//		passwordTextField.keyboardType = .default
	//		view.addSubview(passwordTextField)
	//
	//		repeatPasswordTextField = UITextField()
	//		repeatPasswordTextField.frame = .init(x: 16, y: 350, width: 350, height: 40)
	//		repeatPasswordTextField.placeholder = "Repeat Password"
	//		repeatPasswordTextField.borderStyle = .roundedRect
	//		repeatPasswordTextField.textContentType = .password
	//		repeatPasswordTextField.isSecureTextEntry = true
	//		repeatPasswordTextField.keyboardType = .default
	//		view.addSubview(repeatPasswordTextField)
	//	}
	
	/// Proof of that .password and .familyName types can coexist
	//	private func setUpViews() {
	//		passwordTextField = UITextField()
	//		passwordTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
	//		passwordTextField.placeholder = "Password"
	//		passwordTextField.borderStyle = .roundedRect
	//		passwordTextField.textContentType = .password
	//		passwordTextField.isSecureTextEntry = true
	//		passwordTextField.keyboardType = .default
	//		view.addSubview(passwordTextField)
	//
	//		lastNameTextField = UITextField()
	//		lastNameTextField.frame = .init(x: 16, y: 350, width: 350, height: 40)
	//		lastNameTextField.placeholder = "Last Name"
	//		lastNameTextField.borderStyle = .roundedRect
	//		lastNameTextField.textContentType = .familyName
	//		lastNameTextField.keyboardType = .default
	//		view.addSubview(lastNameTextField)
	//	}
}

/// Experiment of manipulating x and y positions of emailTextField and lastNameTextField
extension ViewController {
	
	/// emailTextField and lastNameTextField have the same Y position (emailTextField appearing first)
	//	private func setUpViews() {
	//		emailTextField = UITextField()
	//		emailTextField.frame = .init(x: 16, y: 250, width: 150, height: 40)
	//		emailTextField.placeholder = "Email x: 16, y: 250"
	//		emailTextField.borderStyle = .roundedRect
	//		emailTextField.textContentType = .emailAddress
	//		emailTextField.keyboardType = .emailAddress
	//		view.addSubview(emailTextField)
	//
	//		lastNameTextField = UITextField()
	//		lastNameTextField.frame = .init(x: 200, y: 250, width: 150, height: 40)
	//		lastNameTextField.placeholder = "Last Name x: 200, y: 250"
	//		lastNameTextField.borderStyle = .roundedRect
	//		lastNameTextField.textContentType = .familyName
	//		lastNameTextField.keyboardType = .default
	//		view.addSubview(lastNameTextField)
	//
	//		passwordTextField = UITextField()
	//		passwordTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
	//		passwordTextField.placeholder = "Password"
	//		passwordTextField.borderStyle = .roundedRect
	//		passwordTextField.textContentType = .password
	//		passwordTextField.isSecureTextEntry = true
	//		passwordTextField.keyboardType = .default
	//		view.addSubview(passwordTextField)
	//
	//		repeatPasswordTextField = UITextField()
	//		repeatPasswordTextField.frame = .init(x: 16, y: 350, width: 350, height: 40)
	//		repeatPasswordTextField.placeholder = "Repeat Password"
	//		repeatPasswordTextField.borderStyle = .roundedRect
	//		repeatPasswordTextField.textContentType = .password
	//		repeatPasswordTextField.isSecureTextEntry = true
	//		repeatPasswordTextField.keyboardType = .default
	//		view.addSubview(repeatPasswordTextField)
	//	}
	
	/// emailTextField and lastNameTextField have the same Y position (lastNameTextField appearing first)
	//	private func setUpViews() {
	//		lastNameTextField = UITextField()
	//		lastNameTextField.frame = .init(x: 16, y: 250, width: 150, height: 40)
	//		lastNameTextField.placeholder = "Last Name x: 16, y: 250"
	//		lastNameTextField.borderStyle = .roundedRect
	//		lastNameTextField.textContentType = .familyName
	//		lastNameTextField.keyboardType = .default
	//		view.addSubview(lastNameTextField)
	//
	//		emailTextField = UITextField()
	//		emailTextField.frame = .init(x: 200, y: 250, width: 150, height: 40)
	//		emailTextField.placeholder = "Email x: 200, y: 250"
	//		emailTextField.borderStyle = .roundedRect
	//		emailTextField.textContentType = .emailAddress
	//		emailTextField.keyboardType = .emailAddress
	//		view.addSubview(emailTextField)
	//
	//		passwordTextField = UITextField()
	//		passwordTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
	//		passwordTextField.placeholder = "Password"
	//		passwordTextField.borderStyle = .roundedRect
	//		passwordTextField.textContentType = .password
	//		passwordTextField.isSecureTextEntry = true
	//		passwordTextField.keyboardType = .default
	//		view.addSubview(passwordTextField)
	//
	//		repeatPasswordTextField = UITextField()
	//		repeatPasswordTextField.frame = .init(x: 16, y: 350, width: 350, height: 40)
	//		repeatPasswordTextField.placeholder = "Repeat Password"
	//		repeatPasswordTextField.borderStyle = .roundedRect
	//		repeatPasswordTextField.textContentType = .password
	//		repeatPasswordTextField.isSecureTextEntry = true
	//		repeatPasswordTextField.keyboardType = .default
	//		view.addSubview(repeatPasswordTextField)
	//	}
	
	/// lastNameTextField having y position greater than emailTextField (emailTextField appearing first)
	//	private func setUpViews() {
	//		emailTextField = UITextField()
	//		emailTextField.frame = .init(x: 200, y: 250, width: 150, height: 40)
	//		emailTextField.placeholder = "Email x: 200, y: 250"
	//		emailTextField.borderStyle = .roundedRect
	//		emailTextField.textContentType = .emailAddress
	//		emailTextField.keyboardType = .emailAddress
	//		view.addSubview(emailTextField)
	//
	//		lastNameTextField = UITextField()
	//		lastNameTextField.frame = .init(x: 16, y: 251, width: 150, height: 40)
	//		lastNameTextField.placeholder = "Last Name x: 16, y: 251"
	//		lastNameTextField.borderStyle = .roundedRect
	//		lastNameTextField.textContentType = .familyName
	//		lastNameTextField.keyboardType = .default
	//		view.addSubview(lastNameTextField)
	//
	//		passwordTextField = UITextField()
	//		passwordTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
	//		passwordTextField.placeholder = "Password"
	//		passwordTextField.borderStyle = .roundedRect
	//		passwordTextField.textContentType = .password
	//		passwordTextField.isSecureTextEntry = true
	//		passwordTextField.keyboardType = .default
	//		view.addSubview(passwordTextField)
	//
	//		repeatPasswordTextField = UITextField()
	//		repeatPasswordTextField.frame = .init(x: 16, y: 350, width: 350, height: 40)
	//		repeatPasswordTextField.placeholder = "Repeat Password"
	//		repeatPasswordTextField.borderStyle = .roundedRect
	//		repeatPasswordTextField.textContentType = .password
	//		repeatPasswordTextField.isSecureTextEntry = true
	//		repeatPasswordTextField.keyboardType = .default
	//		view.addSubview(repeatPasswordTextField)
	//	}
	
	/// lastNameTextField having y position less than emailTextField (lastNameTextField appearing first)
	//	private func setUpViews() {
	//		lastNameTextField = UITextField()
	//		lastNameTextField.frame = .init(x: 16, y: 249, width: 150, height: 40)
	//		lastNameTextField.placeholder = "Last Name x: 16, y: 249"
	//		lastNameTextField.borderStyle = .roundedRect
	//		lastNameTextField.textContentType = .familyName
	//		lastNameTextField.keyboardType = .default
	//		view.addSubview(lastNameTextField)
	//
	//		emailTextField = UITextField()
	//		emailTextField.frame = .init(x: 200, y: 250, width: 150, height: 40)
	//		emailTextField.placeholder = "Email x: 200, y: 250"
	//		emailTextField.borderStyle = .roundedRect
	//		emailTextField.textContentType = .emailAddress
	//		emailTextField.keyboardType = .emailAddress
	//		view.addSubview(emailTextField)
	//
	//		passwordTextField = UITextField()
	//		passwordTextField.frame = .init(x: 16, y: 300, width: 350, height: 40)
	//		passwordTextField.placeholder = "Password"
	//		passwordTextField.borderStyle = .roundedRect
	//		passwordTextField.textContentType = .password
	//		passwordTextField.isSecureTextEntry = true
	//		passwordTextField.keyboardType = .default
	//		view.addSubview(passwordTextField)
	//
	//		repeatPasswordTextField = UITextField()
	//		repeatPasswordTextField.frame = .init(x: 16, y: 350, width: 350, height: 40)
	//		repeatPasswordTextField.placeholder = "Repeat Password"
	//		repeatPasswordTextField.borderStyle = .roundedRect
	//		repeatPasswordTextField.textContentType = .password
	//		repeatPasswordTextField.isSecureTextEntry = true
	//		repeatPasswordTextField.keyboardType = .default
	//		view.addSubview(repeatPasswordTextField)
	//	}
}
