//
//  CardView.swift
//  jornual
//
//  Created by Victor Flores on 11/4/20.
//

import SwiftUI

struct CardView: View {
    var item:Item
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing:10){
                Text(item.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Text(item.price)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action:{}){
                    Text("Comprar")
                        .fontWeight(.heavy)
                        .foregroundColor(Color(item.image))
                        .padding(.vertical)
                        .padding(.horizontal,25)
                        .background(Color.white)
                        .cornerRadius(15)
                }
                .padding()
            }
            .padding(.leading, 10)
            .offset(y:45)
            
            Spacer(minLength: 0)
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame( height: UIScreen.main.bounds.height/3)
        }
        .padding()
        .background(
            Color(item.image)
                .cornerRadius(25)
                .padding(.top,98)
        )
        
    }
}

