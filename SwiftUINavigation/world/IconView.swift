//
//  IconView.swift
//  SwiftUINavigation
//
//  Created by Lili on 27/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

@available(iOS 13.0.0, *)
struct IconView: View {
    
    var imageName: String
    var animationDuration: Double
    
    @available(iOS 13.0.0, *)
    var body: some View {
        Image(imageName)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .frame(width: 120, height: 120)
            .shadow(color: Color.black, radius: 10, x: 0, y: 0)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 3))
            .animation(.easeInOut(duration: animationDuration))
    }
}

struct IconView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        IconView(imageName: "icon1", animationDuration: 1)
    }
}
