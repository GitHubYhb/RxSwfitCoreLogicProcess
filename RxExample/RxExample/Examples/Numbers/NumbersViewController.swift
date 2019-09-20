//
//  NumbersViewController.swift
//  RxExample
//
//  Created by Krunoslav Zaher on 12/6/15.
//  Copyright © 2015 Krunoslav Zaher. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class NumbersViewController: ViewController {
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var number3: UITextField!

    @IBOutlet weak var result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()


        let ob = Observable<String>.create { ob -> Disposable in
            print("9. 开始在我们保存的闭包里面搞事,ob的值已经传进来了，就是AnyObserver(self)")
            ob.onNext("tets")
            return Disposables.create()
        }
        _ = ob.subscribe(onNext: { str in
            print("17. 外部接收到AnonymousObserver闭包的调用，并且将对应的Element值发出来")
            print(str)
        })
        
    }
}
