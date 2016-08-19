//
//  FatherView.swift
//  HitTest
//
//  Created by 徐开源 on 16/8/19.
//  Copyright © 2016年 kyxu. All rights reserved.
//

import UIKit

class FatherView: UIView {

    
    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        
        print("Detect Touch Event")
        
        if (self.hidden == false) && (alpha > 0) {            
            for subview in subviews {
                let subPoint = subview.convertPoint(point, fromView: self)
                if let result = subview.hitTest(subPoint, withEvent: event) {
                    
                    if result.isKindOfClass(ChildView1) {
                        print("view 1")
                        return result
                    }
                    if result.isKindOfClass(ChildView2) {
                        print("view 2")
                        return result
                    }
                }
            }
        }
        
        return nil
    }

}
