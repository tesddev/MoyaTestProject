//
//  ViewController.swift
//  MoyaTestProject
//
//  Created by GIGL iOS on 30/07/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        var image = UIImage(systemName: "")
        iv.image = image
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        
//        NetworkManager.shared.fetchEmojis { emojis in
//            print(emojis)
//        }
        
        NetworkManager.shared.fetchSearchedEmojis(username: "blisapps") { searchedEmojis in
            print("see searched emojis \(searchedEmojis)")
            
            let url = URL(string: searchedEmojis.avatarURL)!

                DispatchQueue.global().async {
                    // Fetch Image Data
                    if let data = try? Data(contentsOf: url) {
                        DispatchQueue.main.async {
                            // Create Image and Update Image View
                            print("here is the data \(data)")
                            self.imageView.image = UIImage(data: data)
                        }
                    }
                }
        } errorCompletion: { err in
            print(err)
        }
        
//        NetworkManager.shared.getAppleRepos(page: 3, size: 10) { result in
//            switch result{
//            case .success(let url):
//                print(url)
//            case .failure(let err):
//                print(err.localizedDescription)
//            }
//        }
        
        configureViews()
    }
    
    func configureViews() {
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
            
        ])
    }
}

