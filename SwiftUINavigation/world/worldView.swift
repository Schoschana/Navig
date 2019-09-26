//
//  worldView.swift
//  SwiftUINavigation
//
//  Created by Lili on 26/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct worldView: View {
    
    @available(iOS 13.0, *)
    var body: some View {
        VStack(spacing: 100) {
           
            TitleView()
                .offset(y: 100)
            Spacer()
            IconsView()
            Spacer()
            CardsView()
                .offset(y: -100)
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct worldView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        worldView()
    }
}
