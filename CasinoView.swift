//
//  CasinoView.swift
//  Final Project
//
//  Created by Carson Payne on 11/20/24.
//

import SwiftUI

struct CasinoView: View {
    var body: some View {
        ZStack {
            Image("Casino")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Text("Im gonna win big today I can feel it!")
                .font(.title).bold()
                .foregroundColor(.white)
                .background(Color.black)
                .position(x:215,y:700)
            
        
            
            
            VStack {                            //vertically stacks the following code
                Spacer()                        //provides space and adds a gap inside the app
                NavigationLink(destination: CasinoView2()) {     //provides a link that takes you to the next link "CasinoView"
                    Text("Click to continue")        //shows the text "Enter Casino"
                        .font(.title)           // makes "Enter Casino" text a title
                        .fontWeight(.bold)      // makes "Enter Casino" text bold
                        .padding()              //moves "Enter Casino" up
                        .foregroundColor(.yellow)    // makes "Enter Casino" text white
                        .background(Color.black)    // makes "Enter Casino" background black
                        .cornerRadius(10)       // makes "Enter Casino" background rounded
                        .position(x:215,y:50)
                }
            }
        }
    }
}

#Preview {
    CasinoView()
}

