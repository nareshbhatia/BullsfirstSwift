//
//  AccountService.swift
//  BullsfirstSwift
//
//  Created by Naresh Bhatia on 1/29/22.
//

import Foundation

class AccountService: ObservableObject {
    @Published var netWorths: [NetWorth] = []
    
    func getNetWorths() {
        guard let url = URL(string: "https://nested-routes-server.herokuapp.com/net-worths") else { fatalError("Missing URL") }

        let urlRequest = URLRequest(url: url)

        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: ", error)
                return
            }

            guard let response = response as? HTTPURLResponse else { return }

            if response.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedNetWorths = try JSONDecoder().decode([NetWorth].self, from: data)
                        self.netWorths = decodedNetWorths
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }

        dataTask.resume()
    }
}
