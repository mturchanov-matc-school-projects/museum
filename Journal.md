6/11/2021 ~ 2 hours  
Tasks Completed:
* Reinstalling Virtual Machine (the old versions had issues with network + run speed)
* Setting up new VM
* Creating [git repo](https://github.com/mturchanov-matc-school-projects/museum.git)
* Setting up basic webapp project
* First proj's launch successful (set up tomcat)


6/13/2021 ~ 30 min  
Tasks Completed:
* database and needed tables are created

6/16/2021 ~ 3 hours
Tasks Completed:
* Fixing bug with no displaying EL(Expression Language) 

6/18/2021 ~ 1.30 hours
Tasks Completed:
* working DAO relationship between entities items- lost_items added(oneToOne)
* working DAO relationship between entities items - locations added(manyToMany)

6/19/2021 ~ 1 hours
Tasks Completed:
* working DAO relationship between entities items- employees added(manyToMany); merge only
* working DAO relationship between entities employees - phoneNumbers added(oneToMany)


6/23/2021 ~ 1 hours
Tasks Completed:
* working DAO relationship between entities items- employees added(manyToMany); merge only
* working DAO relationship between entities employees - phoneNumbers added(oneToMany)

6/28/2021 ~ 1 hours
Tasks Completed:
* form for newItem added

6/29/2021 ~ 1 hours
Tasks Completed:
* form for newItem updated(css/js)
* form for location information added

6/29/2021 ~ 1.5 hours
Tasks Completed:
* new item, including info on lost and location, can be added via view(view connected to model+controller)

7/1/2021 ~ 1.5 hours
Tasks Completed:
* view for all items added


7/1/2021
Tasks Completed:
* add view for individual item includes lostInfo,appraiseInfo,locationInfo (item.jsp)


7/2/2021 - 7/4/2021
Tasks Completed:
* working on updating item entity from view (setup for merging item objects for update operation)
    * handling gen info
    * handling lost info
    * handling locations list info
  
7/5/2021
Tasks Completed:
* update item via view is working well 
    * fixed bug with losing dates + empItem set when item updated


7/6/2021 - 7/7/2021
Tasks Completed:
* bugfix(bruteforced) with duplicate entities when displaying all
* added functionality: adding new location to already existing item via update
* added functionality: adding new employee including phone number
* added functionality: displaying all employees


7/10/2021 ~ 1.30 hours
Tasks Completed:
* added functionality: editing  phone number(s) for already existed employee
* added functionality: adding new phone number for already existed employee
* added functionality: editing worth value for already existed item

7/12/2021 ~ 2.30 hours
Tasks Completed:
* refactored item's property isMuseumItem int -> Boolean (db processes tinyint as bool) on view
* added functionality: adding worth value to existed item (item.jsp)
* added functionality: deleting item(items.jsp)
* added functionality: deleting employee(employees.jsp)

7/14/2021
Tasks Completed:
* spring security setup(test is working)  

7/15/2021 
Tasks Completed:
* Employee - User relationship refactored. Employee.user changed from bruteforced @Transient to usual OneToOne rel
* add functionality login/signup
* updated signup. employee can add his/her work info on signup.
* fixed bugs related to spring security (csrf field) on delete item/items  

7/17/2021 
Tasks Completed:
* signup updated (fixed bug in controller)
* fixed bug on items (sec->div)
* devided functionality for users based on role(s) added  

7/19/2021
Tasks Completed:
* file upload test case is working + setup for prod version

7/21/2021
Tasks Completed:
* item has an image(optional); it's set via update or initial setup(adding new item)
* employee has an image(optional); it's set via update or initial setup

7/21/2021 - 7/25/21
Tasks Completed:
* images upload/storing process is updated. previously, images were uploaded inside web-app that caused to redeploy app to see actual changes  
     now images are stored outside of webapp; therefore, app can read them immediately after upload


7/21/2021 - 7/25/21
Tasks Completed:
* images upload/storing process is updated. previously, images were uploaded inside web-app that caused to redeploy app to see actual changes  
  now images are stored outside of webapp; therefore, app can read them immediately after upload


7/28/2021 
Tasks Completed:
* adding functionality: app can generate report(text) on an average items value per each room. dao only

7/29/2021
Tasks Completed:
* adding functionality: app can generate report(text) on an current items on display(s)
* adding functionality: app can generate report(text) on total days item(s) have been in museum


8/2/2021
Tasks Completed:
* setup for generating reports on view/reads sqlQuery(ies) from resources method added
* output data displayed in tables on view

8/3/2021
Tasks Completed:
* final report piece added: setting dateDamaged for item(s) that were in specified input room in specified input date 

8/4/2021
Tasks Completed:
* output messages for addEmployee/addItem/generating reports

8/4/2021 -8/5/2021
Tasks Completed:
* output messages when crud operation launched

8/6/2021
Tasks Completed:
* controller + dao refactored. most business logic went to GeneralService or EntityUtils






    


