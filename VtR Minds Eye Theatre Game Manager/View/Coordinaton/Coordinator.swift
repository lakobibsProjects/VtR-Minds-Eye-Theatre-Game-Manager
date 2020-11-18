//
//  Coordinator.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/17/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    func start()
}
