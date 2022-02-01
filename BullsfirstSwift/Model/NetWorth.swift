//
//  NetWorth.swift
//  BullsfirstSwift
//
//  Created by Naresh Bhatia on 1/20/22.
//

import Foundation

struct NetWorth: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    var investmentTotal: Double;
    var cashBalance: Double;
}
