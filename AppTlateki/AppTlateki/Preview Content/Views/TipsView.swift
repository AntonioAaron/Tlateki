
//import SwiftUI
//
//struct TipsView: View {
//    @StateObject var viewModel = TipsViewModel()
//
//    var body: some View {
//        NavigationView {
//            List(viewModel.categories) { category in
//                NavigationLink(destination: TipDetailView(category: category)) {
//                    HStack {
//                        Image(category.imagen)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 50, height: 50)
//                            .cornerRadius(5)
//                        Text(category.nombre)
//                            .font(.headline)
//                    }
//                }
//            }
//            .navigationTitle("Tips")
//        }
//    }
//}

import SwiftUI

struct TipsView: View {
    @StateObject private var viewModel = TipsViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Título de la pantalla con estilo personalizado
                Text("Consejos de Reciclaje")
                    .font(.largeTitle)        // Tamaño de fuente grande
                    .foregroundColor(.orange)    // Color de fuente azul
                    .padding(.top)             // Padding superior
                
                List(viewModel.categories) { category in
                    NavigationLink(destination: TipDetailView(category: category)) {
                        HStack {
                            Image(category.imagen)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(8)
                            Text(category.nombre)
                                .font(.headline)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .padding()
            .navigationBarHidden(true) // Oculta el título de la barra de navegación
        }
    }
}
