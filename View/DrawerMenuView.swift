import SwiftUI

struct DrawerMenuView: View {
    @Binding var isOpen: Bool

    var body: some View {
        ZStack(alignment: .leading) {
            if isOpen {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture { withAnimation { isOpen = false } }

                VStack(alignment: .leading, spacing: 32) {
                    Text("Menu")
                        .font(.largeTitle.bold())
                        .padding(.top, 60)
                        .foregroundColor(.white)
                    Button("Home") {}
                        .foregroundColor(.white)
                        .font(.headline)
                    Button("Configurações") {}
                        .foregroundColor(.white)
                        .font(.headline)
                    Button("Sobre") {}
                        .foregroundColor(.white)
                        .font(.headline)
                    Spacer()
                }
                .padding(.horizontal, 24)
                .frame(maxWidth: 240, alignment: .leading)
                .frame(maxHeight: .infinity)
                .background(Color.primaryColor)
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeInOut(duration: 0.3), value: isOpen)
    }
}
