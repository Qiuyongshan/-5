//
//  MyViewController.swift
//  HelloWorld
//
//  Created by student on 2018/11/11.
//  Copyright © 2018年 QYS. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    //声明UILabel对象
    var label:UILabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置根视图视图背景颜色
        self.view.backgroundColor = UIColor.white
        
        //将自定义的视图添加到MyViewController中
        //添加一个View:oval
        let oval = MyView(frame:CGRect(x:0,y:20,width:self.view.frame.width,height:self.view.frame.height - 20))
        //清空view的颜色
        oval.backgroundColor = UIColor.clear
        //添加视图oval到最外层view中
        self.view.addSubview(oval)
        //添加一个View:circle00
        let circle = MyView(frame: CGRect(x:200,y:320,width:120,height:80))
        circle.backgroundColor = UIColor.clear
        self.view.addSubview(circle)
        
        //创建UILabel对象
        label = UILabel(frame:CGRect(x:100,y:100,width:100,height:40))
        //设置label文字
        label.text = "hello world"
        //将label加入到视图控制器中
        self.view.addSubview(label)
        
        //创建UIbutton对象
        let button = UIButton(frame:CGRect(x:100,y:250,width:100,height:40))
        //设置正常状态下按钮的标题
        button.setTitle("点我", for: .normal)
        //设置按钮边框的宽度
        button.layer.borderWidth = 1
        //设置正常状态下标题的颜色
        button.setTitleColor(UIColor.black, for: .normal)
        //设置高亮状态下(被点击切未释放鼠标)标题的颜色
        button.setTitleColor(UIColor.brown, for: .highlighted)
        //给按钮添加target-action
        button.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        self.view.addSubview(button)
        
        //创建UIImageView对象
        let imageView = UIImageView(frame:CGRect(x:10,y:400,width:self.view.frame.width - 20,height:(self.view.frame.width - 20) * 0.618))
        //获取图片资源路径
        let path = Bundle.main.path(forResource: "timg2", ofType: "jpg")
        //以该路径创建图片
        let image = UIImage(contentsOfFile: path!)
        //将图片加入到imageView中
        imageView.image = image
        //将imageView加入到控制器中
        self.view.addSubview(imageView)
    }
    
    //按钮点击事件，改变label现实的文字
    @objc func clicked(){
        if label.text == "hello world"{
            label.text = "I'm clicked"
        }else{
            label.text = "hello world"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
