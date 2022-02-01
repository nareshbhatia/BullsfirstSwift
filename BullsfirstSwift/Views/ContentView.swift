//
//  ContentView.swift
//  BullsfirstSwift
//
//  Created by Naresh Bhatia on 1/20/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var accountService: AccountService
    
    var body: some View {
        AccountList(netWorths: accountService.netWorths)
            .onAppear {
                accountService.getNetWorths()
            }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(AccountService())
        }
    }
}
