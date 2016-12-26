//
//  ZeroSubject.swift
//  ZeroRacSubjectDemo
//
//  Created by ptsdesigner on 2016/12/26.
//  Copyright © 2016年 Zero. All rights reserved.
//

import UIKit

class ZeroSubject: NSObject {
    var block : ((value : AnyObject?)->())?
    func sendNext(value: AnyObject?) -> ZeroSubject {
    
        if self.block != nil {
            self.block!(value: value)
        }
        return self
    }
    func subscribeNext(subscriber: ((value : AnyObject?)->())?) -> ZeroSubject {
        self.block = subscriber
        return self
    }

}
