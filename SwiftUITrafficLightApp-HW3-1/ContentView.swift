//
//  ContentView.swift
//  SwiftUITrafficLightApp-HW3-1
//
//  Created by Ivanov Sergey on 10.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State var text = "START"
    @State var trafficState = 0
    
    @State var red: EyeState = .off
    @State var yellow: EyeState = .off
    @State var green: EyeState = .off
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficEye(color: .red, opacity: red.rawValue)
                TrafficEye(color: .yellow , opacity: yellow.rawValue)
                TrafficEye(color: .green, opacity: green.rawValue)
                Spacer()
                ZStack {
                    Color(.blue)
                    Button(action: action) {
                        Text(text)
                            
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.title)
                            .scaledToFit()
                        
                    }
                    
                }
                .frame(width: 200, height: 60)
                .border(Color.white, width: 3)
                
                
            }
            .padding()
        }
    }
    
    private func action() {
        
        switch trafficState {
        case 1:
            trafficState = 2
            red = .off
            yellow = .on
            
        case 2:
            trafficState = 3
            yellow = .off
            green = .on
            
        case 3:
            trafficState = 1
            green = .off
            red = .on
            
        default:
            text = "NEXT"
            trafficState = 1
            red = .on
        }
        
        
    }
    
}

enum EyeState: Double {
    case on = 1
    case off = 0.3
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
