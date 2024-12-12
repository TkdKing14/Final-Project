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
    @State private var randomValue2 = 0                         //provides the main bases of the variable randomvalue2
    @State private var rotation = 0.0                           //provides the main bases of the variable rotation
    @State private var gameOver = false                         //provides the main bases of the variable gmeover
    @State private var borderWidth0 = 0                         //provides the main bases of the variable borderWidth0
    @State private var borderWidth1 = 0                         //provides the main bases of the variable borderWidth1
    @State private var borderWidth2 = 0                         //provides the main bases of the variable borderWidth2
    @State private var pipNumbers = [1,3,3,3,5,5,5,5,7,7,9,9]   //these numbers supply the amount of pictures in each row. number 1 is listed 1 time as it is the picture pips 1. this means it has a 1 in 12 chance to hit a 7 in each row as 7 is the picture pip 1. the cherrys however are 5s and are lisetd 4 times meaning they are a lot more common
    @State private var spinOver = false                         //provides the main bases of the variable spinOver (end of spin)
    @State private var message = ""                             //provides the main bases of the variable message
    var body: some View {                                       //this sets up another view the viewer can access
        ZStack {                                                //aligns both axises when considering the following code
            Image("Slot Machine 2")                             //adds "slot machine 2" image to the app
                .resizable()                                    //resizes the picture to fit on the screen
                .aspectRatio(contentMode: .fill)                //fits picture into the given space
                .edgesIgnoringSafeArea(.all)                    //allows picture to extend past the given boarders
                .scaledToFill()                                 //allows picture to fit inside of the app
                .frame(width: 500, height: 500)                 //makes the picture extend to these lengths
            Rectangle()                                         //makes a rectangle appear on the screen
                .frame(width: 300, height: 140)                 //makes rectangle this size
                .position(x:250, y: 352)                        //moves rectangle to these positions
                .preferredColorScheme(.dark)                    //changes the views color settings to dark
            Image("pips\(randomValue0)")                        //supplys the images pips from 1 - 9 and random value0 determines the picture
                .resizable()                                    //resizes the picture to fit on the screen
                .frame(width: 90, height: 90)                   //makes the image pips resize to these lengths and widths
                .border(.blue,width: CGFloat(borderWidth0))     //the border of the image that comes after its done spinning, is shown as blue and follows the commands from the state vartiable which originally sets the border width to 0
                .position(x:130, y:350)                         //moves image pips to these positions
                .padding()                                      //provides space around the image
            Image("pips\(randomValue1)")                        //supplys the images pips from 1 - 9 and random value0 determines the picture
                .resizable()                                    //resizes the picture to fit on the screen
                .frame(width: 90, height: 90)                   //makes the image pips resize to these lengths and widths
                .border(.yellow,width: CGFloat(borderWidth1))   //the border of the image that comes after its done spinning, is shown as yellow and follows the commands from the state vartiable which originally sets the border width to 0
                .position(x:230, y:350)                         //moves image pips to these positions
                .padding()                                      //provides space around the image
            Image("pips\(randomValue2)")                        //supplys the images pips from 1 - 9 and random value0 determines the picture
                .resizable()                                    //resizes the picture to fit on the screen
                .frame(width: 90, height: 90)                   //makes the image pips resize to these lengths and widths
                .border(.red,width: CGFloat(borderWidth2))      //the border of the image that comes after its done spinning, is shown as red and follows the commands from the state vartiable which originally sets the border width to 0
                .position(x:330, y:350)                         //moves image pips to these positions
                .padding()                                      //provides space around the image
            HStack {                                            //lines the button up horizontaly
                Button("Spin") {                                //button with the word spin
                    chooseRandom0(times: 5)                     //makes the choose random variable spin 5 times when on the first row
                    chooseRandom1(times: 8)                     //makes the choose random variable spin 8 times when on the second row
                    chooseRandom2(times: 11)                    //makes the choose random variable spin 11 times when on the thrid row
                }                                               //ends the spin button
                .position(x:112, y:484)                         //positions the button to the cords
                .font(.title)                                   //makes "spin" text a title
                .fontWeight(.bold)                              //makes "spin" text bold
                .padding()                                      //moves "spin" up
                .foregroundColor(.white)                        //makes "spin" text white
            }                                                   //ends the HStack
        }                                                       //ends ZStack
        .alert(isPresented: $spinOver, content: {               //if an alert is presented then spinOver is true
            Alert(title: Text("\(message)"), message: Text("Game Over"), dismissButton:  //this proivides the mesages on the alert. the text message is based on what the viewer gets in the slots and the game over is below that text everytime
                .destructive(Text("Play again"), action: {  //makes the play again feature show up under the alert
                    withAnimation {                         //provides the animation for the alert
                        spinOver = false                    //after play agin is selected spinOver is returned to false
                    }                                       //ends with animation statement
                }))                                         //ends the play again action aswell as the title and destructive text
        })                                                  //ends alert is presented and content
    }                                                       //ends body some view
    func chooseRandom0(times: Int) {                        //creates the function chooseRandom0
        if times > 0 {                                      // is times is greater than 0 then the following code takes place
            borderWidth0 = 0                                //border width is invisible
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {  //makes the chooserandom0 select a new item every .5 seconds
                randomValue0 = pipNumbers.randomElement() ?? 5  //is the randomValue0 selects a rondom element default the image to pip 5 (cherry)
                chooseRandom0(times: times - 1)             //decrease 1 time every time a new picture is selected
            }                                               //ends dispatch queue
        } else {                                            //ends if times statement and starts an else statement
            borderWidth0 = 4                                //when time = 0 make the border width 4 or visible
        }                                                   //ends else statement
    }                                                       //ends choose random Int
    func chooseRandom1(times: Int) {                        //creates the function chooseRandom1
        if times > 0 {                                      // is times is greater than 0 then the following code takes place
            borderWidth1 = 0                                //border width is invisible
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {  //makes the chooserandom0 select a new item every .5 seconds
                randomValue1 = pipNumbers.randomElement() ?? 5  //is the randomValue0 selects a rondom element default the image to pip 5 (cherry)
                chooseRandom1(times: times - 1)             //decrease 1 time every time a new picture is selected
            }                                               //ends dispatch queue
        } else {                                            //ends if times statement and starts an else statement
            borderWidth1 = 4                                //when time = 0 make the border width 4 or visible
        }                                                   //ends else statement
    }                                                       //ends choose random Int
    func chooseRandom2(times: Int) {
        if times > 0 {
            borderWidth2 = 0
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                randomValue2 = pipNumbers.randomElement() ?? 5
                chooseRandom2(times: times - 1)
            }
        } else {
            borderWidth2 = 4
            //if times left = 0 then the border will have
            if randomValue0 == 1 && randomValue1 == 1 && randomValue2 == 1 {
                message = "JACKPOT!"
                spinOver = true
                //these few lines of code show that is pips 1 is detected on all three rows, message "JACKPOT" will apear on the alert.
                
            }   else if randomValue0 == randomValue1 && randomValue1 == randomValue2 {
                message = "You got a match!"
                spinOver = true
                //these few lines of code show that if row 1 is the same as row 2, and row 2 is the same as row 3, it will display the message "You got a match!"
            } else if (randomValue0 == randomValue1 || randomValue1 == randomValue2 || randomValue0 == randomValue2) {
                message = "Almost!"
                spinOver = true
                //this code shows that if row 1 is the same as 2 or row 2 is the same as row 3. it also states or row 1 is the same as 3, the message will state "Almost!"
            }
            
        }
    }
}
#Preview {
    SlotsView()
}
