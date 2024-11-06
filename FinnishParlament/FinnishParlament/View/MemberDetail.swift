//
//  MemberDetail.swift
//  FinnishParlament
//
//  Created by Anna Lindén on 6.11.2024.
//
import SwiftUI

struct MemberDetail: View {
    @EnvironmentObject var modelData: ModelData
    var member: Member

    
    // Compute the index of the member in the model data
    var memberIndex: Int {
        modelData.members.firstIndex(where: { $0.id == member.id })!
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            member.partyImage
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            
            HStack {
                Text(member.fullName)
                    .font(.largeTitle)
                FavoriteButton(isSet: $modelData.members[memberIndex].isFavorite)
                            }
            .padding(.bottom, 5)

            Text("Party: \(member.party.uppercased())")
                .font(.title2)
                .padding(.bottom, 2)

            Text("Constituency: \(member.constituency)")
                .font(.title3)
                .padding(.bottom, 2)

            Text("Born Year: \(member.bornYear)")
                .font(.title3)
                .padding(.bottom, 2)

            if !member.twitter.isEmpty {
                Link("Twitter Profile", destination: URL(string: member.twitter)!)
                    .padding(.top, 5)
            }

            Spacer()
        }
        .padding()
        .navigationTitle(member.fullName)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct MemberDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        MemberDetail(member: modelData.members[0])
            .environmentObject(modelData)
    }
}
//#Preview {
  //  MemberDetail(member: ModelData().members[0])
    //        .environmentObject(ModelData())}

