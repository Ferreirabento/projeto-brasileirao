# 🏆 Brazilian Championship Data Analysis (2007-2024)

Este projeto é uma plataforma de exploração e análise de dados históricos do Campeonato Brasileiro (Brasileirão). O foco evoluiu de uma aplicação geral para uma análise técnica profunda utilizando **SQL** para engenharia de dados e **Power BI** para inteligência de negócio e visualização.

## 🚀 Evolução e Insights do Projeto
O projeto passou por um refinamento estratégico documentado no histórico de commits:
- **Mudança de Escopo**: O arquivo Python foi removido para focar 100% em **SQL** e **Power BI**, otimizando o tempo de entrega e a precisão das queries.
- **Engenharia de Dados**: Implementação de índices **B-Tree** para otimização de busca e uso de amostragem não probabilística para acelerar a análise da população de dados.
- **Análise Estatística**: Correção de métricas de tendência central (foco em **Moda** em vez de mediana) para entender a frequência de vitórias.
- **Case de Sucesso**: Estudo específico sobre o desempenho do Palmeiras (campeão em 2016, 2018, 2022, 2023) comparando métricas financeiras e de campo com anos de não título.

## 🛠️ Tech Stack
- **Banco de Dados**: SQL (MySQL/PostgreSQL) - Uso intensivo de `CASE WHEN`, agrupamentos e otimização de performance.
- **Business Intelligence**: Power BI - Transformação de dados (Power Query) e dashboards de performance.
- **Dataset Principal**: `dataset_campeonato_br_2007_2024_v2.csv`
- **Machine Learning (Opcional)**: Modelos de predição planejados para futuras iterações.

## 📂 Estrutura do Projeto
```markdown
brazilian-championship-project/
├── dataset/
│   ├── dataset_campeonato_br_2007_2024_v2.csv
│   └── brasileirao.session.sql     # Queries de amostragem e análise
├── power_bi/
│   └── analise_brasileirao.pbix    # Dashboard e transformações
├── backend/                        # (Em pausa - Foco atual em SQL/BI)
│   ├── server.js
│   └── database.js
├── README.md
└── package.json