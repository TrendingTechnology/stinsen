import Foundation
import SwiftUI

import Stinsen

class ProfileCoordinator: NavigationCoordinatable {
    var children = Children()
    var navigationStack: NavigationStack<Route> = NavigationStack()

    enum Route {
        case push
        case modal
    }

    func resolveRoute(route: Route) -> Transition {
        switch route {
        case .modal:
            return .modal(AnyView(ProfileScreen()))
        case .push:
            return .push(AnyView(ProfileScreen()))
        }
    }
    
    @ViewBuilder func start() -> some View {
        ProfileScreen()
    }
}
