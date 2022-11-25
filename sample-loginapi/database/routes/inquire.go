package routes

import (
	"sample-loginapi/database"
	"sample-loginapi/models"

	"github.com/gofiber/fiber/v2"
	"gorm.io/gorm"
)

var db *gorm.Db

type Inquire struct {
	Id  uint   `json:"user_id" gorm:"primaryKey"`
	Num string `json:"mobile_num" validate:"required"`
}

func CreateResponse(numModel models.Inquire) Inquire {
	return Inquire{Id: numModel.Id, Num: numModel.Num}
}

func ValidateNum(C *fiber.Ctx) {
	var exists bool
	row := database.Database.gorm.QueryRow("SELECT EXISTS(SELECT 1 FROM ...)")
	if err := row.Scan(&exists); err != nil {
		return err
	} else if !exists {
		if err := database.Database.Db.sExec("INSERT ..."); err != nil {
			return err
		}
	}
}
