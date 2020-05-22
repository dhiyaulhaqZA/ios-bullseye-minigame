//
//  AboutView.swift
//  Bullseye
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 22/05/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    let paleOrange = Color(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 179.0 / 255.0)
    
    struct HeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 18))
                .foregroundColor(.black)
                .padding(.init(arrayLiteral: .top, .bottom), 20)
        }
    }
    
    struct TextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 0, leading: 60, bottom: 20, trailing: 60))
        }
    }
    
    var body: some View {
        VStack {
            Text("🎯 Bullseye 🎯").modifier(HeadingStyle())
            Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider").modifier(TextStyle())
            Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.").modifier(TextStyle())
            Text("Enjoy!").modifier(TextStyle())
        }
        .navigationBarTitle("About Bullseye")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
