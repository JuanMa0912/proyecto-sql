-- Consulta para contar documentos tipo factura (que comienzan con 'F')
-- en el rango de lapso entre enero y junio de 2024

SELECT
  lapso_doc,               -- Periodo en formato YYYYMM
  id_co,                   -- Centro de operación
  id_tipdoc_fc,            -- Tipo de documento (se filtran los que inician con 'F')
  fecha_dcto,              -- Fecha del documento
  documento_docfc,         -- Código del documento
  consecutivo_doc,         -- Número consecutivo
  COUNT(*) AS total_documentos -- Total de documentos agrupados
FROM cmmovimiento_pdv
WHERE
  lapso_doc BETWEEN '202401' AND '202406'
  AND id_tipdoc_fc LIKE 'F%'
  -- AND id_co = '001' -- Descomenta esta línea para filtrar solo por un centro de operación específico
GROUP BY
  lapso_doc,
  id_co,
  id_tipdoc_fc,
  fecha_dcto,
  documento_docfc,
  consecutivo_doc;
