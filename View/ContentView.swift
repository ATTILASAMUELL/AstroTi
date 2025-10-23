import SwiftUI

struct ContentView: View {
    var body: some View {
        rootView()
            .padding()
            .navigationTitle("Home")
    }
    
    // Usa NavigationStack em iOS 16+, senão usa NavigationView
    @ViewBuilder
    private func rootView() -> some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                mainContent
            }
        } else {
            NavigationView {
                mainContent
            }
        }
    }
    
    private var mainContent: some View {
        VStack(spacing: 20) {
            Text("Bem-vindo ao AstroTiAttila!")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Esta é sua tela principal.")
                .foregroundColor(.secondary)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
