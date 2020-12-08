//
//  AccountManagerConfigurator.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/26/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

protocol AccountManagerConfiguratorProtocol {
    func configure(with viewController: AccountManagerViewController)
}

class AccountManagerConfigurator: AccountManagerConfiguratorProtocol{
    func configure(with viewController: AccountManagerViewController) {
        let presenter = AccountManagerPresenter(view: viewController)
        let interactor = AccountManagerInteractor(presenter: presenter)
        let router = AccountManagerRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
    
}
