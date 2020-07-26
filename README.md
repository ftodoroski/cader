# Cader

## About
The goal of this project was to create website where landlords can keep track of their properties and their tenants. 

## Tech Stack 
- JavaScript 
- Ruby
- Rails 
    - Active Storage 
- Redux
- Semantic UI
- Custom CSS
- Google Maps API

## Features 
Landlords can:
- Log in/Sign up
- Keep track of properties using the Google Maps API
- View statistics of each property 
- Add a new tenant on the main dashbard to a property
    - dynamically update metrics 
- Sort properties by highest rental income or lowest rentail income 
- View individual property details 
    - View the location of the property 
    - Metrics 
    - View properties tenants
    - Add/Remove Tenants 
- View all the unoccipied units of all the properties 
    - Add/Remove tenants

## Features to be added
- Dark mode
- Recover account 
- Create a profile for the owner to update personal info
- Create personal info for tenants/profile
- owner can make a comment about tenant 


### LogIn Page
Basic Log in Features with authentication and authorization
![Log in](/readmeImages/login.png?raw=true "Log in")

&nbsp


### Properties DashBoard 
View all of your properties with metrics and on the Google Maps API
![Properties](/readmeImages/dashboard.png?raw=true "Dashboard")

&nbsp


### Add a Tenant  
Checks if the property has available units to rent out with a nice UI design 
![Properties](/readmeImages/addT.png?raw=true "add t")

&nbsp


### Property Details   
Closer look at the property with metrics such as number of units occupied, monthly rent, mortgage and more
![Properties](/readmeImages/propdetail.png?raw=true "propDetail")

&nbsp


### Individual Property with Tenants  
We have all the units of that building which are occupied or unoccupied
![Properties](/readmeImages/propdetail2.png?raw=true "propDetail")

&nbsp


### View all Unoccupied Units + Add Tenants
Table representing all of the units that are unoccupied of all the properties
![Properties](/readmeImages/unoccupied.png?raw=true "propDetail")