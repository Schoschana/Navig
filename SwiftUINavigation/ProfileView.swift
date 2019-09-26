//
//  ProfileView.swift
//  SwiftUINavigation
//
//  Created by Agota Matyas on 04/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @available(iOS 13.0, *)
    var body: some View {
        ZStack {
         
                            
            Color.purple
            VStack {
                Rectangle()
                    .frame(width: 120, height: 10)
                    .cornerRadius(30)
                    .opacity(1)
                Spacer()
            Image(systemName: SFSymbolName.person_fill).font(.title)
                
                Text("подробно о нас")
               
           }
         .padding(.top, 16)
       .padding(.bottom, UIScreen.main.bounds.height / 2)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ProfileView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        ProfileView()
    }
   

}
