//
//  USPresident.swift
//  PresidentsList
//
//  Created by Jacob Conacher on 11/3/22.
//

import Foundation

struct USPresident: Decodable {
    var name = ""
    var number = ""
    var startDate = ""
    var endDate = ""
    var nickname = ""
    var party = ""
    
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case number = "Number"
        case startDate = "Start Date"
        case endDate = "End Date"
        case nickname = "Nickname"
        case party = "Political Party"
    }
}
