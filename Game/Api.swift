//
//  Api.swift
//  Game
//
//  Created by Mactop78 on 17/11/20.
//

import Foundation
import Alamofire

class Api: ObservableObject {
    @Published var game = [Game]()
    @Published var desc = String()
    
    func getData() {
        AF.request("https://api.rawg.io/api/games")
            .responseDecodable(of: Games.self){(data) in
                guard let permainan = data.value else {return}
                self.game = permainan.results
                
                print(self.game)
            }
    }
    func getDesc(id:Int) {
        AF.request("https://api.rawg.io/api/games/\(id)")
            .responseDecodable(of: Desc.self){(data) in
                guard let permainan = data.value else {return}
                self.desc = permainan.descriptionRaw
            
            }
    }
}

