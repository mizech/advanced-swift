import SwiftUI

struct MenuItemsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                GridSectionView(title: "Food")
                GridSectionView(title: "Drink")
                GridSectionView(title: "Dessert")
            }
            .padding()
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    MenuItemsView()
}
