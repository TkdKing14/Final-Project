//
//  CasinoView.swift
//  Final Project
//
//  Created by Carson Payne on 11/20/24.
//

import SwiftUI

struct CasinoView: View {
    var body: some View {
        Image("Casino")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    CasinoView()
}
