import Foundation
import SwiftData

@MainActor
final class InterestListViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var date: Date = Date()
    @Published var items: [InterestItem] = []
    @Published var editingItem: InterestItem?

    private var context: ModelContext

    init(context: ModelContext) {
        self.context = context
        loadItems()
    }

    func loadItems() {
        let descriptor = FetchDescriptor<InterestItem>()
        if let results = try? context.fetch(descriptor) {
            items = results
        }
    }

    func addItem() {
        guard !title.isEmpty else { return }
        let newItem = InterestItem(title: title, date: date)
        context.insert(newItem)
        try? context.save()
        title = ""
        loadItems()
    }

    func toggleCompleted(_ item: InterestItem) {
        item.isCompleted.toggle()
        try? context.save()
        loadItems()
    }

    func deleteItem(_ item: InterestItem) {
        context.delete(item)
        try? context.save()
        loadItems()
    }

    func startEditing(_ item: InterestItem) {
        editingItem = item
    }

    func saveEdit(title: String, date: Date) {
        guard let item = editingItem else { return }
        item.title = title
        item.date = date
        try? context.save()
        editingItem = nil
        loadItems()
    }

    func cancelEdit() {
        editingItem = nil
    }
}
