//
//  AboutView.swift
//  Bullseye
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 22/05/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("🎯 Bullseye 🎯")
            Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider")
            Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.")
            Text("Enjoy!")
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
