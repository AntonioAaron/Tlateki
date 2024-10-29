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
                    Image("mapa")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("Mapa")
                }
            NewsView()
                .tabItem {
                    Image("noticia")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("Noticias")
                }
            EducationView()
                .tabItem {
                    Image("educacion")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("Educación")
                }
            TipsView()
                .tabItem {
                    Image("consejos")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("Consejos")
                }
        }
        .accentColor(.blue)
    }
}
