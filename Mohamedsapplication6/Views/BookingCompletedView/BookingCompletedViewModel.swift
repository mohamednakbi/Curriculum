import Foundation
import SwiftUI

class BookingCompletedViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var statussuccessText: String = ""
    @Published var statussuccessoneText: String = ""
}
