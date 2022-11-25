package models

type Inquire struct {
	Id  uint   `json:"user_id" gorm:"primaryKey"`
	Num string `json:"mobile_num" validate:"required"`
}
