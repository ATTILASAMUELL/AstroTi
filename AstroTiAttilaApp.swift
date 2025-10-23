import SwiftUI
import SwiftData

@main
struct AstroTiAttilaApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            InterestItem.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Erro ao criar ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            SplashView()
                .modelContainer(sharedModelContainer)
        }
    }
}
