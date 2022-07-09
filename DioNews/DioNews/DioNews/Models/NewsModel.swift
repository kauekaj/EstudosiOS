//
//  NewsModel.swift
//  DioNews
//
//  Created by kauekaj on 7/6/22.
//

import Foundation

struct NewsModel: Codable {
    var source: SourceModel
    var author: String?
    var title: String
    var description: String?
    var url: String
    var urlToImage: String?
    var publishedAt: Date
    var content: String?
}
