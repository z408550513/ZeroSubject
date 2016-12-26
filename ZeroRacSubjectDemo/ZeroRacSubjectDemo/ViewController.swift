//
//  ViewController.swift
//  ZeroRacSubjectDemo
//
//  Created by ptsdesigner on 2016/12/26.
//  Copyright © 2016年 Zero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let subject = ZeroSubject()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        subject.subscribeNext { (value) in
          
            print(value)
           self.label.text = "\(Int(self.label.text!)! + (value as! Int))"
            
          
        }
        
        
    }
    
    @IBAction func clickBtn(sender: AnyObject) {
        self.subject.sendNext(1)
        
    }
  
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

