import SwiftUI

@main
struct LittleLemonApp: App {
    var body: some Scene {
        var menuVM = MenuViewViewModel()
        
        WindowGroup {
            MenuItemsView()
                .environment(menuVM)
        }
    }
}
