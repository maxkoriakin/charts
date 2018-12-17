//
//  ViewController.swift
//  Charts
//
//  Created by Max Koriakin on 12/12/18.
//  Copyright © 2018 Max Koriakin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var chartView: ChartView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chartView = ChartView()
        self.view.addSubview(chartView!)
        chartView!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chartView!.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            chartView!.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),

            chartView!.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20),
            chartView!.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20),
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        chartView?.setupDots(dots: [1.0, 2.5, 0.7, 0, 1.3, 4.7, 8.9, 0.4, -10, 50, 15.6])
    }
}

