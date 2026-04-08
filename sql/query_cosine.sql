SELECT id, content, embedding <=> $1::vector AS distance
FROM document_chunks
ORDER BY embedding <=> $1::vector
LIMIT 10;