//
//  KnockCounter.swift
//  d2d-crm-watchos
//
//  Created by Emin Okic on 6/8/25.
//


// KnockCounter.swift
import Foundation

class KnockCounter: ObservableObject {
    @Published var totalKnocks: Int = 0
    
    private let defaults = UserDefaults(suiteName: "group.com.eminokic.d2dcrm")
    private let key = "totalKnocks"

    init() {
        totalKnocks = defaults?.integer(forKey: key) ?? 0
    }

    func increment() {
        totalKnocks += 1
        defaults?.set(totalKnocks, forKey: key)
    }
}
