//
//  MemoStore.swift
//  MemoSwiftUI
//
//  Created by 심현석 on 2023/04/26.
//

import Foundation
import SwiftUI

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        self.list = [
        Memo(content: "안녕하세요."),
        Memo(content: "반갑습니다.", insertDate: Date.now.addingTimeInterval(3600 * -24)),
        Memo(content: "감사합니다.", insertDate: Date.now.addingTimeInterval(3600 * -48))
        ]
    }
    
    func inset(memo: String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else { return }
        memo.content = content
    }
    
    func delete(memo: Memo) {
        list.removeAll { $0.id == memo.id }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
