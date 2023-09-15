import Foundation
import SwiftUI

class HomeScreenViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchbar: String = ""
}
