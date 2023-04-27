//
//  DetailView.swift
//  MemoSwiftUI
//
//  Created by 심현석 on 2023/04/27.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var memo: Memo
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        Text(memo.content)
                            .padding()
                        
                        Spacer()
                    }
                    
                    Text(memo.insertDate, style: .date)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .navigationTitle("메모 보기")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(memo: Memo(content: "Hi"))
            .environmentObject(MemoStore())
    }
}
