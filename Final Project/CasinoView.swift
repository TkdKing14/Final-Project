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
            Text("Im gonna win big today i can feel it!")
                .font(.title).bold()
                .foregroundColor(.white)
                .background(Color.black)
                .position(x:215,y:700)
            
            Text("Click to continue")
                .font(.title).bold()
                .foregroundColor(.yellow)
                .background(Color.black)
                .position(x:215,y:50)
            
            onTapGesture {
                VStack {
                    Spacer()
                    NavigationLink(destination: CasinoView()) {
                        Text("Enter Casino")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    CasinoView()
}
