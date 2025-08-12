**# LibraryDB  - Subqueries and Nested Queries

## 📌 Overview
This project is part of my **SQL Developer Internship - Task 6**, focusing on **Subqueries and Nested Queries** using the `LibraryDB` schema.  
The goal is to demonstrate the use of:
- Scalar subqueries
- Correlated subqueries
- Subqueries inside `IN`, `EXISTS`, and `=`
- Derived tables in the `FROM` clause

## 🗄 Database Schema
**Tables:**
- `Categories` - Stores book categories
- `Authors` - Stores author details
- `Books` - Stores book information, linked to authors and categories
- `Members` - Stores library member information
- `Loans` - Stores loan records for books borrowed by members

## 🔍 Queries Included
1. **Scalar Subquery in SELECT** – Counts the number of times each book was borrowed.  
2. **Subquery in WHERE with IN** – Finds members who borrowed books by a specific author.  
3. **Correlated Subquery with EXISTS** – Lists books that have never been borrowed.  
4. **Derived Table in FROM Clause** – Finds the most borrowed book.  
5. **Subquery with HAVING** – Finds authors whose books have been borrowed more than 5 times.

## 🛠 Tools Used
- **MySQL Workbench**




