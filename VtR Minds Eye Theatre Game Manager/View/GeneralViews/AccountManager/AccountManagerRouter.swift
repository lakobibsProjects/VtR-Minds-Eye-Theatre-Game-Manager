//
//  AccountManagerRouter.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/26/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

protocol  AccountManagerRouterProtocol {
    func gamePressed(game: Game)
    func settings()
    func logout()
}

class AccountManagerRouter: AccountManagerRouterProtocol{
    private var coordinator: MainCoordinator
    
    init(viewController: AccountManagerViewController) {
        coordinator = viewController.coordinator!
    }
    
    func gamePressed(game: Game) {
        //segeue to gameVC
        print(game.name)
    }
    
    func settings() {
        //segeue to settingsVC
        print("Settings")
    }
    
    func logout(){
        //exit from account
        coordinator.auth()
    }
    
}
