//
//  AuthConfigurator.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/18/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

protocol AuthConfiguratorProtocol: class {
    func configure(with viewController: AuthViewController)
}

class AuthConfigurator: AuthConfiguratorProtocol {
    func configure(with viewController: AuthViewController) {
        let presenter = AuthPresenter(view: viewController)
        let interactor = AuthInteractor(presenter: presenter)
        let router = AuthRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router    
    }
}
