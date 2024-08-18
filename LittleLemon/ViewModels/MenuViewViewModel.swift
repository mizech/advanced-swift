import Foundation

@Observable
class MenuViewViewModel {
    var foodMenuItem = [MenuItem]()
    var drinkMenuItem = [MenuItem]()
    var dessertMenuItem = [MenuItem]()
    
    init() {
        for i in 0..<12 {
            self.foodMenuItem.append(
                MenuItem(
                    title: "FoodItem_\(i)",
                    ingredients: [
                        Ingredient.spinach,
                        Ingredient.broccoli,
                        Ingredient.carrot,
                        Ingredient.tomatoSauce,
                        Ingredient.pasta
                    ]
                )
            )
        }
        for i in 0..<8 {
            self.drinkMenuItem.append(
                MenuItem(
                    title: "DrinkItem_\(i)",
                    ingredients: []
                )
            )
        }
        for i in 0..<4 {
            self.dessertMenuItem.append(
                MenuItem(
                    title: "DessertItem_\(i)",
                    ingredients: []
                )
            )
        }
    }
}
