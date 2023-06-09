//
//  ThirdViewController.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 07/06/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var viewModel: ThirdViewModel
    
    lazy var popButton: UIButton = {
        let button = UIButton()
        button.setTitle("Voltar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.black, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(self.tappedPopButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedPopButton() {
        viewModel.backPage()
    }
    
    init(viewModel: ThirdViewModel) {
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

extension ThirdViewController: ViewCodeType {
    func buildViewHierarchy() {
        view.addSubview(popButton)
    }
    
    func setupConstraints() {
        popButton.anchor(
            centerX: view.centerXAnchor,
            centerY: view.centerYAnchor,
            widthConstant: 150,
            heightConstant: 60
        )
    }
    
    func setupAdditionalConfiguration() {
        view.backgroundColor = .green
        navigationController?.navigationItem.backBarButtonItem?.isHidden = false
    }
}
