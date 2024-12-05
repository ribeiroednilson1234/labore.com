ALTER TABLE Produtos ADD/-- Drop the table 'Produtos' in schema 'Taverna_Labore'
IF EXISTS ( Mesa, Cadeira, Tapete, Abajour
    SELECT Mesa, Cadeira, Tapete, Abajour  AS  Mesa_branca, Cadeira_branca, Tapete_especial, Abajour_especial
        FROM sys.tables
        JOIN sys.schemas
            ON sys.tables.schema_id = sys.schemas.schema_id
    WHERE sys.schemas.name = N'Taverna_Labore'
        AND sys.tables.name = N'Produtos'
        order by * asc 
)
