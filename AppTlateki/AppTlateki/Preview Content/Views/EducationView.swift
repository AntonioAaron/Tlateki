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
                            .font(.title)
                            .foregroundColor(.black)
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
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.orange.opacity(0.1)))
                                        .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 15){
                        HStack{
                            
                            Image("contenedor")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Contenedores comunes")
                                .font(.title)
                                .padding(.bottom, 5)
                            
                        }
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue.opacity(0.1))
                            
                            
                            List(commonContainer){ container in
                                
                                NavigationLink(destination: ContainerDetailView(container: container)){
                                    
                                    HStack {
                                        Image(container.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50, height: 50)
                                        Text(container.name)
                                            .font(.headline)
                                    }
                                }
                                .listRowBackground(Color.clear)
                            }
                            .frame(height: 300) // Para limitar el tamaño de la lista
                            .listStyle(PlainListStyle())
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue.opacity(0.1)))
                    .padding(.horizontal)
                    
                    
                    // Quiz interactivo
                    VStack {
                        
                        Text("Quiz de Reciclaje")
                            .font(.title)
                            .foregroundColor(.black)
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
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.yellow.opacity(0.1)))
                                        .padding(.horizontal)
                    
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
    let manualTittle: String
    let manualImage: String
}

let commonContainer = [
    
    CommonContainer(
        name:"Botella de plastico",
        imageName: "botella",
        description: "Además de la contaminación a los ecosistemas, los plásticos pueden producir riesgos directos a la salud humana. Por ejemplo, la exposición a ciertas sustancias contenidas en los plásticos (conocidas como disruptores endócrinos) pueden producir alteraciones en la reproducción reproductiva, causar cambios en la respuesta inmune, entre otros efectos, ya que estos compuestos químicos tienen un efecto similar al de algunas hormonas.",
        recipe: "Siguiengo con la jardinería, puedes hacer un sencillo sistema de riego para el césped. Toma la botella plástica, abre varios agujeros a lo largo de la misma y conéctala al extremo de una manguera.Colócala en el césped y abre la llave del grifo. Cuando salga el agua, se dispersará en pequeños surtidores, disminuyendo la potencia del chorro y regando al mismo tiempo en varias direcciones.",
        manualTittle: "Sistema de riego",
        manualImage: "riego"),
    
    CommonContainer(
        name:"Botella de vidrio",
        imageName: "vidrio",
        description: "Las botellas de vidrio tienen tanto beneficios como desventajas ambientales. Por un lado, el proceso de producción de vidrio consume mucha energía y recursos naturales, emitiendo dióxido de carbono y contribuyendo al cambio climático. Además, cuando no se reciclan, las botellas de vidrio pueden tardar miles de años en descomponerse, ocupando espacio en vertederos y afectando la biodiversidad. Sin embargo, el vidrio es 100% reciclable y puede reciclarse indefinidamente sin perder calidad, reduciendo la necesidad de fabricar vidrio nuevo y disminuyendo los residuos. Además, a diferencia del plástico, el vidrio no libera químicos dañinos al ambiente, lo que lo convierte en una opción más segura y sostenible.",
        recipe: "Para hacer un vaso a partir de una botella de vidrio, empieza limpiando bien la botella y marcando una línea recta alrededor de donde deseas cortar. Usa un cortador de vidrio o una sierra especial para realizar el corte, aplicando una presión uniforme; también puedes calentar la botella en agua hirviendo y sumergirla después en agua fría para que se rompa con la tensión. Una vez cortada, lija los bordes con papel de lija fino para evitar cortes, y enjuaga el vaso para eliminar restos de vidrio. Opcionalmente, puedes decorarlo con materiales seguros para alimentos si lo deseas como vaso, o usarlo como maceta o pieza decorativa.",
        manualTittle: "Usos del vidrio",
        manualImage: "vaso"),
    
    CommonContainer(
        name:"Lata",
        imageName: "lata",
        description: "El aluminio reciclado juega un papel importante en su industria y contribuye significativamente a reducir la demanda de aluminio primario, además de tener un precio más atractivo para las empresas.",
        recipe: "Usa un abrelatas para destapar la lata y perfora unos agujeros en el fondo, con un clavo de punta y un martillo, que dejen salir el agua y no ahogar tus vegetales. Si prefieres, o la lata no resulta tan vistosa por sí misma, puedes pintarla. ",
        manualTittle: "Maseta",
        manualImage: "planta")
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
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Text(container.manualTittle)
                    .font(.headline)
                    .padding(.top)
                                
                Image(container.manualImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300) // Tamaño mediano
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Text("Instrucciones")
                    .font(.headline)
                    .padding(.top)
                
                Text(container.recipe)
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
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
