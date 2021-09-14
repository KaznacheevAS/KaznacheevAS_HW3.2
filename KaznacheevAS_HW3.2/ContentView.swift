//
//  ContentView.swift
//  KaznacheevAS_HW3.2
//
//  Created by Kaznacheev on 13.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var valueRed: Double = 199.3
    @State private var valueYelou: Double = 140.3
    @State private var valueBlue: Double = 60.3
    var body: some View {
        
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
   
           
            VStack {
                Color(red: valueRed / 255, green: valueBlue / 255, blue: valueYelou / 255)
                    .frame(width: 350, height: 140)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(Color.white, lineWidth: 5))
                    .padding(.top)
                    .padding(.bottom)
                
                SliderColor(valueSlider: $valueRed)
                    .accentColor(.red)
                SliderColor(valueSlider: $valueYelou)
                    .accentColor(.yellow)
                SliderColor(valueSlider: $valueBlue)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderColor: View {
    @Binding var valueSlider: Double
    var body: some View {
        HStack{
            Text("0").bold()
            Slider(value: $valueSlider, in: 1...255, step: 1)
            Text("\(valueSlider)").bold()
        }.padding(.horizontal)
    }
}
