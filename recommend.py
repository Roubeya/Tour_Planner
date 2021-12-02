import sys
import pymysql
import numpy as n
import pandas as data

connection = pymysql.connect(host="localhost", user="root", passwd="", database="Tour_Planner")
command = connection.cursor()

scenic = str(sys.argv[1])
religious = str(sys.argv[2])
zoo = str(sys.argv[3])
history = str(sys.argv[4])
amuse = str(sys.argv[5])
Username = str(sys.argv[6])

mean = n.array([float(scenic),float(religious),float(zoo),float(history),float(amuse)])
mean = n.sum(mean)/5

sql="update Users_Response set `Scenic_Beauty`='"+str(scenic)+"', `Religious`='"+str(religious)+"', `Zoological_Biodiversity`='"+str(zoo)+"', `Historical`='"+str(history)+"', `Amusement`='"+str(amuse)+"', `Mean`='"+str(mean)+"' where Username='"+str(Username)+"';"
command.execute(sql)
connection.commit()

columns=["Username","Scenic_Beauty","Religious","Zoological_Biodiversity","Historical","Amusement","Mean"]

sql="select * from Users_Response;"
responses = data.read_sql(sql,connection,index_col="Username")

sql = "select * from Users_Database"
responses = responses.join(data.read_sql(sql,connection,index_col="Username")["Age"])

user = responses.loc[Username]
priority=[]
priority = (user[:5] - user["Mean"])
priority=list(priority.argsort())
priority.reverse()
for i in range(len(priority)):
    if priority[i] == 0:
        priority[i]="Scenic Beauty"
    if priority[i] == 1:
        priority[i]="Religious"
    if priority[i] == 2:
        priority[i]="Zoological Biodiversity"
    if priority[i] == 3:
        priority[i]="Historical"
    if priority[i] == 4:
        priority[i]="Amusement"

sql="select * from Places_Database;"
places = data.read_sql(sql,connection,index_col="Sl.No")

final_recommendation="ans[]="
recommend=[]
l=[]
for a in range(len(priority)):
    l.append([i for i,x in enumerate(places[priority[a]]>user["Mean"]) if x])
for i in range(len(l)):
    for x in range(len(l[i])):
        recommend.append(l[i][x])
recommend=list(set(recommend))
for i in range(len(recommend)):
    final_recommendation+=str(recommend[i]+1)+"&ans[]="

sql="update `Users_Recommendation` set Recommendation='"+final_recommendation+"' where `Username`='"+Username+"' ;";
command.execute(sql)
connection.commit()

connection.close()
