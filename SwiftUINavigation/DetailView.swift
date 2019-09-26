//
//  DetailView.swift
//  SwiftUINavigation
//
//  Created by Agota Matyas on 04/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI
import UIKit
@available(iOS 13.0, *)
struct DetailView: View {
    
    @State var isProfileViewPresented = false
    
    var body: some View {
        ZStack {
           
            Color.gray
            VStack {
                
                Text("Alex").foregroundColor(.white)
                NavigationLink(destination: worldView()) {
                                   Image(systemName: SFSymbolName.play_circle_fill).font(.largeTitle)
                                   Text("Album")
                               }.foregroundColor(.white)
            }.navigationBarTitle("Detail", displayMode: .inline)
                .navigationBarItems(trailing:
                    HStack(spacing: 15) {
                        Image(systemName: SFSymbolName.suit_heart_fill).font(.title).foregroundColor(.red)
                      NavigationLink(destination: DetailView()) {
                                         
                                        
                        Button(action: {
                            print("Button tapped")
                            self.isProfileViewPresented = true
                        }) {
                            Image(systemName: SFSymbolName.person_circle_fill).font(.title)
                        }.sheet(isPresented: $isProfileViewPresented, content: { ProfileView() }).foregroundColor(.black)
                    }
                         }
            )
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        DetailView()
    }
}
