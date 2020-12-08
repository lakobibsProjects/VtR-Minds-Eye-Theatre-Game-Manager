//
//  Game.swift
//  VtR Minds Eye Theatre Game Manager
//
//  Created by user166683 on 11/18/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

struct Game: Codable{
    var id: UUID
    var name:String
    var members: [Account]
}
