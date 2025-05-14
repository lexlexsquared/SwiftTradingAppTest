//
//  SwiftTradingAppTestApp.swift
//  SwiftTradingAppTest
//
//  Created by Alexis Smith on 5/13/25.
//

import SwiftUI

@main
struct SwiftTradingAppTestApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
