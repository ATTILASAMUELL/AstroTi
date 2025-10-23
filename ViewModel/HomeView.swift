import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Bem-vindo ao AstroTiAttila!")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Esta é sua tela principal.")
                    .foregroundColor(.secondary)
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
