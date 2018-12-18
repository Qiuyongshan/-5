//
//  MyView.swift
//  HelloWorld
//
//  Created by student on 2018/11/11.
//  Copyright © 2018年 QYS. All rights reserved.
//

import UIKit

class MyView:UIView{
    //重写UIView中的draw方法
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        
        UIColor.red.setStroke()
        path.stroke()
        
        UIColor.gray.setFill()
        path.fill()
    }
}
