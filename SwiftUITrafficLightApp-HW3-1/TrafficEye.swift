//
//  TrafficEye.swift
//  SwiftUITrafficLightApp-HW3-1
//
//  Created by Ivanov Sergey on 10.12.2020.
//

import SwiftUI

struct TrafficEye: View {
    private var color: Color = .white
    private var opacity: Double = 0.3
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(opacity))
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding(10)
            
        
    }
    
    init(_ color: Color) {
        self.color = color
    }
    
    mutating func switchState() {
        opacity = opacity == 0.3 ? 1 : 0.3
    }
}

struct TrafficEye_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TrafficEye(.green)
            
        }
    }
}
