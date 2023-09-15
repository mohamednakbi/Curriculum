import Foundation
import SwiftUI

class ProfileSettingsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isStateenabledthe: Bool = true
    @Published var isLogoutViewShow: Bool = false
}
