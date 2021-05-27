import mysql.connector

def dbconnect():
	connection = mysql.connector.connect(
		host="localhost",
		user="root",
		password="Opmedkop30",
		database="IKEA_Gruppe1")
	return connection
