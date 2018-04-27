# BudBud - Club Budget Tracker

* Title: Club Budget
* Team Members: Derek Jin, Geena Kim
* Demo Link: https://drive.google.com/file/d/1dpHkw2ru8okcRMPb436_JjVrE-hVTvXQ/view?usp=sharing
* Idea: An application where users input transactions for their clubs which their club admin/treasurer can keep track of and reimburse them.  	

### Models and Description:

User

* has name, email, password
* has many transactions
* has many admins, through transactions
* user and admin created through devise
* can keep track of what transactions they've made and have/haven't been reimbursed for

Admin

* has many users
* has many transactions
* can flip reimbursed boolean on transactions
* has a total balance that changes with new transactions/reimbursements, and can be adjusted by the admin.

Transaction

* has a value spent, description text, date, flag if reimbursed
* has an admin and user
* created by users, edited by admins
* all recorded in a log

Membership
* Attempted Join Table between user and admin as two has_many, through associations. 


	
### Features:

* Users can sign-up/log-in
* Users can create and destroy non-reimbursed transactions
* Users can monitor past transactions
* Users can create a club as an admin account
* Admin can flag a transaction as reimbursed
* Admin can adjust their balance
* Admin can see all past transactions in a log


### Division of Labor:
Worked on the majority of the project together, usually over a single-monitor. Shared the work evenly for all parts of the project.