//
//  AccountDetail.swift
//  BullsfirstSwift
//
//  Created by Naresh Bhatia on 1/27/22.
//

import SwiftUI

struct AccountDetail: View {
    var netWorth: NetWorth
    
    var body: some View {
        Text(netWorth.name)
    }
}

struct AccountDetail_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetail(netWorth: netWorths[0])
    }
}
