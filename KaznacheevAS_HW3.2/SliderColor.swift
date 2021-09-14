//
//  SliderColor.swift
//  KaznacheevAS_HW3.2
//
//  Created by Kaznacheev on 13.09.2021.
//

import SwiftUI

struct SliderColor: View {
    @State var valueSlider: Double
    @State var  valeu: Double
    
    var body: some View {
        HStack{
            Text("0")
            Slider(value: $valueSlider)
            Text("255")
            
        }.padding()
    }
}

struct SliderColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderColor()
    }
}
