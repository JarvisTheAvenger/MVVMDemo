//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Rahul Umap on 05/09/17.
//  Copyright © 2017 Rahul Umap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var carsTableView: UITableView!

    let cars: [CarViewModel] = (UIApplication.shared.delegate as! AppDelegate).cars


    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI(){
        self.carsTableView.register(UINib.init(nibName: "CarsTableViewCell", bundle:Bundle.main), forCellReuseIdentifier: "cell")
    }

}

extension ViewController :  UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CarsTableViewCell
        let carViewModel = cars[indexPath.row]
        cell.model?.text = carViewModel.titleText
        cell.power?.text = carViewModel.horsepowerText
        cell.make?.text = carViewModel.makeText
        loadImage(cell: cell, photoURL: carViewModel.photoURL)

        return cell
    }

    func loadImage(cell: CarsTableViewCell, photoURL: NSURL?) {
        DispatchQueue.global(qos: .background).async{
            guard let imageURL = photoURL, let imageData = try? NSData(contentsOf: imageURL as URL, options:NSData.ReadingOptions.dataReadingMapped) else {
                return
            }
            DispatchQueue.main.async {
                cell.carsImageView.image = UIImage(data: imageData as Data)
                cell.setNeedsLayout()

            }
        }

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }

}
