import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var context
    @StateObject private var viewModel: InterestListViewModel
    @StateObject private var drawerViewModel = DrawerViewModel()

    init() {
        let container = try! ModelContainer(for: InterestItem.self)
        let context = ModelContext(container)
        _viewModel = StateObject(wrappedValue: InterestListViewModel(context: context))
    }

    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    HStack {
                        Button {
                            withAnimation {
                                drawerViewModel.isOpen.toggle()
                            }
                        } label: {
                            Image(systemName: "line.horizontal.3")
                                .font(.title2)
                                .padding()
                        }
                        Spacer()
                        Text("Lista de Interesses")
                            .font(.headline)
                        Spacer()
                        Spacer().frame(width: 40)
                    }
                    .padding(.horizontal)
                    .padding(.top)

                    HStack {
                        TextField("Novo título", text: $viewModel.title)
                            .textFieldStyle(.roundedBorder)
                        DatePicker("", selection: $viewModel.date, displayedComponents: .date)
                            .labelsHidden()
                        Button("Criar") {
                            viewModel.addItem()
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)

                    ScrollView {
                        LazyVStack(spacing: 12) {
                            ForEach(viewModel.items, id: \.id) { item in
                                InterestCardView(
                                    item: item,
                                    onToggle: { viewModel.toggleCompleted(item) },
                                    onDelete: { viewModel.deleteItem(item) },
                                    onEdit: { viewModel.startEditing(item) }
                                )
                            }
                        }
                        .padding(.top)
                    }
                }
                .sheet(item: Binding(
                    get: { viewModel.editingItem },
                    set: { _ in }
                )) { item in
                    EditInterestView(
                        title: item.title,
                        date: item.date,
                        onSave: { title, date in
                            viewModel.saveEdit(title: title, date: date)
                        },
                        onCancel: {
                            viewModel.cancelEdit()
                        }
                    )
                }
            }
            DrawerMenuView(isOpen: $drawerViewModel.isOpen)
        }
    }
}
