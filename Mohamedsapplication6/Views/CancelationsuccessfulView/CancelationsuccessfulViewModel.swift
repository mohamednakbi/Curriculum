import Foundation
import SwiftUI

class CancelationsuccessfulViewModel: ObservableObject {
    @Binding var isOpen: Bool

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
