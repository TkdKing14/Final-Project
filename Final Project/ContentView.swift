//
//  ContentView.swift
//  Final Project
//
//  Created by Carson Payne on 11/19/24.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Outside Casino")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Text("Slot Simulator")
                .foregroundColor(.white)
                .font(.largeTitle).bold()
                .position(x:150,y:8)
            
            VStack {
                Spacer()
                Button(action: {
                }) {
                    Text("Enter Casino")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}



#Preview {
    ContentView()
}

struct Slots: View{
    let name: String
    var body: some View {
        NavigationLink("Enter \(name)") {
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}
