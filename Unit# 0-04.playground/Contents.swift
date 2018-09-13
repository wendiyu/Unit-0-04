

// Created on: September-12-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for the language label program with bottom 
// this will be commented out when code moved to Xcode
import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let helloWorldLabel = UILabel()
    let englishButton = UIButton()
    let frenchButton = UIButton()
    let spanishButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        englishButton.setTitle("English", for: .normal)
        englishButton.setTitleColor(.blue, for: .normal)
        englishButton.addTarget(self, action: #selector(showEnglishText), for: .touchUpInside)
        view.addSubview(englishButton)
        englishButton.translatesAutoresizingMaskIntoConstraints = false
        englishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        englishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        frenchButton.setTitle("French", for: .normal)
        frenchButton.setTitleColor(.blue, for: .normal)
        frenchButton.addTarget(self, action: #selector(showFrenchText), for: .touchUpInside)
        view.addSubview(frenchButton)
        frenchButton.translatesAutoresizingMaskIntoConstraints = false
        frenchButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        frenchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        spanishButton.setTitle("Spanish", for: .normal)
        spanishButton.setTitleColor(.blue, for: .normal)
        spanishButton.addTarget(self, action: #selector(showSpanishText), for: .touchUpInside)
        view.addSubview(spanishButton)
        spanishButton.translatesAutoresizingMaskIntoConstraints = false
        spanishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        spanishButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        //helloWorldLabel.text = "Hello, World!"
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.topAnchor.constraint(equalTo: frenchButton.bottomAnchor, constant: 20).isActive = true
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func showEnglishText() {
        // show English
        helloWorldLabel.text = "Hello,world"
    }
    @objc func showFrenchText() {
        // show French 
        helloWorldLabel.text = "Bonjour le monde!"
    }
    @objc func showSpanishText() {
        // show Spanish
        helloWorldLabel.text = "¡Hola Mundo!"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
