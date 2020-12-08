//
//  AuthPresenter.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/18/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation
import UIKit

protocol AuthPresenterProtocol: AnyObject{
    var router: AuthRouterProtocol! { set get }
    func configureView()
    func onAuthButtonPressed(login: String, password: String)
}

class AuthPresenter: AuthPresenterProtocol{
    weak var view: AuthViewProtocol!
    var interactor: AuthInteractorProtocol!
    var router: AuthRouterProtocol!
    
    required init(view: AuthViewController) {
        self.view = view
    }
    
    func configureView() {
        
    }
    
    @objc func onAuthButtonPressed(login: String, password: String) {
        if interactor.autorize(login: login, password: password){
            router.succesAutorization()
        } else {
            let dialogMessage = UIAlertController(title: "Authorization failure", message: "Incorrect login or password" , preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default)
            dialogMessage.addAction(ok)
            UIApplication.shared.windows.last?.rootViewController?.present(dialogMessage, animated: true)
        }
    }
}
