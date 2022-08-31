CREATE TABLE "Customers" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR,
  "email" VARCHAR(100),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Concessions" (
  "consession_id" SERIAL,
  "consession_name" VARCHAR(60),
  "concession_price" NUMERIC(10,2),
  "customer_id" INTEGER NOT NULL,
  PRIMARY KEY ("consession_id")
);

CREATE TABLE IF NOT EXISTS "Schedule" (
  "schedule_id" SERIAL,
  "schedule_date" DATE DEFAULT CURRENT_DATE,
  PRIMARY KEY ("schedule_id")
);

CREATE TABLE IF NOT EXISTS "STAFF" (
  "staff_id" SERIAL,
  "staff_name" VARCHAR(100),
  "schedule_id" INTEGER,
  "ticket_id" INTEGER,
  PRIMARY KEY ("staff_id"),
  CONSTRAINT "FK_STAFF.schedule_id"
    FOREIGN KEY ("schedule_id")
      REFERENCES "Schedule"("schedule_id"),
  CONSTRAINT "FK_Tickets.ticket_id"
    FOREIGN KEY ("ticket_id")
      REFERENCES "Tickets"("ticket_id")	
);

CREATE TABLE IF NOT EXISTS "Movie" (
  "movie_id" SERIAL,
  "movie_name" VARCHAR(60),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE IF NOT EXISTS "Tickets" (
  "ticket_id" SERIAL,
  "movie_id" INTEGER,
  PRIMARY KEY ("ticket_id")
);

