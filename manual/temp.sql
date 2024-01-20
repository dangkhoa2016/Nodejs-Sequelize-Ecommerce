-- display all tables in sqlite3
.tables

select name from sqlite_master where type='table';
/*
+----------------------+
|         name         |
+----------------------+
| SequelizeMeta        |
| Permissions          |
| sqlite_sequence      |
| Roles                |
| Admins               |
| Role_Has_Permissions |
| Admin_Has_Roles      |
| Routes               |
| Admin_Has_Routes     |
| Categories           |
| Subcategories        |
| Brands               |
| Tags                 |
| CategorySubgroups    |
*/

select count(id) as count_Permissions from Permissions;
select count(id) as count_Roles from Roles;
select count(id) as count_Admins from Admins;
select count(id) as count_Role_Has_Permissions from Role_Has_Permissions;
select count(id) as count_Admin_Has_Roles from Admin_Has_Roles;
select count(id) as count_Routes from Routes;
select count(id) as count_Admin_Has_Routes from Admin_Has_Routes;
select count(id) as count_Categories from Categories;
select count(id) as count_Subcategories from Subcategories;
select count(id) as count_Brands from Brands;
select count(id) as count_Tags from Tags;
select count(id) as count_CategorySubgroups from CategorySubgroups;

select * from Admins;
