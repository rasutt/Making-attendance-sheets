# Export the data from the canvas gradebook and read it in here

df = read.csv(
  "C:/Users/rasut/Downloads/2022-02-21T1414_Marks-2022_S1C_DATA1001_ND.csv"
)

# Find the name of the lab you're teaching
names(df)
unique(df$Section)

# Find the names and IDs of students in that lab
lab_1 = df[
  df$Section == "(activity) 1901-CC/LAB/02_Tues9, (auto) 2022_S1C_DATA1901_ND_all, (loc) 1901_CC, DATA1001 Foundations of Data Science, and On campus", 
  1:2
]

# Check you've got them all
nrow(lab_1)
head(lab_1)
tail(lab_1)

# Export them to a .csv file
write.csv(lab_1, "DATA1901_Lab_2.csv", row.names = F)

# Open the file in excel, add columns for the weeks, and print it.