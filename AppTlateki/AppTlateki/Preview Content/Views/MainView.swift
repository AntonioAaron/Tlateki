//
//  MainView.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image("")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("Mapa")
                }
            NewsView()
                .tabItem {
                    Image("")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("Noticias")
                }
            EducationView()
                .tabItem {
                    Image("")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("Educación")
                }
            TipsView()
                .tabItem {
                    Image("")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("Consejos")
                }
        }
        .accentColor(.blue)
    }
}
