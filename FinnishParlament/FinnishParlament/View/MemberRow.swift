//
//  MemberRow.swift
//  FinnishParlament
//
//  Created by Anna Lindén on 6.11.2024.
//
import SwiftUI

struct MemberRow: View {
    var member: Member

    var body: some View {
        HStack {
            member.partyImage
                .resizable()
                .frame(width: 50, height: 50)
            Text(member.fullName)
                .font(.title3)
            Spacer()
            if member.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    MemberRow(member: ModelData().members[0])
        .previewLayout(.fixed(width: 300, height: 70))
}

