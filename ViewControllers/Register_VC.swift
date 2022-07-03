//
//  Register_VC.swift
//  Figma_TODO
//
//  Created by Nor Gh on 7/3/22.
//

import Foundation
import UIKit

class Register_VC: UIViewController {
    
    var fullname: UITextField!
    var yourEmail: UITextField!
    var enterPassword: UITextField!
    var confirmPassword: UITextField!
    var registerButton: UIButton!
    var alredyAccount: UILabel!
    var signIn: UIButton!
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.fullname.layer.cornerRadius = fullname.frame.size.height / 2
        self.yourEmail.layer.cornerRadius = yourEmail.frame.size.height / 2
        self.enterPassword.layer.cornerRadius = enterPassword.frame.size.height / 2
        self.confirmPassword.layer.cornerRadius = confirmPassword.frame.size.height / 2
        self.registerButton.layer.cornerRadius = registerButton.frame.size.height / 2

        
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    
    private func createUI() {
        createFullname()
        createYourEmail()
        createEnterPassword()
        createConfirmPassword()
        createRegisterButton()
        createAlredyAccount()
        createSignIn()
    }
    
    
    private func createFullname() {
        self.fullname = UITextField()
        self.fullname.adjustsFontSizeToFitWidth = true
        self.fullname.translatesAutoresizingMaskIntoConstraints = false
        self.fullname.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4567011444)
        self.fullname.textAlignment = .center
        self.fullname.placeholder = "Enter your full name"
        self.view.addSubview(self.fullname)
        createFullnameConstraints()
    }
    private func createFullnameConstraints() {
        let constraints = [
            self.fullname.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 330),
            self.fullname.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.fullname.rightAnchor, constant: 18),
            self.fullname.heightAnchor.constraint(equalToConstant: 47)
       ]
        NSLayoutConstraint.activate(constraints)
    }
    private func createYourEmail() {
        self.yourEmail = UITextField()
        self.yourEmail.adjustsFontSizeToFitWidth = true
        self.yourEmail.textAlignment = .center
        self.yourEmail.translatesAutoresizingMaskIntoConstraints = false
        self.yourEmail.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4567011444)
        self.yourEmail.placeholder = "Enter your email"
        self.view.addSubview(self.yourEmail)
        createYourEmailConstraints()
    }
    private func createYourEmailConstraints() {
        let constraints = [
            self.yourEmail.topAnchor.constraint(equalTo: self.fullname.topAnchor, constant: 55),
            self.yourEmail.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.yourEmail.rightAnchor, constant: 18),
            self.yourEmail.heightAnchor.constraint(equalToConstant: 47)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    private func createEnterPassword() {
        self.enterPassword = UITextField()
        self.enterPassword.adjustsFontSizeToFitWidth = true
        self.enterPassword.textAlignment = .center
        self.enterPassword.translatesAutoresizingMaskIntoConstraints = false
        self.enterPassword.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4567011444)
        self.enterPassword.placeholder = "Enter password"
        self.view.addSubview(self.enterPassword)
        createEnterPasswordConsreaints()
    }
    private func createEnterPasswordConsreaints() {
        let constraints = [
        
            self.enterPassword.topAnchor.constraint(equalTo: self.yourEmail.topAnchor, constant: 55),
            self.enterPassword.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.enterPassword.rightAnchor, constant: 18),
            self.enterPassword.heightAnchor.constraint(equalToConstant: 47)
        
        ]
        NSLayoutConstraint.activate(constraints)
    }
    private func createConfirmPassword() {
        self.confirmPassword = UITextField()
        self.confirmPassword.adjustsFontSizeToFitWidth = true
        self.confirmPassword.textAlignment = .center
        self.confirmPassword.translatesAutoresizingMaskIntoConstraints = false
        self.confirmPassword.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4567011444)
        self.confirmPassword.placeholder = "Confirm Password"
        self.view.addSubview(self.confirmPassword)
        createConfirmPasswordConstraints()
    }
    private func createConfirmPasswordConstraints() {
        let constraints = [
        
            self.confirmPassword.topAnchor.constraint(equalTo: self.enterPassword.topAnchor, constant: 55),
            self.confirmPassword.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.confirmPassword.rightAnchor, constant: 18),
            self.confirmPassword.heightAnchor.constraint(equalToConstant: 47)
        
        ]
        NSLayoutConstraint.activate(constraints)
    }
    private func createRegisterButton() {
        self.registerButton = UIButton()
        self.registerButton.translatesAutoresizingMaskIntoConstraints = false
        self.registerButton.setImage(UIImage(named: "image.png"), for: .normal)
        self.registerButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        self.registerButton.addTarget(nil, action: #selector(didTapped), for: .touchUpInside)
        self.view.addSubview(registerButton)
        createRegisterButtonConstraints()
    }
    
    @objc private func didTapped(){
        let alert = UIAlertController(title: "Messege!", message: "!!!!", preferredStyle: .alert)
        let action = UIAlertAction(title: "messe me me ", style: .default, handler: nil)
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
            
    private func createRegisterButtonConstraints() {
        let constraints = [
            self.registerButton.topAnchor.constraint(equalTo: self.confirmPassword.topAnchor, constant: 55),
            self.registerButton.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.registerButton.rightAnchor, constant: 18),
            self.registerButton.heightAnchor.constraint(equalToConstant: 73)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    private func createAlredyAccount() {
        self.alredyAccount = UILabel()
        self.alredyAccount.adjustsFontSizeToFitWidth = true
        self.alredyAccount.translatesAutoresizingMaskIntoConstraints = false
        self.alredyAccount.text = "Alredy have an account ?"
        self.alredyAccount.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.alredyAccount.backgroundColor = #colorLiteral(red: 0.9967628121, green: 0.8562327027, blue: 0.7027401328, alpha: 1)
        self.alredyAccount.textAlignment = .center
        self.view.addSubview(self.alredyAccount)
        createAlredyAccountConstraints()
    }
   private func createAlredyAccountConstraints() {
        let constraints = [
            self.alredyAccount.topAnchor.constraint(equalTo: self.registerButton.topAnchor, constant: 68),
            self.alredyAccount.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 18),
            self.view.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: self.alredyAccount.rightAnchor, constant: 18),
       ]
       NSLayoutConstraint.activate(constraints)
   }
    private func createSignIn(){
        self.signIn = UIButton()
        self.signIn.translatesAutoresizingMaskIntoConstraints = false
        self.signIn.setTitle("Sign In", for: .normal)
        self.signIn.setTitleColor(#colorLiteral(red: 0.8462287784, green: 0.3779087067, blue: 0.3571046889, alpha: 1), for: .normal)
        self.signIn.backgroundColor = #colorLiteral(red: 0.9732910991, green: 0.8400194645, blue: 0.6631042957, alpha: 1)
        self.signIn.addTarget(self, action: #selector(didTappedButton), for: .touchUpInside)
        self.view.addSubview(signIn)
        createSignInConstraits()
    }
    private func createSignInConstraits() {
        let constraints = [
            self.signIn.topAnchor.constraint(equalTo: self.registerButton.topAnchor, constant: 62),
            self.signIn.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 288),
        ]
        NSLayoutConstraint.activate(constraints)
    }
    @objc private func didTappedButton() {
        performSegue(withIdentifier: "segue2", sender: nil)
    }
}


