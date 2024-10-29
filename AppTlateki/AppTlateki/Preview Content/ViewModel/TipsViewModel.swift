import Foundation

class TipsViewModel: ObservableObject {
    @Published var categories: [Category] = [
        Category(nombre: "Tóxicos", imagen: "toxic-image", consejos: [
            Tip(texto: "Lleva los productos químicos a un centro de reciclaje especializado.", imagen: nil, videoURL: nil),
            Tip(texto: "No mezcles productos de limpieza, esto puede ser peligroso.", imagen: nil, videoURL: "https://example.com/cleaning-video"),
            Tip(texto: "Utiliza guantes al manipular productos químicos para proteger tu piel.", imagen: nil, videoURL: nil),
            Tip(texto: "Deshazte de los aerosoles en un centro de reciclaje adecuado.", imagen: nil, videoURL: nil)
        ]),
        
        Category(nombre: "PET", imagen: "pet-image", consejos: [
            Tip(texto: "Lava y aplana las botellas antes de reciclar.", imagen: "pet-tip1", videoURL: nil),
            Tip(texto: "Consulta los puntos de reciclaje en tu área.", imagen: nil, videoURL: "https://example.com/pet-video"),
            Tip(texto: "Evita el uso de bolsas de plástico desechables.", imagen: "plastic-bag", videoURL: nil),
            Tip(texto: "Usa botellas reutilizables para reducir el desperdicio.", imagen: "reusable-bottle", videoURL: nil)
        ]),
        
        Category(nombre: "Cartón", imagen: "cardboard-image", consejos: [
            Tip(texto: "Asegúrate de que el cartón esté seco.", imagen: "cardboard-dry", videoURL: nil),
            Tip(texto: "Recicla cajas de productos, no las tires.", imagen: "box-recycle", videoURL: nil),
            Tip(texto: "Desarma las cajas para facilitar el reciclaje.", imagen: "flatten-box", videoURL: nil),
            Tip(texto: "Evita el uso de cartón encerado para reciclar.", imagen: "waxed-cardboard", videoURL: nil)
        ]),
        
        Category(nombre: "Vidrio", imagen: "glass-image", consejos: [
            Tip(texto: "Lava los frascos antes de reciclar.", imagen: "clean-glass", videoURL: nil),
            Tip(texto: "No mezcles vidrio con otros materiales reciclables.", imagen: "glass-separation", videoURL: nil),
            Tip(texto: "Recicla botellas de vidrio, pero evita las rotas.", imagen: "broken-glass", videoURL: nil),
            Tip(texto: "Consulta las reglas de reciclaje locales para el vidrio.", imagen: "glass-rules", videoURL: nil)
        ]),
        
        Category(nombre: "Metales", imagen: "metal-image", consejos: [
            Tip(texto: "Las latas de alimentos son reciclables.", imagen: "food-cans", videoURL: nil),
            Tip(texto: "Lava las latas antes de reciclar.", imagen: "clean-cans", videoURL: nil),
            Tip(texto: "No mezcles metales con otros materiales reciclables.", imagen: "metal-separation", videoURL: nil),
            Tip(texto: "Consulta los puntos de reciclaje para metales en tu área.", imagen: "metal-recycling", videoURL: nil)
        ]),
        
        Category(nombre: "Orgánico", imagen: "organic-image", consejos: [
            Tip(texto: "Separa los desechos orgánicos de otros residuos.", imagen: "organic-separation", videoURL: nil),
            Tip(texto: "Usa compostera para desechos de cocina.", imagen: "compost-bin", videoURL: nil),
            Tip(texto: "Evita el uso de plásticos al almacenar residuos orgánicos.", imagen: "organic-storage", videoURL: nil),
            Tip(texto: "Consulta las reglas locales sobre reciclaje de orgánicos.", imagen: "organic-rules", videoURL: nil)
        ]),
        
        Category(nombre: "Electrónicos", imagen: "electronic-image", consejos: [
            Tip(texto: "Nunca tires aparatos electrónicos en la basura común.", imagen: "e-waste", videoURL: nil),
            Tip(texto: "Consulta puntos de recolección para reciclaje de electrónicos.", imagen: "electronic-recycling", videoURL: nil),
            Tip(texto: "Borra tus datos antes de reciclar dispositivos.", imagen: "data-wipe", videoURL: nil),
            Tip(texto: "Considera donar equipos que aún funcionen.", imagen: "donate-electronics", videoURL: nil)
        ]),
        
        Category(nombre: "Ropa", imagen: "clothing-image", consejos: [
            Tip(texto: "Dona ropa que ya no uses a organizaciones benéficas.", imagen: "donate-clothes", videoURL: nil),
            Tip(texto: "Recicla ropa en puntos especializados.", imagen: "clothing-recycle", videoURL: nil),
            Tip(texto: "Repara prendas en lugar de desecharlas.", imagen: "clothing-repair", videoURL: nil),
            Tip(texto: "Considera intercambiar ropa con amigos o familiares.", imagen: "clothing-swap", videoURL: nil)
        ])
    ]
}
