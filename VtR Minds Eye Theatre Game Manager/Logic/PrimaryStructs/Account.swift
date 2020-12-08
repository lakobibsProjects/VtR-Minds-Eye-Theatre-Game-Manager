//
//  File.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/26/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

struct Account: Codable{
    var id: Int
    var name: String
    var nickName: String
    var games: [Game]
}
