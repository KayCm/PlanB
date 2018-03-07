//
//  LoginSwift.swift
//  PlanB
//
//  Created by KayCM on 2018/3/6.
//  Copyright © 2018年 KayCM. All rights reserved.
//

import UIKit
import TextFieldEffects

@objc(LoginSwiftDelegate)
protocol LoginSwiftDelegate: class {
    func GoLogin(usr:String,pwd:String)
}

class LoginSwift: UIView ,UITextFieldDelegate{
    
    weak var delegate : LoginSwiftDelegate?
    
    var usrText:HoshiTextField!
    var pwdText:HoshiTextField!
    var btn:UIButton!
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
        
        usrText = HoshiTextField(frame:CGRect(x:0,y:0,width:300,height:50))
        usrText.textColor = UIColor.white
        usrText.placeholder = "UserName"
        usrText.placeholderColor = UIColor.darkGray
        usrText.borderInactiveColor = UIColor.white
        usrText.borderActiveColor = UIColor.lightGray
        self.addSubview(usrText)
        
        pwdText = HoshiTextField(frame:CGRect(x:0,y:70,width:300,height:50))
        pwdText.textColor = UIColor.white
        pwdText.placeholder = "PassWord"
        pwdText.placeholderColor = UIColor.darkGray
        pwdText.borderInactiveColor = UIColor.white
        pwdText.borderActiveColor = UIColor.lightGray
        pwdText.isSecureTextEntry = true
        pwdText.delegate = self
        self.addSubview(pwdText)
        
        btn = UIButton(type:.custom)
        btn.frame = CGRect(x:0,y:140,width:300,height:50)
        btn.setTitle("Confirm", for:.normal)
        btn.setTitleColor(UIColor.white, for: .normal) //普通状态下文字的颜色
        btn.setTitleColor(UIColor.gray, for: .disabled) //禁用状态下文字的颜色
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        btn.isEnabled = false;
        btn.addTarget(self, action:#selector(tapped(_:)), for:.touchUpInside)
        self.addSubview(btn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        
         fatalError("init(coder:) has not been implemented")
        
    }
    
    
    func tapped(_ button:UIButton) {
        delegate?.GoLogin(usr: usrText.text!,pwd: pwdText.text!)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if pwdText == textField {
            
            if (pwdText.text != nil) {
                btn.isEnabled = true;
            }
            
        }
        
        return true
    }
    
}
