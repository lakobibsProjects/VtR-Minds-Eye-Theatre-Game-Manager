//
//  AccountManagerViewController.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/17/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import UIKit
import SnapKit

protocol AccountManagerViewProtocol: AnyObject{
    var games: [Game] { get set }
}

class AccountManagerViewController: UIViewController, AccountManagerViewProtocol {
    weak var coordinator: MainCoordinator?
    var isAutorized = false
    var games: [Game] = []
    
    
    var presenter: AccountManagerPresenterProtocol!
    let configurator: AccountManagerConfiguratorProtocol = AccountManagerConfigurator()
    
    var gamesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if !isAutorized{
            coordinator?.auth()
        }
        setup()
    }
    
    private func setup(){
        initViews()
        setupViews()
        setupConstraints()
        
    }
    
    private func initViews(){
        gamesTable = UITableView()
        gamesTable.delegate = self
        gamesTable.dataSource = self
    }

    
    //MARK: - Assistant methods

    
    //MARK: - Event handlers
    
}

//MARK: -Layout
extension AccountManagerViewController{
    private func setupViews(){
        self.view.addSubview(gamesTable)
    }
    
    private func setupConstraints(){
        gamesTable.snp.makeConstraints({
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview().inset(8)
            $0.top.equalToSuperview().inset(128)
        })
    }
}

//MARK: - TableViewDeleagte & DataSource
extension AccountManagerViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //logic to customize cell
        let cell = UITableViewCell()
        
        return cell
    }
    
    
}
