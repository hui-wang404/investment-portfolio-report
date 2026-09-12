{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Investment Portfolio Report\
\
SELECT\
    i.investment_id,\
    f.fund_name,\
    c.company_name,\
    s.sector_name,\
    c.country,\
    i.investment_date,\
    i.invested_capital,\
    i.current_nav,\
    i.realized_proceeds,\
    i.status\
FROM investments i\
JOIN funds f\
    ON i.fund_id = f.fund_id\
JOIN companies c\
    ON i.company_id = c.company_id\
JOIN sectors s\
    ON c.sector_id = s.sector_id\
ORDER BY i.invested_capital DESC;}