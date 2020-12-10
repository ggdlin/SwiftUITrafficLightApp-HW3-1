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
    
    @State var red = TrafficEye(.red)
    @State var yellow = TrafficEye(.yellow)
    @State var green = TrafficEye(.green)
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                red
                yellow
                green
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
            red.switchState()
            yellow.switchState()
            
        case 2:
            trafficState = 3
            yellow.switchState()
            green.switchState()
            
        case 3:
            trafficState = 1
            green.switchState()
            red.switchState()
            
        default:
            text = "NEXT"
            trafficState = 1
            red.switchState()
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
