import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) private var dismiss
    
    @Binding var options: Options
    
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
                    Toggle(MenuCategory.food.rawValue, isOn: $options.isFoodSelected)
                    Toggle(MenuCategory.drink.rawValue, isOn: $options.isDrinkSelected)
                    Toggle(MenuCategory.dessert.rawValue, isOn: $options.isDessertSelected)
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
    MenuItemsOptionView(options: .constant(Options()))
}
