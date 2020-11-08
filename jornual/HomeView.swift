//
//  HomeView.swift
//  jornual
//
//  Created by Victor Flores on 11/4/20.
//

import SwiftUI

struct HomeView: View {
    
    
    @State var items = [
        Item(title: "dc promodel", price: "$225.49", discount: "7%", image: "dc-red"),
        Item(title: "Element Mohave", price: "$95.49", discount: "7%", image: "element-mohave"),
        Item(title: "vans celeste", price: "$125.49", discount: "7%", image: "vans-cele")
    ]

    var body: some View {
        VStack{
            ZStack{
                HStack{
                    Button(action:{} ) {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 24, weight:.heavy))
                            .foregroundColor(.primary)
                    }
                    Spacer()
                    
                    Button(action:{} ) {
                        Image(systemName: "bag")
                            .font(.system(size: 24, weight:.heavy))
                            .foregroundColor(.primary)
                    }
                }
                Text("DubiShop")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
            }
            .padding()
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                VStack(spacing:20){
                    ForEach(items){ item in
                        CardView(item: item)
                    }
                }
                .padding()
            }
        }
    }
}
