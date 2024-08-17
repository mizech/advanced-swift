import SwiftUI

struct GridSectionView: View {
    var title: String
    
    var body: some View {
        let layout = [
            GridItem(.flexible(minimum: 100)),
            GridItem(.flexible(minimum: 100)),
            GridItem(.flexible(minimum: 100)),
        ]
        
        VStack(alignment: .leading) {
            Text(title).font(.title)
            LazyVGrid(columns: layout, content: {
                ForEach(0..<12) { num in
                    VStack {
                        Rectangle()
                            .frame(height: 70)
                        Text("Number \(num)")
                    }
                    
                }
            })
        }
    }
}

#Preview {
    GridSectionView(title: "Some title here ...")
}
