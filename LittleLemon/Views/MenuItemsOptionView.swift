import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) private var dismiss
    
    @Binding var isFoodSelected: Bool
    @Binding var isDrinkSelected: Bool
    @Binding var isDessertSelected: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Button("Done") {
                    dismiss()
                }
            }
            Text("Filter")
                .font(.title)
            Form {
                Section {
                    Toggle(MenuCategory.food.rawValue, isOn: $isFoodSelected)
                    Toggle(MenuCategory.drink.rawValue, isOn: $isDrinkSelected)
                    Toggle(MenuCategory.dessert.rawValue, isOn: $isDessertSelected)
                } header: {
                    Text("Selected Categories"
                        .uppercased())
                }
                Section {
                    Text("Most Popular")
                    Text("Price $-$$$")
                    Text("A-Z")
                } header: {
                    Text("Sort by".uppercased())
                }
            }
        }.padding()
    }
}

#Preview {
    MenuItemsOptionView(isFoodSelected: .constant(true), isDrinkSelected: .constant(true), isDessertSelected: .constant(true))
}
