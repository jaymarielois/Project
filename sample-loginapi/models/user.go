package models

type User struct {
	ID       uint   `json:"user_id" gorm:"primaryKey"`
	UserNAme string `json:"login_username" gorm:"unique" validate:"required"`
	Password string `json:"login_password" gorm:"column:login_password" validate:"required"`
}
