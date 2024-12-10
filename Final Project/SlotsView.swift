//
//  SlotsView.swift
//  Final Project
//
//  Created by Carson Payne on 12/2/24.
//

import SwiftUI

struct SlotsView: View {
    @State private var turnScore = 0                            //provides the main bases of the variable turn score
    @State private var gameScore = 0                            //provides the main bases of the variable game score
    @State private var randomValue0 = 0                         //provides the main bases of the variable randomvalue0
    @State private var randomValue1 = 0                         //provides the main bases of the variable randomvalue1
    @State private var randomValue2 = 0                         //provides the main bases of the variable randomvalue1
    @State private var rotation = 0.0                           //provides the main bases of the variable rotation
    @State private var gameOver = false                         //provides the main bases of the variable randomvalue1
    @State private var borderWidth0 = 0                         //provides the main bases of the variable randomvalue1
    @State private var borderWidth1 = 0                         //provides the main bases of the variable randomvalue1
    @State private var borderWidth2 = 0                         //provides the main bases of the variable randomvalue1
    @State private var pipNumbers = [1,3,3,3,5,5,5,5,9,9]             //provides the main bases of the variable randomvalue1
    @State private var spinOver = false                        //provides the main bases of the variable randomvalue1
    @State private var message = ""                        //provides the main bases of the variable randomvalue1
    var body: some View {                                       //this sets up another view the viewer can access
        ZStack {                                                //aligns both axises when considering the following code
            Image("Slot Machine 2")                             //adds "slot machine 2" image to the app
                .resizable()                                    //allows image to be resized
                .aspectRatio(contentMode: .fill)                //fits picture into the given space
                .edgesIgnoringSafeArea(.all)                    //allows picture to extend past the given boarders
                .scaledToFill()                                 //allows picture to fit inside of the app
                .frame(width: 500, height: 500)                 //makes the picture extend to these lengths
            Rectangle()
                .frame(width: 300, height: 140)
                .position(x:250, y: 352)
            
                .preferredColorScheme(.dark)
            
            Image("pips\(randomValue0)")
                .resizable()
                .frame(width: 90, height: 90)
                .border(.blue,width: CGFloat(borderWidth0))
                .position(x:130, y:350)
            
                .padding()
            Image("pips\(randomValue1)")
                .resizable()
                .frame(width: 90, height: 90)
                .border(.yellow,width:CGFloat(borderWidth1))
                .position(x:230, y:350)
            
                .padding()
            Image("pips\(randomValue2)")
                .resizable()
                .frame(width: 90, height: 90)
                .border(.red,width:CGFloat(borderWidth2))
                .position(x:330, y:350)
                .padding()
            HStack {
                Button("Spin") {
                    chooseRandom0(times: 5)
                    chooseRandom1(times: 8)
                    chooseRandom2(times: 11)
                }
                .position(x:112, y:484)
                .font(.title)           // makes "spin" text a title
                .fontWeight(.bold)      // makes "spin" text bold
                .padding()              //moves "spin" up
                .foregroundColor(.white)    // makes "spin" text white
                .cornerRadius(10)       // makes "spin" background rounded
                
            }
        }
        .alert(isPresented: $spinOver, content: {
            Alert(title: Text("\(message)"), message: Text("Game Over"), dismissButton:
                    .destructive(Text("Play again"), action: {
                        withAnimation {
                            
                            spinOver = false
                            
                        }
                        
                    }))
            
        })
    }
               
               func chooseRandom0(times: Int) {
            if times > 0 {
                borderWidth0 = 0
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    // randomValue0 = Int.random(in: 1...13)
                    randomValue0 = pipNumbers.randomElement() ?? 5
                    chooseRandom0(times: times - 1)
                }
            } else {
                borderWidth0 = 4
            }
        }
               func chooseRandom1(times: Int) {
            if times > 0 {
                borderWidth1 = 0
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //randomValue1 = Int.random(in: 1...9)
                    randomValue1 = pipNumbers.randomElement() ?? 5
                    chooseRandom1(times: times - 1)
                }
            } else {
                borderWidth1 = 4
            }
        }
               func chooseRandom2(times: Int) {
            if times > 0 {
                borderWidth2 = 0
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //randomValue2 = Int.random(in: 1...13)
                    randomValue2 = pipNumbers.randomElement() ?? 5
                    chooseRandom2(times: times - 1)
                }
            } else {
                borderWidth2 = 4
                if randomValue0 == 1 && randomValue1 == 1 && randomValue2 == 1 {
                    message = "JACKPOT!"
                    spinOver = true
                }   else if randomValue0 == randomValue1 && randomValue1 == randomValue2 {
                    message = "You got a match!"
                    spinOver = true
                } else if (randomValue0 == randomValue1 || randomValue1 == randomValue2 || randomValue0 == randomValue2) {
                    message = "Almost!"
                    spinOver = true
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
               }
               #Preview {
            SlotsView()
        }
