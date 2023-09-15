import Foundation
import SwiftUI

class SecurityViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isStatedisabled: Bool = false
    @Published var isStateenabledthe: Bool = true
    @Published var isStateenabledtheOne: Bool = true
}
