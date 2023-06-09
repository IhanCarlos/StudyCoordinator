//
//  FirstViewController.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 07/06/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    var viewModel: FirstViewModel
    
    lazy var pushButton: UIButton = {
        let button = UIButton()
        button.setTitle("Prosseguir", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.black, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(self.tappedPushButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedPushButton() {
        viewModel.goToSecond()
    }
    
    init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension FirstViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(pushButton)
    }
    
    func setupConstraints() {
        pushButton.anchor(
            centerX: view.centerXAnchor,
            centerY: view.centerYAnchor,
            widthConstant: 150,
            heightConstant: 60
        )
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .red
    }
}
