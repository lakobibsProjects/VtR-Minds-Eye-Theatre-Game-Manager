//
//  AccountManagerPresenter.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/26/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

protocol AccountManagerPresenterProtocol: AnyObject{
    var router: AccountManagerRouterProtocol!{ get set }
    var interactor: AccountManagerInteractorProtocol! {get set}
    func configureView()
}
class AccountManagerPresenter: AccountManagerPresenterProtocol{
    var router: AccountManagerRouterProtocol!
    
    weak var view: AccountManagerViewProtocol!
    var interactor: AccountManagerInteractorProtocol!
    
    required init(view: AccountManagerViewProtocol) {
        self.view = view
    }
    
    
    func configureView() {
        view.games = interactor.fillGames(for: Account(id: 0, name: "", nickName: "", games: []))
    }
    
    
}
