//
//  Detail.swift
//  Game
//
//  Created by Mactop78 on 17/11/20.
//

import SwiftUI
import SwiftWebImage

struct Detail: View {
    @ObservedObject var desc = Api()
    var xdetail: Game
    var body: some View{
        ScrollView{
            VStack(alignment: .leading){
                SwiftImage(xdetail.backgroundImage)
                {imageView in
                    imageView
                        .resizable()
                        .frame(height: 250)
                }
                HStack{
                    Spacer()
                    HStack{
                        Text("Rating:")
                            .bold()
                        Text(String(xdetail.rating))
                    }
                    Spacer()
                    HStack{
                        Text("Release:")
                            .bold()
                        Text(xdetail.released)
                    }
                    Spacer()
                    HStack{
                        Text("Rating Top:")
                            .bold()
                        Text(String(xdetail.ratingTop))
                    }
                    Spacer()
                }
                .font(.system(size: 14))
                .padding(.vertical,1)
                VStack(alignment: .leading){
                Text("Description")
                    .bold()
                    .font(.system(size: 30))
                Text(desc.desc)
                }.padding(.leading,15)
                .padding(.trailing,15)
                    

            }
            .navigationBarTitle(xdetail.name,displayMode: .inline)
            .onAppear{
                self.desc.getDesc(id: xdetail.id)
            }
        }
    }
}
