//
//  FirstCoordinator.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 08/06/23.
//

import Foundation
import UIKit

protocol FirstCoordinatorDelegate {
    func goToSecond()
}

class FirstCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    var delegate: FirstCoordinatorDelegate?
    
    init(navCon : UINavigationController, delegate: FirstCoordinatorDelegate) {
        self.navigationController = navCon
        self.delegate = delegate
    }
    
    func start() {
        firstCoordinator()
    }
    
    func firstCoordinator() {
        let viewModel = FirstViewModel(delegate: self)
        let vc: FirstViewController = FirstViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
}

extension FirstCoordinator: FirstViewModelCoordinatorDelegate {
    func goToSecond() {
        delegate?.goToSecond()
    }
}
