//
//  ViewController.swift
//  ios_wsb
//
//  Created by Feitong Liu on 2018/11/5.
//  Copyright © 2018年 Feitong Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "loginToGameBoardSeg") {
            let nav = segue.destination as! UINavigationController
            
            let vc = nav.topViewController as! GameBoardViewController
            
            vc.setNavTitle(newUserName: userNameTF.text!)
        }
    }


}

