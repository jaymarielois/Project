package database

import (
	"fmt"
	"log"
	"os"
	"sample-loginapi/models"
	"strconv"

	"github.com/joho/godotenv"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

type DbIntance struct {
	Db *gorm.DB
}

var Database DbIntance

func init() {

	err := godotenv.Load(".env")
	if err != nil {
		log.Fatal("Error Loading Env File: ", err)
	}

	environment := os.Getenv("ENVIRONMENT")
	fmt.Println(environment)
	err = godotenv.Load(fmt.Sprintf(".env-%s", environment))
	if err != nil {
		log.Fatal("Error Loading Env File: ", err)
	}

	host := os.Getenv("DB_HOST")
	user := os.Getenv("DB_UNAME")
	pass := os.Getenv("DB_PASS")
	port, _ := strconv.Atoi(os.Getenv("DB_PORT"))
	dbname := os.Getenv("DB_NAME")
	uri := os.Getenv("DB_URI")
	fmt.Println(user)
	dsn := fmt.Sprintf("host=%s user="+user+" password=%s dbname=%s port=%d sslmode=disable", host, pass, dbname, port)
	fmt.Println(dsn)
	db, err := gorm.Open(postgres.Open(uri), &gorm.Config{})

	if err != nil {
		log.Fatal("Failed to connect to the database! \n", err.Error())
		os.Exit(2)
	}

	log.Printf("Connect to the database successfully")
	db.Logger = logger.Default.LogMode(logger.Info)
	log.Println("Running")

	db.AutoMigrate(&models.User{}) //ito na yung auto migrate

	Database = DbIntance{Db: db}

}
