//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Agota Matyas on 04/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI
import UIKit


struct ContentView: View {
    @available(iOS 13.0, *)
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                
               

                NavigationLink(destination: DetailView()) {
                    Image(systemName: SFSymbolName.play_circle_fill).font(.largeTitle)
                    Text("подробно о нас")
                }.foregroundColor(.black)
            }.edgesIgnoringSafeArea(.all).navigationBarTitle("Главная")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        ContentView()
    }
    
}
