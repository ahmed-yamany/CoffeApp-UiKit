//
//  FindTheBestTableViewCell.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 23/12/2022.
//

import UIKit

class FindTheBestTableViewCell: UITableViewCell {
    static let identifier: String = "FindTheBestTableViewCell"
    static let indexPath: IndexPath = IndexPath(row: 0, section: 0)

    
    @IBOutlet weak var findTheBestLabel: UILabel!
    @IBOutlet weak var coffeToYourTasteLabel: UILabel!
    @IBOutlet weak var searchTextFiled: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        updateLabels()
        updateSearchTextFiled()
        updateSearchButton()
        
    }
    
    private func updateLabels(){
        findTheBestLabel.textColor = ColorManager.text
        coffeToYourTasteLabel.textColor = ColorManager.text
        
        findTheBestLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        coffeToYourTasteLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        findTheBestLabel.text = LocalizableManager.findTheBest
        coffeToYourTasteLabel.text = LocalizableManager.coffeeToYourTaste
    }
    
    private func updateSearchTextFiled(){
        searchTextFiled.backgroundColor = ColorManager.label
        searchTextFiled.placeholder = LocalizableManager.findCoffee
        searchTextFiled.layer.cornerRadius = 15
        searchTextFiled.layer.borderColor = UIColor.gray.cgColor
        searchTextFiled.layer.borderWidth = 0.5
        
        searchTextFiled.layer.masksToBounds = true

        let view = SearchView(frame: CGRect(x: 0, y: 0, width: 40, height: searchTextFiled.frame.height))

        searchTextFiled.leftView = view
        searchTextFiled.leftViewMode = .always
        
    }
    
    private func updateSearchButton(){
        searchButton.setTitle("", for: .normal)
        searchButton.setImage(AssetsManager.HomeSearchButton, for: .normal)
    }
    
}


class SearchView: UIView{
    
    lazy var image: UIImageView = {
        let image = UIImageView(image: AssetsManager.icons.search)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(image)
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: frame.height ),
            self.widthAnchor.constraint(equalToConstant: frame.width),
            
            image.widthAnchor.constraint(equalToConstant: 18),
            image.heightAnchor.constraint(equalToConstant: 18),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
