//
//  AuthViewController.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/17/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import UIKit

protocol AuthViewProtocol: AnyObject{
    
}

class AuthViewController: UIViewController, AuthViewProtocol {    
    weak var coordinator: MainCoordinator?
    
    var presenter: AuthPresenterProtocol!
    let configurator: AuthConfiguratorProtocol = AuthConfigurator()
    
    var authContentView: UIView!
    var loginTextView: UITextView!
    var passwordTextView: UITextView!
    var authButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
        
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func setup(){
        initViews()
        setupViews()
        setupConstraints()
    }
    
    private func initViews(){
        authContentView = UIView()
        loginTextView =  UITextView()
        loginTextView.textContentType = .nickname
        passwordTextView =  UITextView()
        passwordTextView.textContentType = .password
        authButton =  UIButton()
        authButton.setTitle("Log in", for: .normal)
        authButton.backgroundColor = AppColor.buttonGray
        authButton.addTarget(self, action: #selector(onAuthButtonPressed), for: .touchUpInside)
    }

    //MARK: - Assistant Functions

    
    //MARK: - Event Handlers
    @objc private func onAuthButtonPressed(){
     
        presenter.onAuthButtonPressed(login: self.loginTextView.text, password: self.passwordTextView.text)
    }
}

//MARK: - Layout
extension AuthViewController{
    private func setupViews(){
        self.view.addSubview(authContentView)
        
        authContentView.addSubview(loginTextView)
        authContentView.addSubview(passwordTextView)
        authContentView.addSubview(authButton)
    }
    
    private func setupConstraints(){
        authContentView.snp.makeConstraints({
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(144)
            $0.centerY.equalToSuperview()
        })
        
        loginTextView.snp.makeConstraints({
            $0.leading.trailing.top.equalToSuperview()
            $0.height.equalTo(32)
        })
        
        passwordTextView.snp.makeConstraints({
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(loginTextView.snp.bottom).offset(8)
            $0.height.equalTo(32)
        })
        
        authButton.snp.makeConstraints({
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(passwordTextView.snp.bottom).offset(8)
            $0.height.equalTo(32)
        })

    }
}
