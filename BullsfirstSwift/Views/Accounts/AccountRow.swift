//
//  AccountRow.swift
//  BullsfirstSwift
//
//  Created by Naresh Bhatia on 1/27/22.
//

import SwiftUI

struct AccountRow: View {
    var netWorth: NetWorth
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(netWorth.name)
                .font(.headline)
            Text(netWorth.investmentTotal + netWorth.cashBalance, format: .currency(code: "USD")).font(.title)
        }
        .padding()
    }
}

struct AccountRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountRow(netWorth: netWorths[0])
    }
}
