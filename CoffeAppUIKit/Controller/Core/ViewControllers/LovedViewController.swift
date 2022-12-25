//
//  LovedViewController.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 22/12/2022.
//

import UIKit
import SwiftUI

class LovedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = ColorManager.coreBackground
        
        let hostingController = UIHostingController(rootView: CoffeeScrollView())
        
        guard let cell = hostingController.view else { return}
//        self.addChild(hostingController)
        self.view.addSubview(cell)
        
        cell.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cell.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cell.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
