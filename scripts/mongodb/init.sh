#!/bin/bash


mongo << EOF
use $MONGO_DATABASE_NAME

db.createCollection("avis")
db.createCollection("panier")

db.avis.insertOne({"idarticle": 2, "client": "Albert" ,"note": 5, "date":ISODate("2023-12-28T12:00:00Z"), "commentaire": "La All-Pro Nitro de PUMA Hoops est vraiment une chaussure exceptionnelle pour le basketball. La technologie intégrée offre un excellent amorti, assurant un confort optimal pendant les matchs. La traction de la semelle est remarquable, offrant une adhérence exceptionnelle sur le parquet. En tant que joueur passionné, je recommande vivement ces chaussures pour leur combinaison parfaite de performance et de style."})
db.avis.insertOne({"idarticle": 2, "client": "Jean" ,"note": 4, "date":ISODate("2023-10-05T14:32:02Z"), "commentaire": "J'adore ma nouvelle paire de All-Pro Nitro. Non seulement elles offrent un soutien incroyable pendant le jeu, mais elles sont aussi incroyablement stylées. Le design sophistiqué et les détails esthétiques en font une paire que je peux porter aussi bien sur le terrain que dans la rue. Elles sont aussi très confortables, idéales pour une utilisation prolongée."})
db.avis.insertOne({"idarticle": 2, "client": "Michel" ,"note": 4, "date":ISODate("2023-09-29T20:46:29Z"), "commentaire": "La All-Pro Nitro est la définition même du mariage entre style et performance. Que vous soyez sur le terrain ou que vous les portiez simplement au quotidien, ces chaussures ont tout pour plaire. L'amorti est excellent, la stabilité est au rendez-vous, et le design est vraiment accrocheur. Une valeur sûre pour les amateurs de baskets polyvalentes."})

db.avis.insertOne({"idarticle": 3, "client": "Michelle" ,"note": 1, "date":ISODate("2023-09-20T14:10:51Z"), "commentaire": "NUL NUL NUL !"})
db.avis.insertOne({"idarticle": 3, "client": "Maeva" ,"note": 5, "date":ISODate("2023-09-21T19:40:31Z"), "commentaire": "Parfait pour moi ! Je recommande !"})
db.avis.insertOne({"idarticle": 3, "client": "Michelle" ,"note": 3, "date":ISODate("2023-10-23T09:24:32Z"), "commentaire": "Les finissions ne sont pas top mais ça suffit pour marcher tranquillement"})
EOF