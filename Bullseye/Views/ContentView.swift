//
//  ContentView.swift
//  Bullseye
//
//  Created by Bianca Muresan on 02.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .lineSpacing(4.0)
                .font(.footnote)
                .multilineTextAlignment(.center)
            
            Text(String(game.target))
                .kerning(-1)
                .fontWeight(.black)
                .font(.largeTitle)
            
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                return Alert(title: Text(""), message: Text(
                    """
                    The value is \(Int(self.sliderValue.rounded()))
                    You scored \(game.points(sliderValue: Int(self.sliderValue.rounded()))) points this round
                    """
                ), dismissButton: .default(Text("ffff")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

