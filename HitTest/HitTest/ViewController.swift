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
    let child3 = ChildView2()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        father.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        child1.frame = CGRect(x: 20, y: 20, width: 20, height: 20)
        child2.frame = CGRect(x: 120, y: 120, width: 120, height: 120)
        child3.frame = CGRect(x: 200, y: 200, width: 120, height: 120)
        
//        father.clipsToBounds = true
        father.backgroundColor = UIColor.gray
        child1.backgroundColor = UIColor.red
        child2.backgroundColor = UIColor.blue
        child3.backgroundColor = UIColor.green
        
        view.addSubview(father)
        father.addSubview(child1)
        father.addSubview(child2)
        father.addSubview(child3)
        
        child1.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(touchTest1)))
        
        child2.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(touchTest2)))
        
        child3.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(touchTest3)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func touchTest1() {
        print("test 1\n")
    }
    
    func touchTest2() {
        print("test 2\n")
    }
    
    func touchTest3() {
        print("test 3\n")
    }

}

