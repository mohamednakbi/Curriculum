import Foundation
import SwiftUI

class BookingOngoing1ViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isCancelBookingViewShow: Bool = false
}
