//
//  CLVernierCaliperController.swift
//  CLDemo
//
//  Created by JmoVxia on 2020/5/1.
//  Copyright © 2020 JmoVxia. All rights reserved.
//

import UIKit

class CLVernierCaliperController: CLBaseViewController {
    lazy var vernierCaliperView: CLVernierCaliperView = {
        let view = CLVernierCaliperView(frame: CGRect(x: 5, y: 199, width: self.view.bounds.width - 10, height: 66)){(configure) in
            configure.minimumUnit = 1
            configure.minValue = 0
            configure.maxValue = 100
            configure.unit = "ml"
        }
        view.indexValueCallback = {(value) in
            print("====== \(value) ======")
        }
        view.setValue(value: 2.4, animated: true)
        return view
    }()
}
extension CLVernierCaliperController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(vernierCaliperView)
    }
}
