//
//  EducationView.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

import SwiftUI

struct EducationView: View {
    @State private var showMap = false
    @State private var quizQuestionIndex = 0
    @State private var quizAnswer = ""
    @State private var showQuizResult = false
    
    // Información sobre reciclaje
    let recyclingInfo = [
        "Reciclar ayuda a reducir la cantidad de residuos en los vertederos.",
        "El reciclaje de aparatos electrónicos es esencial para evitar la contaminación.",
        "El reciclaje de aparatos electrónicos es esencial para evitar la contaminación.",
        "Puedes llevar tus pilas usadas a puntos de recolección especializados."
    ]
    
    let recyclingSymbols = [
        (symbol: "♻️", description: "Símbolo de reciclaje: Indica que el material es reciclable."),
                (symbol: "🔋", description: "Punto de recolección de pilas: Lleva las pilas a un lugar especializado."),
                (symbol: "🪨", description: "Vidrio: Se recicla en contenedores verdes."),
                (symbol: "📄", description: "Papel: Se recicla en contenedores azules.")
    ]

    
    // Preguntas del quiz
    let quizQuestions = [
        (question: "¿Qué tipo de material NO se puede reciclar?", options: ["Plástico", "Vidrio", "Papel", "Pilas"], correctAnswer: "Pilas"),
        (question: "¿Qué color de contenedor se usa para el vidrio?", options: ["Verde", "Azul", "Amarillo", "Rojo"], correctAnswer: "Verde")
    ]

    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(spacing: 20) {
                    // Título
                    Text("Reciclaje")
                        .font(.largeTitle)
                        .foregroundColor(.green)
                        .padding()
                    
                    // Información sobre reciclaje sin tabulaciones
                    VStack(alignment: .leading, spacing: 10){
                        ForEach(recyclingInfo, id: \.self) { info in
                            Text(info)
                                .font(.body)
                                .padding(.horizontal)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.green.opacity(0.1)))
                    .padding(.horizontal)
                    // Botón para acceder al mapa
                    Button(action: {
                        showMap.toggle()
                    }) {
                        Text("Ver Puntos de Reciclaje en el Mapa")
                            .font(.headline)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .sheet(isPresented: $showMap) {
                        FullMapView(showFullMap: $showMap)
                    }
                    
                    //Seccion de simbolos de reciclaje
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Significado de Símbolos de Reciclaje")
                            .font(.title2)
                            .foregroundColor(.green)
                            .padding(.top)
                        
                        ForEach(recyclingSymbols, id: \.symbol) { symbolInfo in
                            HStack(alignment: .top) {
                                Text(symbolInfo.symbol)
                                    .font(.largeTitle)
                                    .padding(.trailing, 10)
                                Text(symbolInfo.description)
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding()
                    
                    
                    // Quiz interactivo
                    VStack {
                        
                        Text("Quiz de Reciclaje")
                            .font(.title)
                            .foregroundColor(.green)
                            .padding(.bottom, 5)
                        
                        Text(quizQuestions[quizQuestionIndex].question)
                            .font(.headline)
                            .padding()
                        
                        ForEach(quizQuestions[quizQuestionIndex].options, id: \.self) { option in
                            Button(action: {
                                quizAnswer = option
                                showQuizResult = true
                            }) {
                                Text(option)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                            }
                        }
                        
                        // Mostrar resultado del quiz
                        if showQuizResult {
                            Text(quizAnswer == quizQuestions[quizQuestionIndex].correctAnswer ? "¡Correcto!" : "Intenta de nuevo")
                                .foregroundColor(quizAnswer == quizQuestions[quizQuestionIndex].correctAnswer ? .green : .red)
                                .padding()
                            
                            Button("Siguiente pregunta") {
                                quizQuestionIndex = (quizQuestionIndex + 1) % quizQuestions.count
                                showQuizResult = false
                            }
                            .padding()
                        }
                    }
                    .padding()
                    
                    Spacer()
                }
            }
        }
    }
}
struct CommonContainer: Identifiable {
    
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    let recipe: String
}

let commonContainer = [
    
    CommonContainer(name:"Árnica", imageName: "arnica", description: "Los químicos activos en la árnica pueden reducir la hinchazón, disminuir el dolor y actuar como antibióticos. Pero la árnica puede ser peligrosa cuando se toma por vía oral, a menos que se use en diluciones homeopáticas.", recipe: "Pon una olla con dos litros de agua. Agrega lo que tomen tus dedos de árnica. Pon una tapa para conservar el calor. Déjala hervir a fuego medio. Luego de que hierva debes retirarla del fuego. Déjala reposar durante 10 minutos con la tapa puesta. Cuela el té al servirlo en una taza. Puedes endulzarlo al gusto con miel o azúcar y recuerda que tú puedes secar tu árnica para no usarla fresca. "),
    CommonContainer(name:"Sábila", imageName: "sabila", description: "Alivia contusiones, esguinces y dolores", recipe: "Usar con "),
    CommonContainer(name:"Manzanilla", imageName: "manzanilla", description: "Alivia contusiones, esguinces y dolores", recipe: "Usar con ")
]

struct ContainerDetailView: View {
    
    let container: CommonContainer
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20){
                
                Image(container.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .clipped()
                
                Text(container.name)
                    .font(.largeTitle)
                    .padding(.top)
                
                Text(container.description)
                    .font(.body)
                    .padding()
                
                Text("Receta")
                    .font(.headline)
                    .padding(.top)
                
                Text(container.recipe)
                    .font(.body)
                    .padding()
                
                Spacer()
                
            }
            
            .navigationTitle(container.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            
            EducationView()
            
        }
    }
}
