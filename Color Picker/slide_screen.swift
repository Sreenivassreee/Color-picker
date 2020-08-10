//
//  slide_screen.swift
//  Color Picker
//
//  Created by Sreenivas K on 10/08/20.
//  Copyright © 2020 Sreenivas K. All rights reserved.
//

import SwiftUI

struct slide_screen: View {
    @Binding var value:Double
    var label:String
    
    var body: some View {
        VStack{
            Slider(value: $value,in:0...225,step: 1)
                Text("\(label): \(Int(value))")
        }
    }
}

struct slide_screen_Previews: PreviewProvider {
    static var previews: some View {
        slide_screen(value: Binding.constant(0), label: "Label")
    }
}
