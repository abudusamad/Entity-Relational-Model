
Introduction:
Entity-Relationship (ER) models are a popular graphical representation used to design and conceptualise database schemas. They help us identify entities, their attributes, and the relationships between them. ER models are based on the principles of entities, attributes, and relationships, allowing us to understand the structure and behaviour of a database.


Key Concepts:
Entity: An entity represents a real-world object, concept, or thing that we want to store information about. It can be a person, place, event, or any other entity in our modelling domain. Entities are represented as rectangles in an ER diagram.

Attribute: An attribute is a characteristic or property of an entity. It provides additional details or information about the entity. Attributes are represented as ovals or ellipses in an ER diagram and are associated with the respective entity.

Relationship: A relationship describes an association or connection between entities. It represents how entities are related to each other. Relationships can be one-to-one, one-to-many, or many-to-many. They are represented as lines in an ER diagram and are labelled to indicate the nature of the relationship.

Instruction:
Below are two scenarios, numbered 1 to 2. You are to attempt only one question. If the 5th digit of your index number is an odd number, attempt scenario One. For all others, attempt scenario Two. For any attempted scenario, construct an ER diagram to represent the described scenario using either Draw.io or PG Admin’s ER design tool. When done generate/write out the most appropriate script in SQL for realising your schema.

Be sure to indicate all key and cardinality constraints and any logical assumptions you make.

Scenario One: Online Marketplace

A company is building an online marketplace where users can buy and sell products. The company wants to create a database to manage various aspects of the marketplace. Consider the following requirements:

Users: Each user has a unique ID, username, email, password, and registration date. Users can be buyers, sellers, or both.

Products: Each product has a unique ID, name, description, price, and availability status. Products belong to specific categories, such as electronics, clothing, or home appliances.

Categories: Each category has a unique ID and a name. Products are assigned to one or more categories, and each category can have multiple products.

Orders: Each order has a unique ID, order date, total amount, and status. Orders are placed by buyers for one or more products. Each order is associated with one buyer and can have multiple products.

Sellers: Each seller has a unique ID, name, contact information, and rating. Sellers can have multiple products listed for sale, and each product is associated with one seller.

Reviews: Buyers can provide reviews for products they have purchased. Each review has a unique ID, rating, description, and date. Reviews are associated with one buyer and one product.

Payments: Each order requires a payment transaction. Each payment has a unique ID, amount, payment method, and date. Payments are associated with one order.

Shipping Addresses: Buyers can have multiple shipping addresses associated with their account. Each shipping address has a unique ID, address details, and a reference to the buyer.


Scenario Two: Hospital Management System

A hospital wants to create a database system to manage various aspects of its operations. Consider the following requirements:

Patients: Each patient has a unique ID, name, date of birth, gender, contact information, and medical history. Patients can be admitted multiple times.

Doctors: Each doctor has a unique ID, name, specialization, contact information, and years of experience. Doctors can have multiple specialties.

Appointments: Each appointment has a unique ID, appointment date and time, and a reference to the patient and the doctor involved. Each appointment is associated with one patient and one doctor.

Departments: Each department has a unique ID, name, and description. Departments have multiple doctors associated with them.

Medications: Each medication has a unique ID, name, dosage, and usage instructions. Medications can be prescribed to multiple patients.

Prescriptions: Each prescription has a unique ID, prescription date, and a reference to the patient and the medication prescribed. Each prescription is associated with one patient and one medication.

Tests: Each test has a unique ID, name, description, and reference ranges. Tests can be ordered for multiple patients.

Test Results: Each test result has a unique ID, result value, result date, and a reference to the test and the patient. Each test result is associated with one patient and one test.

Ward/Rooms: Each ward/room has a unique ID, room number, ward name, and capacity. Multiple patients can be admitted to a ward/room.
![Screenshot (2)](https://github.com/abudusamad/Entity-Relational-Model/assets/82134715/f31498bb-e1b4-4bd7-bdd5-3cbab8380e71)

