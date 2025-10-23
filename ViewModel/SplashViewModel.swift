import Foundation
import Combine

final class SplashViewModel: ObservableObject {
    @Published var isActive = false
    
    func start() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.isActive = true
        }
    }
}
