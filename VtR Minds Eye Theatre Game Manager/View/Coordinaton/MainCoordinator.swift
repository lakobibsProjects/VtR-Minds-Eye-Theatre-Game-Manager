//
//  MainCoordinator.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/17/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {

    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Methods

    func start() {
        let vc = AccountManagerViewController.init()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func auth(){
        let vc = AuthViewController.init()
        vc.coordinator = self
        //global.isAutorized = false
        navigationController.pushViewController(vc, animated: false)
    }
    
    func accountManager(isAutorized: Bool = false){
        let vc = AccountManagerViewController.init()
        vc.coordinator = self
        vc.isAutorized = isAutorized
        navigationController.pushViewController(vc, animated: true)
    }
}
