//
//  AccountCard.swift
//  BullsfirstSwift
//
//  Created by Naresh Bhatia on 1/20/22.
//

import Foundation
import SwiftUI

struct AccountCard: View {
    var netWorth: NetWorth
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(netWorth.name)
                    .font(.headline)
                Text(netWorth.investmentTotal + netWorth.cashBalance, format: .currency(code: "USD")).font(.title)
//                HStack {
//                    Text("Net Worth")
//                    Spacer()
//                    Text(netWorth.investmentTotal + netWorth.cashBalance, format: .currency(code: "USD")).monospacedDigit()
//                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.blue.opacity(0.05))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 50/255, green: 50/255, blue: 50/255, opacity: 0.1), lineWidth: 2)
        )
    }
}

struct AccountCard_Previews: PreviewProvider {
    static var previews: some View {
        AccountCard(netWorth: netWorths[0])
    }
}
