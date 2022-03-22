import Foundation
import SwiftUI

class Login1ViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var group42Text: String = ""
    @Published var group43Text: String = ""
}
