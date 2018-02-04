CREATE USER realtydbma@localhost
  IDENTIFIED BY 'agbsro$!@#$';

GRANT SELECT, INSERT, UPDATE, DELETE ON realty.* TO 'realtydbma'@localhost;

FLUSH PRIVILEGES;

/*
    # LANDS 테이블 생성
*/
CREATE TABLE LANDS (
  LAND_SQ               INT                           NOT NULL AUTO_INCREMENT PRIMARY KEY,
  SALE_TYPE             ENUM ('BUY', 'LEASE', 'RENT') NOT NULL,
  ADDRESS               VARCHAR(500),
  BUILDING_NAME         VARCHAR(100),
  BUILDING_NUMBER       VARCHAR(100),
  SUPPLY_AREA           FLOAT,
  EXCLUSIVE_AREA        FLOAT,
  STAKE                 FLOAT,
  DEPOSIT               INT,
  LATEST_DEPOSIT        INT,
  RENT_PRICE            INT,
  LATEST_RENT_PRICE     INT,
  FLOOR                 INT,
  FLOOR_SIZE            INT,
  ROOM_COUNT            INT,
  BATHROOM_COUNT        INT,
  LIVEABLE_DATE         DATE                          NOT NULL,
  MEMO                  VARCHAR(4000),
  SALESMAN              VARCHAR(100),
  SALESMAN_CONTACT      VARCHAR(100),
  CREATION_DATETIME     DATETIME                      NOT NULL DEFAULT CURRENT_TIMESTAMP,
  MODIFICATION_DATETIME DATETIME                      NOT NULL DEFAULT CURRENT_TIMESTAMP,
  SALE_STATE            ENUM ('SALE', 'SOLD_OUT')     NOT NULL
);

/*
    # 대소문자 구분 여부
    # 0 : 구분
    # 1 : 미구분
*/
SHOW VARIABLES LIKE 'lower_case_table_names';