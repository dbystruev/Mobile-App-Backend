import Vapor

struct CategoriesController: RouteCollection {
    func boot(router: Router) throws {
        let categoriesRoute = router.grouped("api", "categories")
        categoriesRoute.get(use: getAllHandler)
        categoriesRoute.get(Category.parameter, use: getCategoryHandler)
        categoriesRoute.get(Category.parameter, "acronyms", use: getAcronymsHandler)
        categoriesRoute.post(Category.self, use: createHandler)
    }
    
    func createHandler(_ req: Request, category: Category) throws -> Future<Category> {
        return try req.content.decode(Category.self).save(on: req)
    }
    
    func getAcronymsHandler(_ req: Request) throws -> Future<[Acronym]> {
        return try req.parameters.next(Category.self).flatMap(to: [Acronym].self) { category in
            return try category.acronyms.query(on: req).all()
        }
    }
    
    func getAllHandler(_ req: Request) throws -> Future<[Category]> {
        return Category.query(on: req).all()
    }
    
    func getCategoryHandler(_ req: Request) throws -> Future<Category> {
        return try req.parameters.next(Category.self)
    }
}
