//
//  ContentView.swift
//  Final Project
//
//  Created by Carson Payne on 11/19/24.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {                            //this sets up another view the viewer can access
            ZStack {                                //aligns both axises when considering the following code
                Image("Outside Casino")             // adds image to the app
                    .resizable()                    //allows the image to be changed in shape
                    .aspectRatio(contentMode: .fill)    //allows image to fill the screen
                    .edgesIgnoringSafeArea(.all)    //image can take up all space
                    .scaledToFill()                 //image can fit inside of the app
                    .frame(maxWidth: .infinity, maxHeight: .infinity)   //changes image dimensions
                
                Text("Slot Simulator")              //shows the text "Slot Simulator"
                    .foregroundColor(.white)        //text color is made white
                    .font(.largeTitle).bold()       //text font is large and bold
                    .position(x:150,y:8)            //changes the location of the text
                VStack {                            //vertically stacks the following code
                    Spacer()                        //provides space and adds a gap inside the app
                    NavigationLink(destination: CasinoView()) {     //provides a link that takes you to the next link "CasinoView"
                        Text("Enter Casino")        //shows the text "Enter Casino"
                            .font(.title)           // makes "Enter Casino" text a title
                            .fontWeight(.bold)      // makes "Enter Casino" text bold
                            .padding()              //moves "Enter Casino" up
                            .foregroundColor(.white)    // makes "Enter Casino" text white
                            .background(Color.black)    // makes "Enter Casino" background black
                            .cornerRadius(10)       // makes "Enter Casino" background rounded
                    }                               //ends NavigationLink statement
                }                                   //ends VStack statement
            }                                       //ends ZStack statement
        }                                           //ends NavigationView statement
    }                                               //ends body View statement
}                                                   //ends ContentView statement
#Preview {                                          //allows app to be seen live
    ContentView()                                   //allows the initial view to be seen
}                                                   //ends preview
