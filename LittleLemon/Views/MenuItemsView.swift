import SwiftUI

struct MenuItemsView: View {
    @State private var isOptionsViewShown = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                GridSectionView(title: "Food")
                GridSectionView(title: "Drink")
                GridSectionView(title: "Dessert")
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
            MenuItemsOptionView()
        })
    }
}

#Preview {
    MenuItemsView()
}
