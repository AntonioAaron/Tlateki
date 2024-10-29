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

    
    // Preguntas del quiz
    let quizQuestions = [
        (question: "¿Qué tipo de material NO se puede reciclar?", options: ["Plástico", "Vidrio", "Papel", "Pilas"], correctAnswer: "Pilas"),
        (question: "¿Qué color de contenedor se usa para el vidrio?", options: ["Verde", "Azul", "Amarillo", "Rojo"], correctAnswer: "Verde")
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Título
                Text("Reciclaje")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()

                // Información sobre reciclaje sin tabulaciones
                ForEach(recyclingInfo, id: \.self) { info in
                    Text(info)
                        .font(.body)
                        .padding(.horizontal)
                        .multilineTextAlignment(.leading)
                }

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
                
                // Quiz interactivo
                VStack {
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
