# PathokShongho-Books-Sharing-App
## Objective: 
 A customer can register to purchase or exchange books from another registered user. The customer will provide bank account number and bank name (can have multiple account number). After registration, each customer will have a unique user_id and password. A customer can buy or exchange one or more books in different quantities. The books will be categorized based on their genre and their price. A bank account is required to settle the bill. The user can buy/exchange/sell multiple books at a time.

### Schemas:
1.	Users (user_id, first_name, last_name, gender, address, contact, loaction)
2.	Books (books_id, books_title, genre, year, author, price)
3.	Borrow (user_id, borrow_id, date_of_borrowing, book_id, borrow_status, date_of_returning, payment_type) 
4.	Review (user_id, rating, comment).

