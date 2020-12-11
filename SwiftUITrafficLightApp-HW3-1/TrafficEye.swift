//
//  TrafficEye.swift
//  SwiftUITrafficLightApp-HW3-1
//
//  Created by Ivanov Sergey on 10.12.2020.
//

import SwiftUI

struct TrafficEye: View {
    var color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(opacity))
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding(10)
    }
}

struct TrafficEye_Previews: PreviewProvider {
    static var previews: some View {
            TrafficEye(color: .green, opacity: EyeState.off.rawValue)
    }
}
