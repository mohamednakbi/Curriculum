import Foundation
import SwiftUI

class ConfirmPaymentViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isPaymentSuccessfulViewShow: Bool = false
}
