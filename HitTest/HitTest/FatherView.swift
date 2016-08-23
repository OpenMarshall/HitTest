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
                if CGRectContainsPoint(subview.frame, point) {
                    if subview.isKindOfClass(ChildView1) {
                        print("view 1")
                        return subview
                    }
                    if subview.isKindOfClass(ChildView2) {
                        print("view 2")
                        return subview
                    }
                }
            }
        }
        
        return nil
    }

}
