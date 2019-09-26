//
//  SABButton.swift
//  SwiftUINavigation
//
//  Created by Lili on 27/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import UIKit

class SAButton: UIButton {

    override init (frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        
}
    required init?(code aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupButton(){
        setTitleColor(.white, for: .normal)
       backgroundColor = UIColor(red: 255/255, green: 5/255, blue: 5/255, alpha: 1)
        titleLabel?.font = .boldSystemFont(ofSize: 20)
        layer.cornerRadius = frame.size.height/2
        
        
    }
}
