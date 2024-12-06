//
//  CasinoView2.swift
//  Final Project
//
//  Created by Carson Payne on 12/2/24.
//

import SwiftUI

struct CasinoView2: View {
    var body: some View {
        ZStack {
            Image("Casino")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack {                            //vertically stacks the following code
                Spacer()                        //provides space and adds a gap inside the app
                NavigationLink(destination: SlotsView()) {     //provides a link that takes you to the next link "CasinoView"
                    Text("Sit down at machine")        //shows the text "Enter Casino"
                        .font(.title)           // makes "Enter Casino" text a title
                        .fontWeight(.bold)      // makes "Enter Casino" text bold
                        .padding()              //moves "Enter Casino" up
                        .foregroundColor(.white)    // makes "Enter Casino" text white
                        .background(Color.black)    // makes "Enter Casino" background black
                        .cornerRadius(10)       // makes "Enter Casino" background rounded
                        .position(x:215,y:50)
                }
            }
        }
    }
}

#Preview {
    CasinoView2()
}
