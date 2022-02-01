//
//  BullsfirstSwiftApp.swift
//  BullsfirstSwift
//
//  Created by Naresh Bhatia on 1/20/22.
//

import SwiftUI

@main
struct BullsfirstSwiftApp: App {
    var accountService = AccountService()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(accountService)
        }
    }
}
