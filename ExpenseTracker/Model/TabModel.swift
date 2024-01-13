//
//  TabModel.swift
//  ExpenseTracker
//
//  Created by EstrHuP on 13/1/24.
//

import SwiftUI

enum TabModel: String {
    case recents = "Recents"
    case search = "Filter"
    case charts = "Charts"
    case settings = "Settings"
    
    @ViewBuilder
    var tabContent: some View {
        switch self {
        case .recents:
            Image(systemName: LocalImageConstants.calendar)
            Text(self.rawValue)
        case .search:
            Image(systemName: LocalImageConstants.magnifyingglass)
            Text(self.rawValue)
        case .charts:
            Image(systemName: LocalImageConstants.chartXaxis)
            Text(self.rawValue)
        case .settings:
            Image(systemName: LocalImageConstants.gearshape)
            Text(self.rawValue)
        }
    }
}
