//
//  AuthInteractor.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/18/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

protocol AuthInteractorProtocol{
    func autorize(login: String, password: String) -> Bool
}

class AuthInteractor: AuthInteractorProtocol{
     weak var presenter: AuthPresenterProtocol!
    let rm: RequestManager = RequestManager.shared
    
    required init(presenter: AuthPresenterProtocol) {
        self.presenter = presenter
    }
    
    func autorize(login: String, password: String) -> Bool {
        return rm.autorization(login: login, password: password)
    }
}
