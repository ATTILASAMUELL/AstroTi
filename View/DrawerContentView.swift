import SwiftUI

struct DrawerContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Conteúdo do Drawer")
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.primaryColor)
        .foregroundColor(.white)
    }
}
