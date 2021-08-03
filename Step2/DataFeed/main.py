import pandas as pd
import sqlalchemy as db
from argparse import ArgumentParser


if __name__ == "__main__":

    parser = ArgumentParser()
    parser.add_argument('-c', '--connect', required=True, type=str, help='sql connection string')
    args = parser.parse_args()

    #engine = db.create_engine("postgresql://postgres@localhost:5432/saiks")
    #engine = db.create_engine("mysql+pymysql://root:root@localhost:3306/saiks")
    engine = db.create_engine(args.connect)

    connection = engine.connect()
    metadata = db.MetaData()

    # Create table objects
    table_restaurant = db.Table('restaurant', metadata, autoload=True, autoload_with=engine)
    table_menu = db.Table('menu', metadata, autoload=True, autoload_with=engine)
    table_cuisine = db.Table('cuisine', metadata, autoload=True, autoload_with=engine)
    table_rc = db.Table('restaurantcuisine', metadata, autoload=True, autoload_with=engine)

    # Delete table content
    query = db.delete(table_rc)
    res = connection.execute(query)
    query = db.delete(table_menu)
    res = connection.execute(query)
    query = db.delete(table_restaurant)
    res = connection.execute(query)
    query = db.delete(table_cuisine)
    res = connection.execute(query)


    # Read and format the csv files
    csv_data = pd.read_csv("../../Data/foodhub_with_menu_new_utf8.csv", delimiter=';')


    # Create restaurants
    for index, row in csv_data.iterrows():
        query = db.select([table_restaurant]).where(table_restaurant.columns.name==row['name_x'])
        res = connection.execute(query).fetchmany(1)
        if not res:
            data = [{
                'name': row['name_x'],
                'description': row['description_x'],
                'price_category': row['price_category'],
                'breakfast': row['breakfast'],
                'lunch': row['lunch'],
                'sandwiches': row['sandwiches'],
                'city': row['city'],
                'post_code': row['post_code'],
                'street': row['street'],
                'number': row['number'],
                'number_addon': row['number_addon'],
                'phone': row['phone'],
                'url': row['url'],
                'latitude': row['latitude'],
                'longitude': row['longitude'],
                'delivery_charge': row['delivery_charge'],
                'min_order': row['min_order'],
                'payment_cash': row['payment_cash'],
                'payment_card': row['payment_card'],
                'waiting_time': row['waiting_time'],
                'delivery_time': row['delivery_time'],
                'delivery_postcode': row['delivery_postcode'],
                'rating_value': row['rating_value'],
                'rating_count': row['rating_count'],
                'data_source': row['data_source']
            }]
            query = db.insert(table_restaurant)
            res = connection.execute(query, data)

    # Create cuisines
    for index, row in csv_data.iterrows():
        for cuisine in row['cuisine'].strip('[]').replace("'", "").replace(" ", "").split(","):
            query = db.select([table_cuisine]).where(table_cuisine.columns.name == cuisine)
            res = connection.execute(query).fetchmany(1)
            if not res:
                data = [{
                    'name': cuisine,
                }]
                query = db.insert(table_cuisine)
                res = connection.execute(query, data)

    for index, row in csv_data.iterrows():
        query = db.select([table_restaurant.columns.id]).where(table_restaurant.columns.name == row['name_x'])
        r_id = connection.execute(query).fetchmany(1)[0][0]

        # Create cuisine restaurant table
        for cuisine in row['cuisine'].strip('[]').replace("'", "").replace(" ", "").split(","):
            query = db.select([table_cuisine.columns.id]).where(table_cuisine.columns.name == cuisine)
            c_id = connection.execute(query).fetchmany(1)[0][0]

            query = db.select([table_rc]).where(db.and_(table_rc.columns.cuisine_id == c_id, table_rc.columns.restaurant_id == r_id))
            res = connection.execute(query).fetchmany(1)

            if not res:
                data = [{
                    'cuisine_id': c_id,
                    'restaurant_id': r_id
                }]
                query = db.insert(table_rc)
                res = connection.execute(query, data)

        # Create menu table
        data = [{
            'name': row['name_y'],
            'description': row['description_y'],
            'price': row['price'],
            'restaurant_id': r_id
        }]
        query = db.insert(table_menu)
        res = connection.execute(query, data)