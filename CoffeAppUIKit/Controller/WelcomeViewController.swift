//
//  WelcomeViewController.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 22/12/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    // MARK: - SubViews
    @IBOutlet weak var stayFocusedLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var diveInButton: UIButton!
    
    
    // MARK: - Views
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorManager.shared.welcomeBackground
        updateStayFocusedLabel()
        updateDesctiptionLabel()
        updateDiveInButton()
    }
    
    private func updateStayFocusedLabel(){
        stayFocusedLabel.textColor = ColorManager.shared.text
        stayFocusedLabel.text = LocalizableManager.shared.stayFocused
        stayFocusedLabel.font = UIFont.systemFont(ofSize: 32, weight: .bold)
    }

    private func updateDesctiptionLabel(){
        descriptionLabel.textColor = ColorManager.shared.description
        descriptionLabel.text = LocalizableManager.shared.welcomeDesc
    }
    
    private func updateDiveInButton(){
        diveInButton.setTitle(LocalizableManager.shared.diveIn, for: .normal)
        diveInButton.layer.cornerRadius = 30
        diveInButton.setTitleColor(ColorManager.shared.reversedText, for: .normal)
    }
    
    
    @IBAction func DiveInButtonTapped(_ sender: UIButton) {
    }
    
}
