//
//  CasinoView.swift
//  Final Project
//
//  Created by Carson Payne on 11/20/24.
//

import SwiftUI

struct CasinoView: View {                                       //this starts a new view that allows people to enter the casino
    var body: some View {
        ZStack {                                                //aligns both axises when considering the following code
            Image("Casino")                                     //add image casino
                .resizable()                                    //allows image to be resized
                .aspectRatio(contentMode: .fill)                //fits picture into the given space
                .edgesIgnoringSafeArea(.all)                    //allows picture to extend past the given boarders
                .scaledToFill()                                 //allows picture to fit inside of
                .frame(maxWidth: .infinity, maxHeight: .infinity) //makes the npicture extend to infinity
            CustomText(text:"Im gonna win big today I can feel it!")       //provides the text "Im gonna win big today I can feel it!"
                .font(.title).bold()                            //makes the following text bold and large
                .foregroundColor(.white)                        //makes the text color white
                .background(Color.black)                        //makes the text background black
                .position(x:210,y:700)                          //moves text to the following position
            VStack {                                            //vertically stacks the following code
                Spacer()                                        //provides space and adds a gap inside the app
                NavigationLink(destination: SlotsView()) {      //provides a link that takes you to the next link ""
                    Text("Sit down at machine")                 //shows the text "Enter Casino"
                        .font(.title)                           //makes "Enter Casino" text a title
                        .fontWeight(.bold)                      //makes "Sit down at machine" text bold
                        .padding()                              //moves "Sit down at machine" up
                        .foregroundColor(.yellow)               //makes "Sit down at machine" text yellow
                        .background(Color.black)                //makes "Sit down at machine" background black
                        .cornerRadius(10)                       //makes "Sit down at machine" background rounded
                        .position(x:215,y:50)                   //moves text to the following position
                }                                               //ends navigation link
            }                                                   //ends VStack
        }                                                       //ends ZStack
    }                                                           //ends some view
}
struct CustomText: View {
    let text: String
    var body: some View {
        Text(text).font(.custom("Marker Felt", size: 30))
        //allows certain text to go with this font and settings
    }
}                                                               //ends CasinoView
#Preview {                                                      //allows app to be seen live
    ContentView()                                               //allows the initial view to be seen
}                                                               //ends preview statement

