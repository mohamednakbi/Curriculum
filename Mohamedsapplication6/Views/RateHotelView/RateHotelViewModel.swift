import Foundation
import SwiftUI

class RateHotelViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var ratingbarRating: Int = 0
    @Binding var isOpen: Bool

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
