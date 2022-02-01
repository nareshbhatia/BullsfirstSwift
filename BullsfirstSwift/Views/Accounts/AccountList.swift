//
//  AccountList.swift
//  BullsfirstSwift
//
//  Created by Naresh Bhatia on 1/26/22.
//

import SwiftUI

struct AccountList: View {
    var netWorths: [NetWorth]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(netWorths) { netWorth in
                    NavigationLink {
                        AccountDetail(netWorth: netWorth)
                    } label: {
                        AccountRow(netWorth: netWorth)
                    }
                }
            }
            .navigationTitle("Accounts")
        }
    }
}

struct AccountList_Previews: PreviewProvider {
    static var previews: some View {
        AccountList(netWorths: netWorths)
    }
}
