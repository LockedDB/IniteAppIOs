//
//  ProjectModel.swift
//  IniteAppIOs
//
//  Created by Dani Benet on 2/7/23.
//

import Foundation

class Project {
    var id: String
    var title: String
    var description: String
    var topicLines: [String]
    var participantsUrls: [String]
    var tags: [String]
    var nMessages: Int
    var nAttachments: Int

    init(id: String, title: String, description: String, topicLines: [String], participantsUrls: [String], tags: [String], nMessages: Int, nAttachments: Int) {
        self.id = id
        self.title = title
        self.description = description
        self.topicLines = topicLines
        self.participantsUrls = participantsUrls
        self.tags = tags
        self.nMessages = nMessages
        self.nAttachments = nAttachments
    }
}

var mockedProject = Project(
    id: "1",
    title: "Mock Project 1",
    description: "This is a mock project for preview.",
    topicLines: ["Topic 1", "Topic 2"],
    participantsUrls: ["https://picsum.photos/200/300.jpg"],
    tags: ["Website", "App"],
    nMessages: 1,
    nAttachments: 3
)
