//
//  ViewController.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 25/08/2021.
//

import UIKit

protocol BeginViewControllerProtocol{
    func displayBackground(flag: Bool)
    func dislayDataWithList(listData: [CoinNameModel])
    
}

class BeginViewController: UIViewController {
    
    var router: BeginRouterProtocol?
    var interactor: BeginInteractorProtocol?
    
    private var listName: [CoinNameModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orange
        
        setupView()
        self.interactor?.getListCoin()
        
        
        

    }
    
    func setupView() {
        self.view.addSubview(titleLable)
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(detailView)
        detailView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(nameTableView)
        nameTableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(buttonView)
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLable.widthAnchor.constraint(equalToConstant: 200),
            titleLable.heightAnchor.constraint(equalToConstant: 50),
            titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            detailView.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 15),
            detailView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            detailView.heightAnchor.constraint(equalToConstant: 50),
            detailView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            nameTableView.topAnchor.constraint(equalTo: detailView.bottomAnchor, constant: 5),
            nameTableView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            nameTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -250),
            nameTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonView.topAnchor.constraint(equalTo: nameTableView.bottomAnchor, constant: 10),
            buttonView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            buttonView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100),
            buttonView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
  
        ])
    }    
    private lazy var titleLable: RoundedLabel = {
        let titleLabel = RoundedLabel()
      //  titleLabel.backgroundColor = UIColor.brown
        titleLabel.textColor = UIColor.white
        titleLabel.text = "Welcome"
        titleLabel.textAlignment = .center
        return titleLabel
        
    }()
    
    private lazy var detailView = DetailView(firstText: "Holder", secondText: "Trader")
    
    private lazy var nameTableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    func dislayDataWithList(listData: [CoinNameModel]) {
        self.listName = listData
        self.nameTableView.reloadData()
    }
    
    private lazy var buttonView: GroupButtonView = {
        let buttonView = GroupButtonView.instanceFromNib()
        buttonView.clickfirstBtnClosure = {
            self.interactor?.clickFirstButtonInButtonView()
        }
        return buttonView
    }()
    
    func displayBackground(flag: Bool) {
        self.view.backgroundColor = flag ? UIColor.brown : UIColor.white
    }
}

extension BeginViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listName?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if( !(cell != nil))
        {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "Cell")
        }
        
        if let nameCoinModel: CoinNameModel = listName?[indexPath.row] {
            cell?.textLabel?.text = nameCoinModel.name
            cell?.detailTextLabel?.text = String(nameCoinModel.price ?? 0)
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let nameCoinModel: CoinNameModel = listName?[indexPath.row] {
            router?.navigateToDetailViewController(withModel: nameCoinModel)
        }
    }
    
}

extension BeginViewController: BeginViewControllerProtocol {
    
}

