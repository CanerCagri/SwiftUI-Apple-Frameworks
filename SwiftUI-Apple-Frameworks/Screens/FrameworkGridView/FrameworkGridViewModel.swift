//
//  FrameworkGridViewModel.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Caner Çağrı on 14.08.2022.
//

import SwiftUI
import SafariServices

final class FrameworkGridViewModel: ObservableObject {
    
    @Published var isShowDetailView = false
    
    var selectedFramework: FrameworkModel? {
        didSet {
            isShowDetailView = true
        }
    }
    
    let columns: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())
    ]
}
