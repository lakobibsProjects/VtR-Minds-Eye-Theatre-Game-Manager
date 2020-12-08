//
//  RequestManager.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/18/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation
import Alamofire

class RequestManager{
    //singleton
    static var shared: RequestManager = {
        let instance = RequestManager()

        return instance
    }()
    
    private init(){  }
    
    func autorization(login: String, password: String) -> Bool{
        // autorization request
        return true
    }
    
    func getGames(for account: Account) -> [Game]{
        
        return []
    }
}
