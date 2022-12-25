//
//  CoffeesTableViewCell.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 23/12/2022.
//

import UIKit
import SwiftUI

class CoffeesTableViewCell: UITableViewCell {
    static let identifier: String = "CoffeesTableViewCell"
    static let indexPath: IndexPath = IndexPath(row: 1, section: 0)

    // MARK: - subViews
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        updateSegmentedControl()
        
        let hostingController = UIHostingController(rootView: CoffeeScrollView())
        guard let cell = hostingController.view else { return}
//        self.addChild(hostingController)
        self.addSubview(cell)
        
        cell.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cell.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor),
            cell.leadingAnchor.constraint(equalTo: segmentedControl.leadingAnchor),
            cell.trailingAnchor.constraint(equalTo: segmentedControl.trailingAnchor),
            ])


    }
    
    
    private func updateSegmentedControl(){
        segmentedControl.removeAllSegments()
        addSegmentsToSegmentControl()
        setSelectedSegmentToFirtst()
        setSelectedSegmentColorToCoffee()
        clearSegmentControllerbackgroundColor()
        removeSegmentControllerDivider()
    }
    
    private func addSegmentsToSegmentControl(){
        segmentedControl.insertSegment(withTitle: LocalizableManager.espresso, at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: LocalizableManager.latte, at: 1, animated: true)
        segmentedControl.insertSegment(withTitle: LocalizableManager.cappuccino, at: 2, animated: true)
        segmentedControl.insertSegment(withTitle: LocalizableManager.cafetiere, at: 3, animated: true)
    }
    
    private func setSelectedSegmentToFirtst(){
        segmentedControl.selectedSegmentIndex = 0
    }
    
    private func setSelectedSegmentColorToCoffee(){
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: ColorManager.coffee]
        segmentedControl.setTitleTextAttributes(titleTextAttributes as [NSAttributedString.Key : Any], for:.selected)
    }
    
    private func clearSegmentControllerbackgroundColor(){
        segmentedControl.setBackgroundImage(UIImage(ciImage: .clear), for: .normal, barMetrics: .default)
    }
    
    private func removeSegmentControllerDivider(){
        segmentedControl.setDividerImage(imageWithColor(color: .clear), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    }
    
    private func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRectMake(0.0, 0.0, 1.0, 1.0)
        
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor);
        context!.fill(rect);
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image!
    }
    
  
}
