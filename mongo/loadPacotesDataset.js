// use db
// db.createCollection("pacotes")


db.pacotes.drop();
db.pacotes.insertMany([
    {"título": "Recife Assombrado",
    "país": "Brasil",
    "cidade": "Recife",
    "diárias": 3,
    "pontos": ["Cruz do Patrão", "Casario da Rua da Aurora", "Teatro de Santa Isabel", "Cemitério do Santo Amaro", "Sítio da Trindade"],
    "hotel": {
            "nome": "Hotel Manibu",
            "bairro": "Boa Viagem",
            "cafe": "incluso",
            "apartamento": "executivo",
            "estrelas": 3},
    "guia": "Matheus Belfort"},

])