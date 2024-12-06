//
//  SlotsView.swift
//  Final Project
//
//  Created by Carson Payne on 12/2/24.
//

import SwiftUI

struct SlotsView: View {
    @State private var turnScore = 0
    @State private var gameScore = 0
    @State private var randomValue0 = 0
    @State private var randomValue1 = 0
    @State private var randomValue2 = 0
    @State private var rotation = 0.0
    @State private var gameOver = false
    var body: some View {
        ZStack {
            Image("Slot Machine 2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .frame(width: 500, height: 500)
            Rectangle()
                .frame(width: 300, height: 140)
                .position(x:250, y: 352)
            
                .preferredColorScheme(.dark)
            
            Image("pips\(randomValue0)")
                .resizable()
                .frame(width: 100, height: 100)
                .position(x:145, y:355)
                .padding()
            Image("pips\(randomValue1)")
                .resizable()
                .frame(width: 100, height: 100)
                .position(x:250, y:355)
                .padding()
            Image("pips\(randomValue2)")
                .resizable()
                .frame(width: 100, height: 100)
                .position(x:355, y:355)
                .padding()
            HStack {
                Button("Spin") {
                    chooseRandom0(times: 3)
                    chooseRandom1(times: 6)
                    chooseRandom2(times: 9)
                    }
                    .position(x:112, y:480)
                    .font(.title)           // makes "Enter Casino" text a title
                    .fontWeight(.bold)      // makes "Enter Casino" text bold
                    .padding()              //moves "Enter Casino" up
                    .foregroundColor(.white)    // makes "Enter Casino" text white
                    .cornerRadius(10)       // makes "Enter Casino" background rounded
                    
                }
        }
    }
    func chooseRandom0(times: Int) {
        if times > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                randomValue0 = Int.random(in: 1...9)
                chooseRandom0(times: times - 1)
            }
        } 
    }
    func chooseRandom1(times: Int) {
        if times > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                randomValue1 = Int.random(in: 1...9)
                chooseRandom1(times: times - 1)
                
                
            }
        }
    }
    func chooseRandom2(times: Int) {
        if times > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                randomValue2 = Int.random(in: 1...9)
                chooseRandom2(times: times - 1)
                
                
            }
        }
    }
}
    struct CustomText: View {
        let text: String
        var body: some View {
            Text(text).font(.custom("Marker Felt", size: 36))
        }
    }
    struct CustomButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .frame(width: 50)
                .font(Font.custom("Marker Felt", size: 24))
                .padding()
                .background(.red).opacity(configuration.isPressed ? 0.0 : 1.0)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }

#Preview {
    SlotsView()
}
