//
//  ImageDataModel.swift
//  Test
//
//  Created by Chong on 17/1/2568 BE.
//

import Foundation

let jsonString = #"""
[{"id":"0","author":"Meow","width":5000,"height":3333,"url":"cat1","download_url":"cat1"},
{"id":"1","author":"Meow Meow","width":5000,"height":3333,"url":"cat2","download_url":"cat2"},
{"id":"2","author":"Meow Meow Meow","width":5000,"height":3333,"url":"cat3","download_url":"cat3"},
{"id":"3","author":"Meow Meow Meow Meow","width":5000,"height":3333,"url":"cat4","download_url":"cat4"},
{"id":"4","author":"Meow Meow Meow Meow Meow","width":5000,"height":3333,"url":"cat5","download_url":"cat5"},
{"id":"5","author":"Meow Meow Meow Meow Meow Meow","width":5000,"height":3334,"url":"cat6","download_url":"cat6"}]
"""#

struct ImageDataModel: Codable {
    let id: String
    let author: String
    let width: Int
    let height: Int
    let url: String
    let dowloadUrl: String

    enum CodingKeys: String, CodingKey {
        case id
        case author
        case width
        case height
        case url
        case dowloadUrl = "download_url"
    }
}
