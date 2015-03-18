//
//  ViewController.swift
//  swift-blockSample
//
//  Created by suzuki_kiwamu on 2015/03/18.
//  Copyright (c) 2015年 suzuki_kiwamu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //calledTypeA
        calledTypeA({() in
            println("calledTypeA -> 呼び出し側")
        })
        println("------------------------------")
        
        //calledTypeB
        calledTypeB({(str: String) in
            println("calledTypeB -> 呼び出し側 == \(str)")
        })
        println("------------------------------")
        
        //calledTypeC
        calledTypeC("hoge", complete: {(str: String) in
            println("calledTypeB -> 呼び出し側 == \(str)")
        })
    }
    
    
    //calledTypeA
    func calledTypeA(complete:() -> Void) {
        println("calledTypeA -> 呼び出され側 1")
        complete()
        println("calledTypeA -> 呼び出され側 2")
    }
    
    
    //calledTypeB
    func calledTypeB(complete:(str: String) -> Void) {
        println("calledTypeB -> 呼び出され側 1")
        complete(str: "OK")
        println("calledTypeB -> 呼び出され側 2")
    }
    
    //calledTypeC
    func calledTypeC(string: String, complete:(str: String) -> Void) {
        println("calledTypeC -> 呼び出され側 1")
        println("calledTypeC -> \(string)")
        complete(str: "OK")
        println("calledTypeC -> 呼び出され側 2")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}