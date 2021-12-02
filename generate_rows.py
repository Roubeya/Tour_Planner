import pymysql

connection = pymysql.connect(host="localhost",user="root",passwd="",database="Tour_Planner")
command = connection.cursor() 

for i in range(10):
    sql="insert into Test_Table(`Name`,`Password`) values('"+str(i+1)+"','password');" 
    command.execute(sql)
    connection.commit()


connection.close()

