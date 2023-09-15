import Foundation
import SwiftUI

class ForgotPasswordFilledTypeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var otpviewOTP1: String = ""
}
