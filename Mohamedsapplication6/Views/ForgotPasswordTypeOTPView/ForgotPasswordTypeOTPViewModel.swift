import Foundation
import SwiftUI

class ForgotPasswordTypeOTPViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var otpviewOTP1: String = ""
}
