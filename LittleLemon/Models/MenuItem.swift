import Foundation

struct MenuItem: Identifiable {
    let id = UUID()
    var title: String
    var Ingredients: [Ingredient]
}
