CREATE TABLE IF NOT EXISTS categorias (
	id	INTEGER NOT NULL,
	nome	TEXT NOT NULL,
	PRIMARY KEY(id AUTOINCREMENT)
 );
 
 CREATE TABLE IF NOT EXISTS produtos (
	id	INTEGER NOT NULL,
	nome	TEXT NOT NULL,
	descricao	TEXT,
	preco	REAL NOT NULL,
	categoria_id	INTEGER,
	PRIMARY KEY(id AUTOINCREMENT),
	FOREIGN KEY(categoria_id) REFERENCES categorias(id)
);

CREATE TABLE IF NOT EXISTS estoque (
	id	INTEGER NOT NULL,
	quantidade	INTEGER NOT NULL,
	produto_id	INTEGER,
	FOREIGN KEY(produto_id) REFERENCES produtos(id),
	PRIMARY KEY(id AUTOINCREMENT)
);