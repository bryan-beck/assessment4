log_file = open("um-server-01.txt")# opens the resource txt file


def sales_reports(log_file):#creates an object and names it
    for line in log_file:# for loop through the log file
        line = line.rstrip()#gathers info from the log file and compiles it
        day = line[0:2] #defines the day line
        if day == "mon":#if statement to check is the day is tuesday
            print(line)#prints the line if its tuesday


sales_reports(log_file)
