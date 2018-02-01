CREATE USER realtydbma@localhost
  IDENTIFIED BY 'agbsro$!@#$';

GRANT SELECT, INSERT, UPDATE, DELETE ON realty.* TO 'realtydbma'@localhost;

FLUSH PRIVILEGES;

CREATE TABLE LANDS (
  LAND_SQ               INT                           NOT NULL AUTO_INCREMENT PRIMARY KEY,
  SALE_TYPE             ENUM ('BUY', 'LEASE', 'RENT') NOT NULL,
  ADDRESS               VARCHAR(500)                  NOT NULL,
  BUILDING_NAME         VARCHAR(100)                  NOT NULL,
  BUILDING_NUMBER       VARCHAR(100)                  NOT NULL,
  AREA                  FLOAT                         NOT NULL,
  DEPOSIT               INT                           NOT NULL,
  RENT_PRICE            INT,
  FLOOR                 INT                           NOT NULL,
  FLOOR_SIZE            INT                           NOT NULL,
  ROOM_COUNT            INT                           NOT NULL,
  BATHROOM_COUNT        INT                           NOT NULL,
  LIVEABLE_DATE         DATE                          NOT NULL,
  MEMO                  VARCHAR(4000),
  SALESMAN              VARCHAR(100)                  NOT NULL,
  SALESMAN_CONTACT      VARCHAR(100)                  NOT NULL,
  CREATION_DATETIME     DATETIME                      NOT NULL DEFAULT CURRENT_TIMESTAMP,
  MODIFICATION_DATETIME DATETIME                      NOT NULL DEFAULT CURRENT_TIMESTAMP,
  SALE_STATE            ENUM ('SALE', 'SOLD_OUT')     NOT NULL
);