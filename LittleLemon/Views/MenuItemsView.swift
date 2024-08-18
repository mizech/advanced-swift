import SwiftUI

struct MenuItemsView: View {
    @Environment(MenuViewViewModel.self) var menuVM
    
    @State private var isOptionsViewShown = false
    @State private var options = Options()
   
    var body: some View {
        NavigationStack {
            ScrollView {
                if options.isFoodSelected == true {
                    GridSectionView(title: "Food", menuItems: menuVM.foodMenuItem)
                }
                if options.isDrinkSelected == true {
                    GridSectionView(title: "Drink", menuItems: menuVM.drinkMenuItem)
                }
                if options.isDessertSelected == true {
                    GridSectionView(title: "Dessert", menuItems: menuVM.dessertMenuItem)
                }
            }
            .padding()
            .navigationTitle("Menu")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isOptionsViewShown.toggle()
                    }, label: {
                        Label("Show Options", systemImage: "list.bullet.circle.fill")
                    })
                }
            })
        }
        .sheet(isPresented: $isOptionsViewShown, content: {
            MenuItemsOptionView(options: $options)
        })
    }
}

#Preview {
    MenuItemsView()
}
