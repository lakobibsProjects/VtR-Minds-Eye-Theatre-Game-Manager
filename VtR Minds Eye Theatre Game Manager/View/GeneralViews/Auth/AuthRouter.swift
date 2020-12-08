//
//  AuthRouter.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/18/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation
import UIKit

protocol AuthRouterProtocol{
    func succesAutorization()
}

class AuthRouter: AuthRouterProtocol{
    private var coordinator: MainCoordinator
    
    init(viewController: AuthViewController){
        //TODO: remove forced unwrapping
        coordinator = viewController.coordinator!
    }
    
    func succesAutorization() {
        coordinator.accountManager(isAutorized: true)
    }
    
    
}
