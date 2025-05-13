//
//  CircleButtonAnimationView.swift
//  SwiftTradingAppTest
//
//  Created by Alexis Smith on 5/13/25.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            // deprecated --> adjust for .withAnimation or .transaction?
//            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
}
