select e.user_id, e.first_name, Address,bk.books_title,bk.price,b.date_of_return return
from users e inner join borrow b on (e.user_id = b.user_id)
inner join books bk on (b.books_id= bk.books_id)
where b.borrow_status = (select borrow_status
                          from borrow where borrow_status = 'Occupaid');
                          
                          
create table Review(
borrow_id   number(6) UNIQUE,
rating     INT,
comments   char(20),

FOREIGN KEY (borrow_id) references borrow(borrow_id)
);

drop table review PURGE;


create table Review(
user_id  number(6) UNIQUE,
rating     INT,
comments   char(30),
FOREIGN KEY (user_id ) references users(user_id )
);

/*giving review*/
update review 
set rating = '8' , comments = 'xoss';

/*showing review*/
select u.user_id, r.rating,r.comments
from users u inner join review r on (u.user_id = r.user_id) inner join borrow b on (r.user_id = b.user_id)
where b.date_of_return < b.date_of_return + 1;







/*For User query*/
select *
from users;

/*Book list show*/
SELECT *
FROM Books
ORDER BY year desc;


/*book search*/
select *
FROM books
where books_title like '%yal%'
or genre = 'drama';

/*books selecting*/
update borrow
set borrow_id = books_id+user_id
where books_id IN (select books_id
                        from books
                        where books_id = '35'
                        group by books_id);
                        

/*date of borrow*/
update borrow
set date_of_brrw = SYSDATE
where borrow_id = 47;



/*date of return*/
update borrow
set date_of_return = date_of_brrw+7
WHERE borrow_id = 47;

/*borrow status*/
UPDATE borrow
set borrow_status = 'Occupaid'
where date_of_brrw is not null;

/* payment */
select e.user_id,upper(e.first_name) name, Address,upper(bk.books_title) book_name,round(bk.price) price,b.date_of_return return, b.payment_type
from users e inner join borrow b on (e.user_id = b.user_id)
inner join books bk on (b.books_id= bk.books_id)
where b.borrow_status = (select borrow_status
                          from borrow 
                          where borrow_status = 'Occupaid');

/*giving review*/
update review set rating = '8' , comments = 'xoss'
where user_id = 11;

/*showing review*/
select u.user_id users, r.rating rating ,r.comments comments
from users u inner join review r on (u.user_id = r.user_id) inner join borrow b on (r.user_id = b.user_id)
where b.date_of_return < b.date_of_return + 1 and u.user_id = '19'
