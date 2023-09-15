import Foundation
import SwiftUI

class SearchTypeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchbar: String = ""
}
