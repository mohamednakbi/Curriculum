import Foundation
import SwiftUI

class BookingCancelledViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var statuserrorcompText: String = ""
    @Published var statuserrorcomponeText: String = ""
}
