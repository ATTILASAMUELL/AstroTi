import SwiftUI

struct EditInterestView: View {
    @State var title: String
    @State var date: Date
    let onSave: (String, Date) -> Void
    let onCancel: () -> Void

    var body: some View {
        NavigationStack {
            Form {
                TextField("Título", text: $title)
                DatePicker("Data", selection: $date, displayedComponents: .date)
            }
            .navigationTitle("Editar")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar") {
                        onCancel()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Salvar") {
                        onSave(title, date)
                    }
                }
            }
        }
    }
}
