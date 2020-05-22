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
                    "The slider's value is 50.\n" +
                    "You scored 999"), dismissButton: .default(Text("Awesome!"), action: {
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
                Text("999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Info")
                }
            }.padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
