//
//  HomeView.swift
//  ExpenseTracker
//
//  Created by EstrHuP on 9/1/24.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
    /// Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    /// Activate Tab
    @State private var activeTab: TabModel = .recents
    
    var body: some View {
        TabView(selection: $activeTab) {
            Text("Recents")
                .tag(TabModel.recents)
                .tabItem { TabModel.recents.tabContent }
            
            Text("Search")
                .tag(TabModel.search)
                .tabItem { TabModel.search.tabContent }
            
            Text("Charts")
                .tag(TabModel.charts)
                .tabItem { TabModel.charts.tabContent }
            
            Text("Settings")
                .tag(TabModel.settings)
                .tabItem { TabModel.settings.tabContent }
        }
        .tint(.appTint)
        .sheet(isPresented: $isFirstTime) {
            IntroView()
                .interactiveDismissDisabled()
        }
    }
}

#Preview {
    HomeView()
}
