

import SwiftUI

struct TipDetailView: View {
    var category: Category

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(category.imagen)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                
                Text(category.nombre)
                    .font(.largeTitle)
                    .bold()

                ForEach(category.consejos) { tip in
                    VStack(spacing: 10) {
                        Text(tip.texto)
                            .font(.body)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)

                        if let imageName = tip.imagen {
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                                .cornerRadius(10)
                        }

                        if let videoURL = tip.videoURL {
                            Link("Ver Video", destination: URL(string: videoURL)!)
                                .font(.headline)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
        .navigationTitle(category.nombre)
    }
}
