import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    let acronymsController = AcronymsController()
    let categoriesController = CategoriesController()
    let usersController = UsersController()
    try router.register(collection: acronymsController)
    try router.register(collection: categoriesController)
    try router.register(collection: usersController)
}
