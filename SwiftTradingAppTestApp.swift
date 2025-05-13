//
//  SwiftTradingAppTestApp.swift
//  SwiftTradingAppTest
//
//  Created by Alexis Smith on 5/13/25.
//

import SwiftUI

@main
struct SwiftTradingAppTestApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
