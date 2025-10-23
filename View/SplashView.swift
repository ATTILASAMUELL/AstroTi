import SwiftUI

struct SplashView: View {
    @State private var showHome = false

    var body: some View {
        ZStack {
            Color.primaryColor.ignoresSafeArea()
            Text("AstroTiAttila")
                .font(.largeTitle.bold())
                .foregroundColor(.white)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    showHome = true
                }
            }
        }
        .fullScreenCover(isPresented: $showHome) {
            HomeView()
        }
    }
}
