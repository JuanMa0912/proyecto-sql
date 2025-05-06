# 📊 Proyecto SQL – Reportes y Consultas

Este repositorio contiene scripts SQL desarrollados para la consulta y análisis de datos operativos relacionados con documentos tipo factura, específicamente en el rango de enero a junio de 2024.

## 📁 Estructura
/proyecto-sql/
│
├── scripts/
│ └── conteo_facturas.sql # Consulta de facturas por lapso y tipo de documento
└── README.md # Descripción general del proyecto y su uso


## 📜 Script: `conteo_facturas.sql`

Este script realiza una consulta sobre la tabla `cmmovimiento_pdv` para contar los documentos tipo factura (`id_tipdoc_fc LIKE 'F%'`) agrupados por fecha, documento, consecutivo y centro de operación.

### 🎯 Objetivo

Obtener el total de documentos tipo factura emitidos entre los meses de **enero a junio de 2024**, clasificados por diferentes atributos clave para facilitar reportes mensuales.

### 🔍 Descripción de columnas seleccionadas

- `lapso_doc`: Periodo en formato `YYYYMM` (ej: `202401`)
- `id_co`: Centro de operación
- `id_tipdoc_fc`: Tipo de documento (filtrando por los que inician con `F`)
- `fecha_dcto`: Fecha del documento
- `documento_docfc`: Código del documento
- `consecutivo_doc`: Número consecutivo del documento
- `total_documentos`: Total de registros agrupados

### 📌 Filtros aplicados

```sql
lapso_doc BETWEEN '202401' AND '202406'
AND id_tipdoc_fc LIKE 'F%'

💡  Si deseamos filtrar por un centro de operación específico, puedes descomentar la siguiente linea:
-- AND id_co = '001'
✅ Requisitos
Este script está diseñado para ejecutarse en entornos con acceso a la base de datos que contiene la tabla cmmovimiento_pdv. Se trabaja en base de datos postgreSQL y se utiliza pgAdmin 4
