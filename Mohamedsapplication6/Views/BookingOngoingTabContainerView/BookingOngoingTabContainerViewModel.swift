import Foundation
import SwiftUI

class BookingOngoingTabContainerViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var tabGroup137List: [String] = ["chips", "chips_One", "chips_Two"]
    @Published var selectedGroup137Index: Int = 0
}
