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
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                // Sección 1: Introducción al cuidado ambiental
                Text("1. Introducción al cuidado ambiental en zonas rurales de México")
                    .font(.headline)
                    .padding(.top)
                
                Text("""
En México, las zonas rurales como Milpa Alta son clave para la conservación de la biodiversidad y el mantenimiento de servicios ecosistémicos cruciales, como la purificación del agua y la regulación del clima. Estas áreas son ricas en biodiversidad y hogar de muchas comunidades indígenas y campesinas, que dependen directamente de los recursos naturales para su sustento.

Milpa Alta, ubicada en la parte sur de la Ciudad de México, es una de las delegaciones con mayor extensión de áreas verdes y bosques, donde la agricultura, en especial la producción de nopal, es vital. Esta región enfrenta el desafío de proteger sus bosques y recursos naturales mientras continúa desarrollando sus actividades agrícolas.
""")
                    .padding(.bottom)
                
                // Llamada al componente de la primera pregunta
                Question1()
                
                Divider().padding(.vertical)
                
                // Sección 2: Principales problemas ambientales
                Text("2. Principales problemas ambientales en zonas rurales como Milpa Alta")
                    .font(.headline)
                    .padding(.top)
                
                Text("""
En zonas rurales de México, incluidos lugares como Milpa Alta, los principales problemas ambientales incluyen:

• Deforestación: La tala ilegal y la expansión de áreas agrícolas han reducido significativamente la cobertura forestal en áreas como Milpa Alta. Esta pérdida de árboles provoca erosión del suelo y afecta la captura de agua, lo que es crucial para la Ciudad de México.

• Erosión del suelo: El uso intensivo del suelo para actividades agrícolas sin prácticas de conservación está provocando la erosión. En Milpa Alta, debido a su geografía montañosa, la erosión es un desafío grave que afecta la productividad agrícola.

• Contaminación del agua: En áreas rurales cercanas a la capital, como Milpa Alta, los cuerpos de agua pueden verse contaminados por prácticas agrícolas intensivas, uso de agroquímicos y el mal manejo de desechos.

• Manejo de residuos sólidos: En muchas zonas rurales de México, incluida Milpa Alta, el manejo adecuado de los residuos es un desafío. La falta de infraestructura para el tratamiento de desechos afecta tanto el suelo como los cuerpos de agua cercanos.
""")
                    .padding(.bottom)
                
                // Llamada al componente de la segunda pregunta
                Question2()
                
                Divider().padding(.vertical)
                
                // Sección 3: Beneficios del cuidado ambiental
                Text("3. Beneficios del cuidado ambiental en Milpa Alta y otras zonas rurales")
                    .font(.headline)
                    .padding(.top)
                
                Text("""
El cuidado del medio ambiente en zonas rurales de México, como Milpa Alta, puede traer beneficios tangibles para la comunidad y el entorno:

• Mejora de la agricultura sostenible: Implementar prácticas agrícolas más respetuosas con el medio ambiente, como el uso de abonos orgánicos y la rotación de cultivos, puede aumentar la productividad de cultivos como el nopal y reducir el impacto ambiental.

• Conservación de recursos hídricos: Proteger los bosques y manejar mejor los residuos asegura la conservación de los acuíferos y la calidad del agua, lo que es vital en una zona con estrés hídrico como la Ciudad de México.

• Mitigación del cambio climático: Al mantener los bosques y reforestar áreas degradadas, se ayuda a mitigar los efectos del cambio climático. Milpa Alta, con sus áreas boscosas, puede actuar como un sumidero de carbono, ayudando a reducir las emisiones de gases de efecto invernadero.
""")
                    .padding(.bottom)
                
                // Llamada al componente de la tercera pregunta
                Question3()
                
                Divider().padding(.vertical)
                
                // Sección 4: Acciones que las comunidades pueden tomar
                Text("4. Acciones que las comunidades rurales de Milpa Alta pueden tomar")
                    .font(.headline)
                    .padding(.top)
                
                Text("""
Las comunidades rurales en Milpa Alta pueden implementar varias prácticas sostenibles para proteger el medio ambiente:

• Reforestación y manejo forestal: Proyectos de reforestación son fundamentales para Milpa Alta, donde las áreas boscosas ayudan a captar agua y a prevenir la erosión. Las comunidades pueden trabajar con la CONAFOR para implementar programas de manejo forestal sostenible.

• Agricultura orgánica: La producción de nopal, una actividad clave en Milpa Alta, puede beneficiarse del uso de prácticas de agricultura orgánica, evitando el uso excesivo de agroquímicos que dañan el suelo y el agua.

• Compostaje comunitario: Implementar programas de compostaje para los residuos agrícolas puede mejorar la calidad del suelo y reducir la necesidad de fertilizantes químicos.

• Educación ambiental y turismo ecológico: Fomentar el turismo ecológico en Milpa Alta, como recorridos por sus bosques y áreas agrícolas, puede generar ingresos adicionales para la comunidad y crear conciencia sobre la importancia de proteger el medio ambiente.
""")
                    .padding(.bottom)
                
                // Llamada al componente de la cuarta pregunta
                Question4()
            }
            .padding()
        }
    }
}


