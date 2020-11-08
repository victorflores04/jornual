//
//  TabBarView.swift
//  jornual
//
//  Created by Victor Flores on 11/4/20.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            HomeView().tabItem { Image(systemName: "house") }
            Text("Search").tabItem { Image(systemName: "magnifyingglass") }
            Text("Liked").tabItem { Image(systemName: "suit.heart") }
            Text("Settings").tabItem { Image(systemName: "person") }
        }.accentColor(.black)
    }
}


