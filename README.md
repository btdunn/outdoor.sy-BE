# outdoor.sy BackEnd

outdoor.sy allows users to upload CSV or DSV files via a simple drag and drop interface, and then displays the data in an easy to use/read table. The table can be sorted by any of the table values in ascending or descending order by clicking the headings!

## Technology

Ruby on Rails, PostgreSQL

## Use/Installation

1. Clone repo
2. ```bundle install```
3. ```rails db:create```
4. ```rails db:migrate```
5. ```rails db:seed```
6. ```rails s``` (Port 3000)

## Potential imporvements

- Seperation of customer and vehicles, and then an established one to many relationship to account for customers who may have multiple vehicles.
- Actions for deleting a customer or editing a customers information.
- Unit testing with Jest.
