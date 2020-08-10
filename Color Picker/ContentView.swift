//
//  ContentView.swift
//  Color Picker
//
//  Created by Sreenivas K on 10/08/20.
//  Copyright © 2020 Sreenivas K. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var red:Double=225;
    @State private var green:Double=225;
    @State private var blue:Double=225;
    var body: some View {
        VStack{
            Rectangle().frame(width: 150, height: 150, alignment: Alignment.center)
                .foregroundColor(Color(red: red/225, green: green/225, blue: blue/225))
            
            Slider(value: $red,in:0...225,step: 1)
            Text("Red: \(Int(red))")
            
            Slider(value: $green,in:0...225,step: 1)
            Text("Green: \(Int(green))")
            
            Slider(value: $blue,in:0...225,step: 1)
            Text("Blue: \(Int(blue))")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
