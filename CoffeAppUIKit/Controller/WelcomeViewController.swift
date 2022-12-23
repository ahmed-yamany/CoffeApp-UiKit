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
        view.backgroundColor = ColorManager.welcomeBackground
        updateStayFocusedLabel()
        updateDesctiptionLabel()
        updateDiveInButton()
    }
    
    private func updateStayFocusedLabel(){
        stayFocusedLabel.textColor = ColorManager.text
        stayFocusedLabel.text = LocalizableManager.stayFocused
        stayFocusedLabel.font = UIFont.systemFont(ofSize: 32, weight: .bold)
    }

    private func updateDesctiptionLabel(){
        descriptionLabel.textColor = ColorManager.description
        descriptionLabel.text = LocalizableManager.welcomeDesc
    }
    
    private func updateDiveInButton(){
        diveInButton.setTitle(LocalizableManager.diveIn, for: .normal)
        diveInButton.layer.cornerRadius = 30
        diveInButton.setTitleColor(ColorManager.reversedText, for: .normal)
    }
    
    
    @IBAction func DiveInButtonTapped(_ sender: UIButton) {
        let coreTB = CoreTabBarController()
        coreTB.modalPresentationStyle = .fullScreen
        present(coreTB, animated: true)
    }
    
}
