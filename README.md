📦 Product Catalog Backend

This is the backend service for the Product Catalog Viewer, built with Spring Boot, Hibernate, and PostgreSQL. It exposes REST APIs for CRUD operations on products, including a custom endpoint for summarizing product counts by brand.

🚀 Features
RESTful API endpoints to manage products
Data persisted in PostgreSQL via Hibernate ORM
Custom endpoint to get product summary grouped by brand
CORS enabled for frontend integration
Unit tests for service and repository layers

🔧 Technologies Used
Java 24
Spring Boot 3+
Hibernate
PostgreSQL
Maven
JUnit 5

▶️ How to Run (Locally)

Prerequisites:
Java 24
PostgreSQL running locally (or use Docker)
Maven

1. Set up PostgreSQL
Create a database named product_catalog and update application.properties accordingly.
CREATE DATABASE product_catalog;

2. Build and Run
cd product_catalog_backend
mvn clean install
mvn spring-boot:run

Backend will run on: http://localhost:8080

🐳 How to Run with Docker
# From project root
# 1. Clone project
git clone https://github.com/mounikabodige/product-catalog-deploy
cd product-backend

# 2. Run Docker Compose
docker-compose up


🧪 Testing
Includes unit tests for: ProductService logic
Repository layer (mocked DB interaction)

Run with:
mvn test

📡 API Endpoints
1. Create Product 
2. POST /products 
3. Get All Products 
4. GET /products
5. Get Product by ID
6. GET /products/{id}
7. Get Brand Summary - GET /products/brand-summary
For this API specially as we donot have it rendered in UI but this still can be accessed from the frontend port using this URL
Frontend - http://localhost:5173/products/brand-summary
Backend - http://localhost:8080/products/brand-summary

Returns: sample result
[{"productKey":1,"retailer":"Amazon","brand":"Sony","model":"XBR-55X900H","productName":"Sony 55 inch 4K Tv","productDescription":"Ultra HD smart LED TV","price":799.99},
{"productKey":2,"retailer":"Samsung Store","brand":"Samsung","model":"UN50TU8000","productName":"Smart LED TV 50\"","productDescription":"4K UHD HDR buit in streaming display","price":429.99}]

💡 Improvements If Time Permitted
Add pagination and filtering support
Add Swagger/OpenAPI docs
Add DTO validation and error handling middleware
Use Flyway for DB migrations
Add integration tests
**Advanced**
 - Authorization & Authentication 
   - Add user authentication (e.g., JWT, OAuth2)
   - Implement role-based access control (RBAC) — roles like Admin, User, Guest with different permissions 
   - Admin endpoints for adding, updating, deleting products (secured)
 - Validation & Error Handling 
   - More comprehensive input validation on backend
   - Detailed error responses with error codes/messages
   - Centralized exception handling
 - Pagination & Filtering
    - Support pagination for product lists 
    - Add filtering by brand, price range, retailer, or categories
    - Sorting options (price low to high, newest, etc.)
 - Caching & Performance
   - Implement caching (e.g., Redis) for frequently accessed data like brand summaries
   - Optimize DB queries with indexes
 - Logging & Monitoring
   - Integrate logging framework (e.g., Logback)
   - Monitor API performance and errors


📝 Notes
This backend is structured independently to allow modular deployments and separation of concerns.
It can be containerized, tested, and deployed separately from the frontend.

