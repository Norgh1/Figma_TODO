//
//  SignIn_VC.swift
//  Figma_TODO
//
//  Created by Nor Gh on 7/3/22.
//
import UIKit
import Foundation

class SignIn_VC : UIViewController {
    
    var enterEmail: UITextField!
    var enterPassword: UITextField!
    var forgotPassword: UIButton!
    var signIn: UIButton!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        enterEmail.layer.cornerRadius = enterEmail.frame.size.height / 2
        enterPassword.layer.cornerRadius = enterPassword.frame.size.height / 2
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9968894124, green: 0.855168283, blue: 0.7002447844, alpha: 1)
        createEnterEmail()
        createEnterPassword()
        createForgotPassword()
        createSignIn()
    }
    
    private func createEnterEmail() {
        self.enterEmail = UITextField()
        enterEmail.translatesAutoresizingMaskIntoConstraints = false
        enterEmail.placeholder = "Enter your email"
        enterEmail.textAlignment = .center
        enterEmail.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4200319102)
        view.addSubview(enterEmail)
        createEnterEmailConstraints()
    }
    private func createEnterEmailConstraints() {
        let constraints = [
            enterEmail.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 350),
            enterEmail.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.enterEmail.rightAnchor, constant: 18),
            enterEmail.heightAnchor.constraint(equalToConstant: 47)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    private func createEnterPassword() {
        self.enterPassword = UITextField()
        enterPassword.translatesAutoresizingMaskIntoConstraints = false
        enterPassword.placeholder = "Enter password"
        enterPassword.textAlignment = .center
        enterPassword.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4200319102)
        view.addSubview(enterPassword)
        createEnterPasswordConsreaints()
    }
    private func createEnterPasswordConsreaints(){
        let constriants = [
            enterPassword.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 410),
            enterPassword.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.enterPassword.rightAnchor, constant: 18),
            enterPassword.heightAnchor.constraint(equalToConstant: 47)
        ]
        NSLayoutConstraint.activate(constriants)
    }
    private func createForgotPassword() {
        forgotPassword = UIButton()
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        forgotPassword.setTitle("Forgot password", for: .normal)
        forgotPassword.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        view.addSubview(forgotPassword)
        createForgotPasswordConstraints()
    }
    private func createForgotPasswordConstraints() {
        let constriants = [
            forgotPassword.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 480),
            forgotPassword.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 30),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.forgotPassword.rightAnchor, constant: 30)
        ]
        NSLayoutConstraint.activate(constriants)
    }
    private func createSignIn() {
        signIn = UIButton()
        signIn.translatesAutoresizingMaskIntoConstraints = false
        signIn.setImage(UIImage(named: "signin.png"), for: .normal)
        view.addSubview(signIn)
        createSignInConstraints()
    }
    private func createSignInConstraints() {
        let constriants = [
        
            signIn.topAnchor.constraint(equalTo: self.forgotPassword.topAnchor, constant: 50),
            signIn.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.leftAnchor.constraint(equalTo: self.signIn.leftAnchor, constant: 18)
        
        ]
        NSLayoutConstraint.activate(constriants)
    }
}
