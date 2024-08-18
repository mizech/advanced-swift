import SwiftUI

struct Options {
    var isFoodSelected = true
    var isDrinkSelected = true
    var isDessertSelected = true
}

struct MenuItemsView: View {
    @State private var isOptionsViewShown = false
    @State private var options = Options()
   
    var body: some View {
        NavigationStack {
            ScrollView {
                if options.isFoodSelected == true {
                    GridSectionView(title: "Food")
                }
                if options.isDrinkSelected == true {
                    GridSectionView(title: "Drink")
                }
                if options.isDessertSelected == true {
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
            MenuItemsOptionView(options: $options)
        })
    }
}

#Preview {
    MenuItemsView()
}
