import SwiftUI

struct MenuItemsView: View {
    @State private var isOptionsViewShown = false
    @State private var isFoodSelected = true
    @State private var isDrinkSelected = true
    @State private var isDessertSelected = true
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if isFoodSelected == true {
                    GridSectionView(title: "Food")
                }
                if isDrinkSelected == true {
                    GridSectionView(title: "Drink")
                }
                if isDessertSelected == true {
                    GridSectionView(title: "Dessert")
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
            MenuItemsOptionView(isFoodSelected: $isFoodSelected, isDrinkSelected: $isDrinkSelected, isDessertSelected: $isDessertSelected)
        })
    }
}

#Preview {
    MenuItemsView()
}
