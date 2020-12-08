//
//  SettingsViewController.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/17/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    weak var coordinator: MainCoordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    private func setup(){
        initViews()
        setupViews()
        setupConstraints()
    }

    private func initViews(){
        //Инициализация всех вью со стартовыми настройками
    }
    
    //MARK: - Assistant methods
    //все методы, которые требуются для логики работы вью
    
    //MARK: - Event handlers
    //@objc функции для обработки событий
}

//при достаточно большом количестве строк выносится в отдельный файл *ViewName*Layout
//MARK: - Layout
extension SettingsViewController{
    private func setupViews(){
        //формирование структуры вью на экране через .addSubview(UIView)
    }
    
    private func setupConstraints(){
        //настройка констрейнтов для каждого вью через снапкит .snp.makeConstraints({   $0.snp... })
    }
}
