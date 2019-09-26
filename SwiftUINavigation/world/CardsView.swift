//
//  CardsView.swift
//  SwiftUINavigation
//
//  Created by Lili on 26/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
struct CardsView: View {
    
    @State var showCards = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            CardView(imageName: "image1", animationDuration: 1.2, showCards: $showCards, viewState: $viewState)
                .blur(radius: showCards ? 0 : 3) // 0 : 3
                .scaleEffect(showCards ? 0.95 : 0.9) // 0.95 : 0.9
                .offset(x: showCards ? 40 : 0 , y: showCards ? -200 : -40) // 40 : 0 --- -200 : -40
                
                
            CardView(imageName: "image2", animationDuration: 0.7, showCards: $showCards, viewState: $viewState)
                .blur(radius: showCards ? 0 : 3) // 0 : 3
                .scaleEffect(showCards ? 0.95 : 0.9) // 0.95 : 0.9
                .offset(x: showCards ? -40 : 0 , y: showCards ? 220 : 40) // -40 : 0 --- 220 : 40
            
            CardView(imageName: "image3", animationDuration: 1, showCards: $showCards, viewState: $viewState)
                .onTapGesture {
                    self.showCards.toggle()
            } // add DragGesture
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        self.viewState = value.translation
                        self.showCards = true
                    })
                    .onEnded({ value in
                        self.viewState = CGSize.zero
                        self.showCards = false
                    })
            )
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        CardsView()
    }
}
