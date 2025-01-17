//
//  ViewController.swift
//  Test
//
//  Created by Chong on 17/1/2568 BE.
//

import UIKit

class ListImageViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var list: [ImageDataModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        mapData()
    }

    private func mapData() {
        if let jsonData = jsonString.data(using: .utf8) {
            guard let photos = try? JSONDecoder().decode([ImageDataModel].self, from: jsonData) else { return print("error")}
            list = photos
        }
    }

    private func setupTable() {
        tableView.register(UINib(nibName: "ImageDataTableViewCell", bundle: .main), forCellReuseIdentifier: "ImageDataTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension ListImageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ImageDataTableViewCell", for: indexPath) as? ImageDataTableViewCell else {
            return ImageDataTableViewCell()
        }
        cell.setDataImage(data: list[indexPath.row])
        return cell
    }
}

extension ListImageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailImageViewController()
        vc.setDetail(detail: list[indexPath.row])
        navigationController?.pushViewController(vc, animated: true)
    }
}
