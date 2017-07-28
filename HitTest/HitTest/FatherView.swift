//
//  FatherView.swift
//  HitTest
//
//  Created by 徐开源 on 16/8/19.
//  Copyright © 2016年 kyxu. All rights reserved.
//

import UIKit

class FatherView: UIView {

    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        
        print("Detect Touch Event")
        
        if (self.isHidden == false) && (alpha > 0) {            
            for subview in subviews {
                if subview.frame.contains(point) {
                    if subview.isKind(of: ChildView1.self) {
                        print("view 1")
                        return subview
                    }
                    if subview.isKind(of: ChildView2.self) {
                        print("view 2")
                        return subview
                    }
                }
            }
        }
        
        return nil
    }

}
