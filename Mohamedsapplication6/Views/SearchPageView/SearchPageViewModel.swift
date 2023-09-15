import Foundation
import SwiftUI

class SearchPageViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchbar: String = ""
}
