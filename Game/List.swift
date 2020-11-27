////
////  List.swift
////  Game
////
////  Created by Mactop78 on 17/11/20.
////
//
import SwiftUI
import SwiftWebImage

struct XList: View {
    var xlist : Game
    @State var searchGame: String
    var body: some View{
        HStack(){
            SwiftImage(xlist.backgroundImage)
            { imageView in
                imageView
                    .resizable()
                    .frame(height: 115 )
                    .cornerRadius(5)
                    .shadow(radius: 3)
            }
            VStack(alignment: .leading){
                Text(xlist.name)
                Text("Release   :\(xlist.released)")
                    .font(.system(size: 15))
                    .foregroundColor(Color(.gray))
                Text("Rating Top: \(String(xlist.ratingTop))")
                    .font(.system(size: 15))
                    .foregroundColor(Color(.gray))
            }
        }
    }
}
