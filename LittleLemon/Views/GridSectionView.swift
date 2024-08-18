import SwiftUI

struct GridSectionView: View {
    var title: String
    var menuItems: [MenuItem]
    
    var body: some View {
        let layout = [
            GridItem(.flexible(minimum: 100)),
            GridItem(.flexible(minimum: 100)),
            GridItem(.flexible(minimum: 100)),
        ]
        
        VStack(alignment: .leading) {
            Text(title).font(.title)
            LazyVGrid(columns: layout, content: {
                ForEach(menuItems) { item in
                    VStack {
                        Rectangle()
                            .frame(height: 70)
                        Text(item.title)
                    }
                    
                }
            })
        }
    }
}

#Preview {
    GridSectionView(title: "Some title here ...", menuItems: [])
}
