import XCTest
@testable import LittleLemon

final class LittleLemonTests: XCTestCase {

    func testMenuItemTitle() throws {
        var usedTitle = "TestTitle"
        
        let menuItem = MenuItem(
            price: 19.99,
            menuCategory: MenuCategory.drink,
            ordersCount: 1,
            iPrice: 20,
            title: usedTitle,
            ingredients: []
        )
        XCTAssertEqual(
            menuItem.title,
            usedTitle,
            "expect title to be \(usedTitle), but found \(menuItem.title)"
        )
    }
    
    func testMenuItemTitleWithIngredients() throws {
        var usedTitle = "TestTitle"
        
        let menuItem = MenuItem(
            price: 19.99,
            menuCategory: MenuCategory.drink,
            ordersCount: 1,
            iPrice: 20,
            title: usedTitle,
            ingredients: [
                Ingredient.broccoli,
                Ingredient.carrot,
                Ingredient.spinach
            ]
        )
        XCTAssertEqual(
            menuItem.title,
            usedTitle,
            "expect title to be \(usedTitle), but found \(menuItem.title)"
        )
    }
}
