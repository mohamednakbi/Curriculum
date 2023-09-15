import Foundation
import SwiftUI

class HotelDetailsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var typebuttontypePicker1: String = "Option 1"
    @Published var typebuttontypePicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
