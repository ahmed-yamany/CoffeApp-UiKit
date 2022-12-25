//
//  HomeViewController.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 22/12/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - SubViews
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = ColorManager.coreBackground
        tableView.register(UINib(nibName: FindTheBestTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: FindTheBestTableViewCell.identifier)
        tableView.register(UINib(nibName: CoffeesTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CoffeesTableViewCell.identifier)
        
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.delegate = self
        tableView.dataSource = self
        
        return tableView
    }()

    // MARK: - Views
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        setLeftBarItem()
        setRightBarItem()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
    // MARK: - Helper Methods
    private func setLeftBarItem(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: AssetsManager.icons.category, style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem?.tintColor = ColorManager.coffee
    }
    private func setRightBarItem(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: AssetsManager.avatar, style: .plain, target: self, action: nil)
    }
    
}


extension HomeViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
}

extension HomeViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            switch indexPath{
            case FindTheBestTableViewCell.indexPath:
                return tableView.dequeueReusableCell(withIdentifier: FindTheBestTableViewCell.identifier) ?? UITableViewCell()
            case CoffeesTableViewCell.indexPath:
                return tableView.dequeueReusableCell(withIdentifier: CoffeesTableViewCell.identifier) ?? UITableViewCell()
            default:
                return UITableViewCell()
            }
        }
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            switch indexPath{
            case FindTheBestTableViewCell.indexPath:
                return 170
            case CoffeesTableViewCell.indexPath:
                return 278
            default:
                return 0
            }
        }
    
    
}


