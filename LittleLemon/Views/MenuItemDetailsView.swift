import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
    
    var body: some View {
        ScrollView {
            Image(.logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Price:").fontWeight(.bold)
            Text("\(menuItem.price)")
            Text("Ordered:").fontWeight(.bold)
            Text("\(menuItem.ordersCount)")
            Text("Ingredients:").fontWeight(.bold)
            ForEach(menuItem.ingredients, id: \.self) { ingredient in
                Text(ingredient.rawValue)
            }
        }.navigationTitle(menuItem.title)
            .padding()
            .padding(.horizontal, 25)
            .scrollIndicators(.hidden)
    }
}

#Preview {
    MenuItemDetailsView(
        menuItem: MenuItem(
            price: 10.0,
            menuCategory: MenuCategory.dessert,
            ordersCount: 10,
            iPrice: 10,
            title: "Food 01",
            ingredients: []
        )
    )
}
