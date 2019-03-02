<p align="center">
    <img src="https://user-images.githubusercontent.com/1342803/36623515-7293b4ec-18d3-11e8-85ab-4e2f8fb38fbd.png" width="320" alt="API Template">
    <br>
    <br>
    <a href="http://docs.vapor.codes/3.0/">
        <img src="http://img.shields.io/badge/read_the-docs-2196f3.svg" alt="Documentation">
    </a>
    <a href="https://discord.gg/vapor">
        <img src="https://img.shields.io/discord/431917998102675485.svg" alt="Team Chat">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://circleci.com/gh/vapor/api-template">
        <img src="https://circleci.com/gh/vapor/api-template.svg?style=shield" alt="Continuous Integration">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-4.1-brightgreen.svg" alt="Swift 4.1">
    </a>
</p>

<h1>
Server is run at localhost:8080 by default.
</h1>

<h2>
API endpoints:
</h2>

<ul><li>
/api/acronyms — Acronyms
</li><li>
/api/categories — Categories
</li><li>
/api/users — Users
</li></ul>

<h2>
Models:
</h2>

<h3>
Acronyms:
</h3>

<ul><li>
id: Int?
</li><li>
short: String
</li><li>
long: String
</li><li>
userID: UUID
</li></ul>

<h3>
Categories:
</h3>

<ul><li>
id: Int?
</li><li>
name: String
</li></ul>

<h3>
Users:
</h3>

<ul><li>
id: UUID?
</li><li>
name: String
</li><li>
username: String
</li></ul>

<h2>
API Calls
</h2>

<h3>
GET all
</h3>

<ul><li>
GET /api/acronyms
</li><li>
GET /api/categories
</li><li>
GET /api/users
</li></ul>

<h3>
GET one by id
</h3>

<ul><li>
GET /api/acronyms/{id}
</li><li>
GET /api/categories/{id}
</li><li>
GET /api/users/{uuid}
</li></ul>

<h3>
DELETE one by id
</h3>

<ul><li>
DELETE /api/acronyms/{id}
</li><li>
DELETE /api/categories/{id}
</li><li>
DELETE /api/users/{uuid}
</li></ul>

<h3>
POST (create) new, model as JSON in body w/o id, returns model as JSON with id
</h3>

<ul><li>
POST /api/acronyms/
</li><li>
POST /api/categories/
</li><li>
POST /api/users/
</li></ul>

<h3>
PUT (update) new, model as JSON in body, returns model as JSON
</h3>

<ul><li>
PUT /api/acronyms/{id}
</li><li>
PUT /api/categories/{id}
</li><li>
PUT /api/users/{uuid}
</li></ul>

<h3>
Parent/child Relationships
</h3>

<ul><li>
GET /api/users/{uuid}/acronyms
</li><li>
GET /api/acronyms/{id}/user
</li></ul>

<h3>
Sibling Relationships
</h3>

<ul><li>
POST /api/acronyms/{id}/categories/{id}
</li><li>
GET /api/acronyms/{id}/categories
</li><li>
GET /api/categories/{id}/acronyms
</li></ul>
