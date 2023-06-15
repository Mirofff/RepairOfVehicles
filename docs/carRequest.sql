SELECT 
    c.id,
    vin,
    c.releaseYear,
    c.mileage,
    c.stateNumber,
    b.Body,
    br.Brand,
    co.Color,
    e.Engine
FROM
    mydb.car AS c
        JOIN
    mydb.brand AS br ON c.Brand_ID = br.id
        JOIN
    mydb.body AS b ON c.body_id = b.id
        JOIN
    mydb.color AS co ON c.Color_ID = co.id
        JOIN
    mydb.engines AS e ON c.Engine_ID = e.id;