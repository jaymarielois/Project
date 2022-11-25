package main

import (
	"fmt"
	"log"
	"os"
	"os/signal"
	"sample-loginapi/database/routes"
	"sample-loginapi/middleware"
	"syscall"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/cors"
	"github.com/joho/godotenv"
)

func welcome(c *fiber.Ctx) error {
	return c.SendString("Welcome")
}

func setupRoutes(app *fiber.App) {

	app.Get("/api", welcome)
	//user
	api := app.Group("/api")
	users := api.Group("/users")
	users.Post("/create", routes.CreateUser)
	users.Get("/", middleware.Protected(), routes.GetUsers)
	users.Get("/:id", routes.GetUser)
	users.Put("/:id", routes.UpdateUser)
	users.Delete("/:id", routes.DeleteUser)
	users.Post("/login", routes.Login)
	users.Post("/logout", routes.Logout)
	users.Post("/authenticate", routes.Authenticated)

}

func main() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal("error Loading env file", err)
	}
	port := os.Getenv("PORT")
	//database.AutoMigrate() //since nasa loob na ng init() yung automigrate no need na ideclare dito
	app := fiber.New()

	app.Use(cors.New(cors.Config{
		AllowCredentials: true,
	}))

	setupRoutes(app)

	//bali need natin gumamit ng goroutine using go na keyword itabi mo lang sya dun sa function na gusto mong maging goroutine
	//basically ginagawa nyang asynchronus yung function mo
	go func() {
		if err := app.Listen(":" + port); err != nil {
			log.Panic(err)
		}
	}()

	c := make(chan os.Signal, 1)
	signal.Notify(c, os.Interrupt, syscall.SIGTERM)

	_ = <-c
	fmt.Println("Gracefully shutting down..")
	_ = app.Shutdown()

	fmt.Println("Fiber was successfully shutdown.")

}
