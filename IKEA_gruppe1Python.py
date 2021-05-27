#Program created by Sebastian Larsen
#date = 17/05-2021


import IKEA_Gruppe1Connect as thisDatabase
from beautifultable import BeautifulTable
import time

#connect to database
thisConn = thisDatabase.dbconnect()

#This function creates a beautifultable from the data reterived from IKEA DATABASE
def prettyprint(result):
	table = BeautifulTable()
	table.column_header = ["Costumer_ID", "Email", "Reg_date", "First_name", "Last_name", "Phone_number", "Password", "Country", "Default_shipping_Addr"]
	for row in result:
		table.rows.append(row)
	print(table)

mycursor = thisConn.cursor()
mycursor.execute("select * From Customer")
myRecords = mycursor.fetchall()



# -----------------------------------------------
#Here the program ask user to add a new customer

def Create_new_user():
	Email = input("Insert Email: \n")
	First_name = input("Insert First name: \n")
	Last_name = input("Insert Last name: \n")
	Phone_number = int(input("Insert Phone_number: \n"))
	Country = input("Insert Country: \n")
	Password = input("Insert password: \n")

	
	
	sql = " INSERT INTO Customer(Email, First_name, Last_name, Phone_number, Country, Password) VALUES (%s,%s,%s,%s,%s,%s)"
	val = (Email, First_name, Last_name, Phone_number, Country, Password)

	mycursor = thisConn.cursor()
	mycursor.execute(sql, val)
	thisConn.commit()
	print("User succesfully created")



#-----------------------------------------------
#Here the program show the latest added user created

def Latest_added(result):
	sql = """
	SELECT 
    *
    FROM
    Customer
    ORDER BY Customer_ID DESC
    LIMIT 1
	"""

	mycursor = thisConn.cursor()
	mycursor.execute(sql)
	myRecords = mycursor.fetchall()


	table = BeautifulTable()				
	table.columns.header = ["Customer info"]     
	table.rows.append(myRecords)

	print(table)
	

#--------------------------------------------------
#Creating a variable called "title", that combined with the fuction below "hello" makes the program smooth
title = "\t\t\tMENU\t\t\t"

def hello():
    print("\033[H\033[J") 
    print(title)
    print("\n")


def main_menu():
	hello()
	options = [
		"Print Customer table from IKEA DATABASE",
		"Create new user",
		"show latest user created",
		"Exit Program\n"
		]
	print("Enter a number to select an option:\n")
	for d, options in enumerate(options):
		print("[" + str(d + 1) + "] " + options)

	choice = int(input("Select an option [1] - [4]: "))


	if choice in range(1,7):
		if choice == 1:
			time.sleep(1)
			prettyprint(myRecords)
			time.sleep(5)
			main_menu()
			

		elif choice == 2:
			time.sleep(1)
			Create_new_user()
			time.sleep(4)
			main_menu()


		elif choice == 3:
			time.sleep(1)
			Latest_added(myRecords)
			time.sleep(5)
			main_menu()

		elif choice == 4:
			hello()
			print("\n")
			print("Quitting.....")
			time.sleep(1.5)
			exit()
	else:
		print("I dont know this action..")
		time.sleep(2)
		main_menu()

#her bliver funktionen main_menu() initialiseret
main_menu()