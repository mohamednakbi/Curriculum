import Foundation
import SwiftUI

class WelcomeScreenViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
}
