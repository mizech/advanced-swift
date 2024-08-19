import Foundation

struct MenuItem: Identifiable, MenuItemProtocol {
    var price: Double
    var menuCategory: MenuCategory
    var ordersCount: Int
    var iPrice: Int
    let id = UUID()
    var title: String
    var ingredients: [Ingredient]
}
