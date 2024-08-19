import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get }
    var iPrice: Int { get set }
    var ingredients: [Ingredient] { get set }
}
