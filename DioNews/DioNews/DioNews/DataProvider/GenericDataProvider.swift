//
//  GenericDataProvider.swift
//  DioNews
//
//  Created by kauekaj on 7/7/22.
//

import Foundation

protocol GenericDataProvider {
    func success(model: Any)
    func errorData(_ provide: GenericDataProvider?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
