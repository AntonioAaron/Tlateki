//
//  Question4.swift
//  Tlalicalli_v2
//
//  Created by David Israel Tsutsumi Bernal on 20/10/24.
//

import SwiftUI

struct Question4: View {
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
                    Text("¿Cómo puede el compostaje beneficiar a Milpa Alta?")
                        .font(.body)
                        .padding()
                    
                    // Opciones de respuesta
                    ForEach(["Aumenta la producción de fertilizantes químicos", "Mejora la calidad del suelo", "Reduce la producción de cultivos", "Crea residuos tóxicos"], id: \.self) { option in
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
                        if selectedAnswer == "Mejora la calidad del suelo" {
                            Text("¡Correcto! El compostaje mejora la calidad del suelo y reduce la necesidad de fertilizantes químicos.")
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

