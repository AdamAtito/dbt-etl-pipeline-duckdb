import pandas as pd
import requests
import duckdb

##PRODUCTS

url_products = 'https://api.escuelajs.co/api/v1/products'
response = requests.get(url_products)

if response.status_code != 200:
    raise ValueError('Cannot reach API')

#print(response.json()[0])
ids, titles, prices, category_id = [], [], [], []
data = response.json()
for i in data:
    ids.append(i['id'])
    titles.append(i['title'])
    prices.append(i['price'])
    category_id.append(i['category']['id'])

df = pd.DataFrame({'product_id' : ids, 'product_title' : titles, 'product_price' : prices, 'category_id' : category_id})

conn = duckdb.connect("dev.duckdb")

conn.register('products_df', df)

conn.execute("CREATE OR REPLACE TABLE products AS SELECT * FROM products_df")

conn.close()

##CATEGORIES

url_categories = 'https://api.escuelajs.co/api/v1/categories'

response = requests.get(url_categories)

ids_ca, name_ca, created_at, updated_at = [], [], [], [] 

data = response.json()
for i in data:
    ids_ca.append(i["id"])
    name_ca.append(i["name"])
    created_at.append(i["creationAt"])
    updated_at.append(i["updatedAt"])

df_category = pd.DataFrame({"id_category" : ids_ca, "name_of_category" : name_ca, "createdAt" : created_at, "updatedAt" : updated_at})

conn = duckdb.connect("dev.duckdb")
conn.register('category_df', df_category)

conn.execute("CREATE OR REPLACE TABLE category AS SELECT * FROM category_df")
conn.close()

##USERS

url_users = 'https://api.escuelajs.co/api/v1/users'
response = requests.get(url_users)
ids_users, email, password, name_users, role, created_at_user =  [], [], [], [], [], []
data = response.json()
for i in data:
    ids_users.append(i['id'])
    email.append(i['email'])
    password.append(i['password'])
    name_users.append(i['name'])
    role.append(i['role'])
    created_at_user.append(i['creationAt'])

users_df = pd.DataFrame({"id_user" : ids_users, "name_user" : name_users, "email" : email, "password" : password, "role" : role, "created_at" : created_at_user})
users_df.dropna()

conn = duckdb.connect('dev.duckdb')
conn.register('users_df', users_df)

conn.execute('CREATE OR REPLACE TABLE users AS SELECT * FROM users_df')
conn.close()