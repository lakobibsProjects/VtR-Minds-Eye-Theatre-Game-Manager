//
//  AccountManagerInteractor.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/26/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

protocol AccountManagerInteractorProtocol{
    func fillGames(for acc: Account) -> [Game]
}

class AccountManagerInteractor: AccountManagerInteractorProtocol{
    weak var presenter: AccountManagerPresenterProtocol!
    let rm = RequestManager.shared
    
    required init(presenter: AccountManagerPresenterProtocol){
        self.presenter = presenter
    }
    
    func fillGames(for acc: Account) -> [Game]{
        return rm.getGames(for: acc)
    }
}
