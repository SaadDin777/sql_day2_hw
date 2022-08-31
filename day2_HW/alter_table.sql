alter table "Concessions"
add constraint "fk_concession.customer_id" 
FOREIGN KEY ("customer_id")
REFERENCES "Customers"("customer_id");

alter table "Tickets"
add constraint "fk_movie.move_id"
FOREIGN KEY ("movie_id")
REFERENCES "Movie" ("movie_id");