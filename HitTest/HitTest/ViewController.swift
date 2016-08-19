//
//  ViewController.swift
//  HitTest
//
//  Created by 徐开源 on 16/8/19.
//  Copyright © 2016年 kyxu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let father = FatherView()
    let child1 = ChildView1()
    let child2 = ChildView2()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        father.frame = CGRectMake(0, 0, 100, 100)
        child1.frame = CGRectMake(20, 20, 20, 20)
        child2.frame = CGRectMake(120, 120, 120, 120)
        
//        father.clipsToBounds = true
        father.backgroundColor = UIColor.grayColor()
        child1.backgroundColor = UIColor.redColor()
        child2.backgroundColor = UIColor.blueColor()
        
        view.addSubview(father)
        father.addSubview(child1)
        father.addSubview(child2)
        
        child1.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(touchTest1)))
        
        child2.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(touchTest2)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func touchTest1() {
        print("test 1")
    }
    
    func touchTest2() {
        print("test 2")
    }

}

