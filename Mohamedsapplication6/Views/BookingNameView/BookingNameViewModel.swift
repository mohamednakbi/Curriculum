import Foundation
import SwiftUI

class BookingNameViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var statusfilltypedText: String = ""
    @Published var firstnameText: String = ""
    @Published var dobText: String = ""
    @Published var emailText: String = ""
    @Published var phoneText: String = ""
}
