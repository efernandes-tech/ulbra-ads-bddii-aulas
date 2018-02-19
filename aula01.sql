-- Exercícios de Revisão:

-- 1)

-- Cria tabelas.

CREATE TABLE TbGenero (
    PkCodGen INT NOT NULL,
    NomeGen VARCHAR(20) NOT NULL
);

CREATE TABLE TbFilme (
    PkCodFilme INT NOT NULL,
    Titulo VARCHAR(30) NOT NULL,
    FkCodGen INT NOT NULL,
    FkCodClass INT NOT NULL
);

CREATE TABLE TbClassificacao (
    PkCodClass INT NOT NULL,
    NomeClass VARCHAR(20) NOT NULL,
    ValorDiaria NUMBER NOT NULL
);

CREATE TABLE TbRelFilmeLoc (
    PkCodRel INT NOT NULL,
    FkCodFilme INT NOT NULL,
    FkCodLoc INT NOT NULL
);

CREATE TABLE TbLocacao (
    PkCodLoc INT NOT NULL,
    DataLoc DATE NOT NULL,
    FkCodCli INT NOT NULL
);

CREATE TABLE TbCliente (
    PkCodCli INT NOT NULL,
    NomeCli VARCHAR(30) NOT NULL,
    EndCli VARCHAR(30) NOT NULL,
    CidadeCli VARCHAR(30) NOT NULL,
    UfCli VARCHAR(2) NOT NULL
);

-- Cria chaves primárias.

ALTER TABLE TbGenero ADD CONSTRAINT TbGeneroPk PRIMARY KEY(PkCodGen);
ALTER TABLE TbFilme ADD CONSTRAINT TbFilmePk PRIMARY KEY(PkCodFilme);
ALTER TABLE TbClassificacao ADD CONSTRAINT TbClassificacaoPk
    PRIMARY KEY(PkCodClass);
ALTER TABLE TbRelFilmeLoc ADD CONSTRAINT TbRelFilmeLocPk PRIMARY KEY(PkCodRel);
ALTER TABLE TbLocacao ADD CONSTRAINT TbLocacaoPk PRIMARY KEY(PkCodLoc);
ALTER TABLE TbCliente ADD CONSTRAINT TbClientePk PRIMARY KEY(PkCodCli);

-- Cria chaves estrangeiras.

ALTER TABLE TbFilme ADD CONSTRAINT TbFilme_FkCodGen FOREIGN KEY(FkCodGen)
    REFERENCES TbGenero (PkCodGen);
ALTER TABLE TbFilme ADD CONSTRAINT TbFilme_FkCodClass FOREIGN KEY(FkCodClass)
    REFERENCES TbClassificacao (PkCodClass);

ALTER TABLE TbRelFilmeLoc ADD CONSTRAINT TbRelFilmeLoc_FkCodFilme
    FOREIGN KEY(FkCodFilme) REFERENCES TbFilme (PkCodFilme);
ALTER TABLE TbRelFilmeLoc ADD CONSTRAINT TbRelFilmeLoc_FkCodLoc
    FOREIGN KEY(FkCodLoc) REFERENCES TbLocacao (PkCodLoc);

ALTER TABLE TbLocacao ADD CONSTRAINT TbLocacao_FkCodCli
    FOREIGN KEY(FkCodCli) REFERENCES TbCliente (PkCodCli);
