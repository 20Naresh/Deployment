// main.rs
use actix_web::{web, App, HttpServer, Responder};

async fn index() -> impl Responder {
    "Hello from Rust web server!"
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .route("/", web::get().to(index))
    })
    .bind("0.0.0.0:8083")?
    .run()
    .await
}
