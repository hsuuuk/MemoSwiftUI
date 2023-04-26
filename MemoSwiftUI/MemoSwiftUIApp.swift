//
//  MemoSwiftUIApp.swift
//  MemoSwiftUI
//
//  Created by 심현석 on 2023/04/26.
//

import SwiftUI

@main
struct MemoSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
