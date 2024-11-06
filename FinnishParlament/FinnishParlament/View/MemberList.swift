//
//  MemberList.swift
//  FinnishParlament
//
//  Created by Anna Lindén on 6.11.2024.
//
import SwiftUI

struct MemberList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredMembers: [Member] {
            modelData.members.filter { member in
                (!showFavoritesOnly || member.isFavorite)
            }
        }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }

                ForEach(filteredMembers) { member in
                    NavigationLink(destination: MemberDetail(member: member)) {
                        MemberRow(member: member)
                    }
                }
            }
            .navigationTitle("Members of Parliament")
        }
    }
}

#Preview {
    MemberList()
        .environmentObject(ModelData())
}

