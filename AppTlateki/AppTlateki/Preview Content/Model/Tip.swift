
import Foundation

struct Tip: Identifiable {
    let id = UUID()
    var texto: String
    var imagen: String?   // Imagen opcional
    var videoURL: String? // URL de video opcional
}
