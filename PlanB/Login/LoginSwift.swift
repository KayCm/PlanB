//
//  LoginSwift.swift
//  PlanB
//
//  Created by KayCM on 2018/3/6.
//  Copyright © 2018年 KayCM. All rights reserved.
//

import UIKit
import TextFieldEffects


class LoginSwift: UIView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        let usrText = HoshiTextField(frame:CGRect(x:0,y:50,width:300,height:50))
        usrText.placeholder = "UserName"
        usrText.placeholderColor = UIColor.darkGray
        usrText.borderInactiveColor = UIColor.lightGray
        usrText.borderActiveColor = UIColor.darkGray
        self.addSubview(usrText)
        
        let pwdText = HoshiTextField(frame:CGRect(x:0,y:100,width:300,height:50))
        pwdText.placeholder = "PassWord"
        pwdText.placeholderColor = UIColor.darkGray
        pwdText.borderInactiveColor = UIColor.lightGray
        pwdText.borderActiveColor = UIColor.darkGray
        self.addSubview(pwdText)
    }
    
    required init?(coder aDecoder: NSCoder) {
        
         fatalError("init(coder:) has not been implemented")
        
    }
    
}
