//
//  NewsView.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

//
//  HistoryView.swift
//  Tlalicalli_v2
//
//  Created by Facultad de Contaduría y Administración on 17/10/24.
//

import SwiftUI

struct NewsView: View {
    @State private var isSection1Expanded = false
    @State private var isSection2Expanded = false
    @State private var isSection3Expanded = false
    @State private var isSection4Expanded = false
    @State private var isSection5Expanded = false
    @State private var likedSection1 = false
    @State private var likedSection2 = false
    @State private var likedSection3 = false
    @State private var likedSection4 = false
    @State private var likedSection5 = false

    var body: some View {
        ScrollView {
            VStack {
                Text("Noticias")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding(.top)

                Text("Aquí encontrarás noticias acerca de la contaminación causada por los residuos sólidos.")
                    .font(.custom("HelveticaNeue", size: 16))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Divider().padding(.vertical)

                // Sección 1
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "leaf.circle.fill")
                            .foregroundColor(.green)
                            .font(.title)
                        Text("Operan 70 tiraderos a cielo abierto en Puebla e incumplen la normativa")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("noticia1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150)
                        .cornerRadius(10)
                        .clipped()

                    if isSection1Expanded {
                        Text("En la entidad existen 70 tiraderos a cielo abierto que incumplen con la normativa para el tratamiento de los residuos, informó Norma Sandoval Gómez, encargada de despacho de la Secretaría de Medio Ambiente, Desarrollo Sustentable y Ordenamiento Territorial (SMADSOT), quien indicó que la cifra se obtuvo de un estudio que se realizó este año y que será heredado a la siguiente administración.")
                        .padding(.bottom)

                        Question1()
                    }

                    Button(action: { isSection1Expanded.toggle() }) {
                        Text(isSection1Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection1.toggle() }) {
                            Image(systemName: likedSection1 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)

                    HStack {
                        Link("Ir a la noticia", destination: URL(string: "https://www.elsoldepuebla.com.mx/local/operan-70-tiraderos-a-cielo-abierto-en-puebla-e-incumplen-la-normativa-12782126.html")!)
                            .foregroundColor(.blue)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)

                Divider().padding(.vertical)

                // Sección 2
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "globe.americas.fill")
                            .foregroundColor(.orange)
                            .font(.title)
                        Text("Mala gestión en México de 5.7 millones de toneladas de residuos plásticos por año")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("noticia2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150)
                        .cornerRadius(10)
                        .clipped()

                    if isSection2Expanded {
                        Text("México genera 5.7 millones de toneladas de residuos plásticos al año y son mal gestionados, lo cual también contribuye a la crisis climática ya que esta industria aporta el 3.4 por ciento de las emisiones de gases de efecto de invernadero a nivel global, señaló el Fondo Mundial para la Naturaleza (WWF, por sus siglas en inglés).")
                        .padding(.bottom)

                        Question2()
                    }

                    Button(action: { isSection2Expanded.toggle() }) {
                        Text(isSection2Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection2.toggle() }) {
                            Image(systemName: likedSection2 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)

                    HStack {
                        Link("Ir a la noticia", destination: URL(string: "https://www.jornada.com.mx/noticia/2024/03/20/sociedad/mala-gestion-en-mexico-de-5-7-millones-de-ton-de-residuos-plasticos-por-ano-3220")!)
                            .foregroundColor(.blue)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.orange.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)

                Divider().padding(.vertical)

                // Sección 3
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "hands.sparkles.fill")
                            .foregroundColor(.blue)
                            .font(.title)
                        Text("Residuos sólidos en Oaxaca: OCCAMA alerta sobre la crisis de gestión")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("noticia3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150)
                        .cornerRadius(10)
                        .clipped()

                    if isSection3Expanded {
                        Text("En un pronunciamiento, el Observatorio Ciudadano/Comunitario del Agua y Medio Ambiente de los Valles Centrales de Oaxaca (OCCAMA), sostuvo que esta situación responde a las formas de vida modernas fundadas en el consumismo, donde el cuidado de la vida y el medio ambiente han pasado a segundo término frente a intereses económicos y agendas políticas particulares.")
                        .padding(.bottom)

                        Question3()
                    }

                    Button(action: { isSection3Expanded.toggle() }) {
                        Text(isSection3Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection3.toggle() }) {
                            Image(systemName: likedSection3 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)

                    HStack {
                        Link("Ir a la noticia", destination: URL(string: "https://www.nvinoticias.com/oaxaca/prevencion/residuos-solidos-en-oaxaca-occama-alerta-sobre-la-crisis-de-gestion/167524")!)
                            .foregroundColor(.blue)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)

                Divider().padding(.vertical)

                // Sección 4
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "leaf.circle")
                            .foregroundColor(.purple)
                            .font(.title)
                        Text("Residuos Urbanos: calamidad y oportunidad para México")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("noticia4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150)
                        .cornerRadius(10)
                        .clipped()

                    if isSection4Expanded {
                        Text("La basura o Residuos Sólidos Urbanos (RSU) es un fenómeno sociocultural que afecta a todos, siendo consecuencia de una mala planeación que propicia la economía informal e impacta al ambiente, la salud y la sociedad.")
                        .padding(.bottom)

                        Question4()
                    }

                    Button(action: { isSection4Expanded.toggle() }) {
                        Text(isSection4Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection4.toggle() }) {
                            Image(systemName: likedSection4 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)

                    HStack {
                        Link("Ir a la noticia", destination: URL(string: "https://www.eluniversal.com.mx/opinion/por-mexico-hoy/residuos-urbanos-calamidad-y-oportunidad-para-mexico/")!)
                            .foregroundColor(.blue)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.purple.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)

                Divider().padding(.vertical)

                // Sección 5
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "person.3.fill")
                            .foregroundColor(.teal)
                            .font(.title)
                        Text("El dilema de México y sus siete millones de toneladas de basura plástica")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("noticia5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150)
                        .cornerRadius(10)
                        .clipped()

                    if isSection5Expanded {
                        Text("Cada minuto, 500.000 millones de bolsas son usadas en todo el mundo y casi otro millón de envases de refrescos son vendidos. La mayoría de estos materiales acabará en los océanos, transformados en contenedores de basura con más de 140 millones de toneladas de fragmentos de plástico flotando al son de las corrientes.")
                        .padding(.bottom)

                        Question5()
                    }

                    Button(action: { isSection5Expanded.toggle() }) {
                        Text(isSection5Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection5.toggle() }) {
                            Image(systemName: likedSection5 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)

                    HStack {
                        Link("Ir a la noticia", destination: URL(string: "https://elpais.com/america-futura/2023-01-20/el-dilema-de-mexico-y-las-siete-millones-de-toneladas-de-plastico-que-acaban-en-la-basura-o-en-el-mar.html")!)
                            .foregroundColor(.blue)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.teal.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)
            }
            .padding()
        }
    }
}
