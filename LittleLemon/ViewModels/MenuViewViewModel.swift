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
                    price: 20.0,
                    menuCategory: MenuCategory.food,
                    ordersCount: 0,
                    iPrice: 20,
                    title: "FoodItem_\(i)",
                    ingredients: [
                        Ingredient.broccoli,
                        Ingredient.carrot,
                        Ingredient.pasta,
                        Ingredient.spinach,
                        Ingredient.tomatoSauce
                    ]
                )
            )
        }
        for i in 0..<8 {
            self.drinkMenuItem.append(
                MenuItem(
                    price: 10.0,
                    menuCategory: MenuCategory.drink,
                    ordersCount: 0,
                    iPrice: 10,
                    title: "DrinkItem_\(i)",
                    ingredients: []
                )
            )
        }
        for i in 0..<4 {
            self.dessertMenuItem.append(
                MenuItem(
                    price: 5.0,
                    menuCategory: MenuCategory.dessert,
                    ordersCount: 0,
                    iPrice: 5,
                    title: "DessertItem_\(i)",
                    ingredients: []
                )
            )
        }
    }
}
