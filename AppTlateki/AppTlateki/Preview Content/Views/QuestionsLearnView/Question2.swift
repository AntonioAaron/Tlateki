//
//  Question2.swift
//  Tlalicalli_v2
//
//  Created by David Israel Tsutsumi Bernal on 20/10/24.
//

import SwiftUI

struct Question2: View {
    @State private var selectedAnswer: String? = nil
    @State private var showAnswerFeedback = false
    @State private var showQuestion = false
    
    var body: some View {
        VStack {
            // Botón para mostrar la pregunta
            Button(action: {
                showQuestion.toggle()
            }) {
                Text("Ver pregunta")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            
            // Pregunta
            if showQuestion {
                VStack {
                    Text("¿Cuántas toneladas de residuos plásticos produce México cada año que son mal gestionadas?")
                        .font(.body)
                        .padding()
                    
                    // Opciones de respuesta
                    ForEach(["3.5 millones", "4.9 millones", "5.7 millones", "6.2 millones"], id: \.self) { option in
                        Button(action: {
                            selectedAnswer = option
                            showAnswerFeedback = true
                        }) {
                            Text(option)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                        }
                        .padding(.bottom, 5)
                    }
                    
                    // Feedback de respuesta
                    if showAnswerFeedback {
                        if selectedAnswer == "5.7 millones" {
                            Text("¡Correcto!")
                                .foregroundColor(.green)
                                .padding()
                        } else {
                            Text("Incorrecto, intenta nuevamente.")
                                .foregroundColor(.red)
                                .padding()
                        }
                        
                        // Botón para regresar a la lectura
                        Button(action: {
                            showQuestion = false
                            showAnswerFeedback = false
                            selectedAnswer = nil
                        }) {
                            Text("Regresar a la lectura")
                                .font(.subheadline)
                                .foregroundColor(.blue)
                        }
                        .padding(.top, 10)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 5)
            }
        }
        .padding(.vertical)
    }
}

