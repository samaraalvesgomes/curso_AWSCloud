-- Criar tabela "autores"
CREATE TABLE IF NOT EXISTS autores (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    nacionalidade TEXT
);

-- Criar tabela "livros"
CREATE TABLE IF NOT EXISTS livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    ano_publicacao INTEGER,
    autor_id INTEGER,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

-- Inserir dados na tabela "autores"
INSERT INTO autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileiro'),
('George Orwell', 'Inglês'),
('Jane Austen', 'Inglês');

-- Inserir dados na tabela "livros"
INSERT INTO livros (titulo, ano_publicacao, autor_id) VALUES
('Dom Casmurro', 1899, 1),
('1984', 1949, 2),
('Orgulho e Preconceito', 1813, 3);

-- Consulta utilizando JOIN
SELECT livros.titulo, autores.nome AS autor
FROM livros
JOIN autores ON livros.autor_id = autores.id;

