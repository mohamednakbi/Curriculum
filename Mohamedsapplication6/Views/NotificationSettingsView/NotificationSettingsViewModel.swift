import Foundation
import SwiftUI

class NotificationSettingsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isStateenabledthe: Bool = true
    @Published var isStatedisabled: Bool = false
    @Published var isStatedisabledOne: Bool = false
    @Published var isStateenabledtheOne: Bool = true
    @Published var isStatedisabledTwo: Bool = false
    @Published var isStatedisabledThree: Bool = false
}
