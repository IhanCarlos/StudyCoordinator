//
//  AppCoordinator.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 07/06/23.
//

import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController : UINavigationController { get set }
}

class AppCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navCon : UINavigationController) {
        self.navigationController = navCon
    }
    
    func start() {
        goToFirstPage()
        navigationController.isNavigationBarHidden = true
    }
    
    func goToFirstPage(){
        let firstCoordinator = FirstCoordinator(
            navCon: navigationController,
            delegate: self
        )
        firstCoordinator.start()
    }
    
    func goToSecondPage(){
        let secondCoordinator = SecondCoordinator(
            navCon: navigationController,
            delegate: self
        )
        secondCoordinator.start()
    }
    
    func goToThirdPage(){
        let thirdCoordinator = ThirdCoordinator(
            navCon: navigationController,
            delegate: self
        )
        thirdCoordinator.start()
    }
}

extension AppCoordinator: FirstCoordinatorDelegate {
    func goToSecond() {
        goToSecondPage()
    }
}

extension AppCoordinator: SecondCoordinatorDelegate {
    func backPage() {
        goToFirstPage()
    }
    
    func goToThird() {
        goToThirdPage()
    }
}

extension AppCoordinator: ThirdCoordinatorDelegate {

}


