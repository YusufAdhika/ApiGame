//
//  ContentView.swift
//  Game
//
//  Created by Mactop78 on 17/11/20.
//

import SwiftUI
import SwiftWebImage

struct ContentView: View {
    @ObservedObject var api = Api()
    @State var searchGame: String
    var body: some View {
        NavigationView{
            VStack{
                TextField("Search...", text:$searchGame)
                    .padding(10)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                                        
                List(api.game.filter({searchGame.isEmpty ? true: $0.name.contains(searchGame)})){ tolol in
                    NavigationLink(destination: Detail(xdetail: tolol)){
                        XList(xlist: tolol, searchGame: "")
                    }
                }
            }
        .navigationTitle("DB Film")
        }
        
        .onAppear{
            self.api.getData()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchGame: "")
    }
}
