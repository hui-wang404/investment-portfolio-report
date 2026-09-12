{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Data Quality Report\
\
SELECT\
    COUNT(*) AS total_records,\
\
    COUNT(*) FILTER (\
        WHERE c.company_name IS NULL\
        OR TRIM(c.company_name) = ''\
    ) AS missing_company_name,\
\
    COUNT(*) FILTER (\
        WHERE s.sector_name IS NULL\
        OR TRIM(s.sector_name) = ''\
    ) AS missing_sector,\
\
    COUNT(*) FILTER (\
        WHERE c.country IS NULL\
        OR TRIM(c.country) = ''\
    ) AS missing_country,\
\
    COUNT(*) FILTER (\
        WHERE i.invested_capital IS NULL\
    ) AS missing_invested_capital,\
\
    COUNT(*) FILTER (\
        WHERE i.current_nav IS NULL\
    ) AS missing_current_nav\
\
FROM investments i\
LEFT JOIN companies c\
    ON i.company_id = c.company_id\
LEFT JOIN sectors s\
    ON c.sector_id = s.sector_id;}