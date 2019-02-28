import Vapor

struct UsersController: RouteCollection {
    func boot(router: Router) throws {
        let usersRoute = router.grouped("api", "users")
        usersRoute.get(use: getAllHandler)
        usersRoute.get(User.parameter, use: getUserHandler)
        usersRoute.get(User.parameter, "acronyms", use: getAcronymsHandler)
        usersRoute.post(User.self, use: createHandler)
    }
    
    func createHandler(_ req: Request, user: User) throws -> Future<User> {
        return user.save(on: req)
    }
    
    func getAcronymsHandler(_ req: Request) throws -> Future<[Acronym]> {
        return try req.parameters.next(User.self).flatMap(to: [Acronym].self) { user in
            return try user.acronyms.query(on: req).all()
        }
    }
    
    func getAllHandler(_ req: Request) throws -> Future<[User]> {
        return User.query(on: req).all()
    }
    
    func getUserHandler(_ req: Request) throws -> Future<User> {
        return try req.parameters.next(User.self)
    }
}
