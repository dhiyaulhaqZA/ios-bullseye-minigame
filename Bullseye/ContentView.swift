//
//  ContentView.swift
//  Bullseye
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 18/05/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsPresented = false
    @State var sliderValue = 50.0
    @State var target = Int.random(in: 1...100)
    @State var score = 0
    @State var round = 1
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Put the bullseye as close as you can:")
                Text("\(target)")
            }
            Spacer()
            HStack {
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            Spacer()
            Button(action: {
                self.alertIsPresented = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
            }.alert(isPresented: $alertIsPresented) { () -> Alert in
                return Alert(title: Text("Hello there!"), message: Text(
                "The slider's value is \(sliderValueRounded()).\n" +
                "You scored \(pointsForCurrentRound())"), dismissButton: .default(Text("Awesome!"), action: {
                        self.score += self.pointsForCurrentRound()
                        self.target = Int.random(in: 1...100)
                        self.round += 1
                    }))
            }
            Spacer()
            HStack {
                Button(action: {
                    
                }) {
                    Text("Start over")
                }
                Spacer()
                Text("Score:")
                Text("\(score)")
                Spacer()
                Text("Round:")
                Text("\(round)")
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Info")
                }
            }.padding(.bottom, 20)
        }
    }
    
    func sliderValueRounded() -> Int {
        Int(sliderValue.rounded())
    }
    
    func pointsForCurrentRound() -> Int {
        100 - abs(target - sliderValueRounded())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
