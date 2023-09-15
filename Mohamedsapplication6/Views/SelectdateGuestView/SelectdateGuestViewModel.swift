import Foundation
import SwiftUI

class SelectdateGuestViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var dateStartDate: Date? = nil
    @Published var dateEndDate: Date? = nil
}
