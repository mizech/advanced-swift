import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) private var dismiss
    
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
                    Text(MenuCategory.food.rawValue)
                    Text(MenuCategory.drink.rawValue)
                    Text(MenuCategory.dessert.rawValue)
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
    MenuItemsOptionView()
}
