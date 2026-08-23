# Padrões de Design e Código — Hub OS

## 🎨 Identidade Visual e Experiência do Usuário (UI/UX)
* **Paleta & Tema**: Roxo Açaí (tons primários e acentos profundos), fundos elegantes em Dark Mode / Glassmorphism refinado, degradês suaves e bordas translúcidas sutis.
* **Acessibilidade TDAH-Friendly**:
  * Hierarquia visual limpa e escaneável.
  * Blocos de informação concisos com espaçamento generoso.
  * Micro-animações suaves para dar feedback tátil sem causar sobrecarga cognitiva.
* **Design Mobile-First**: Interfaces fluidas e responsivas, otimizadas prioritariamente para smartphones e tablets (especialmente em Smart Cards como o Link d'Água e Dashboards de Pesquisa de Satisfação).

## 💻 Padrões Técnicos e Stack
* **Frontend**: React com Vite, TypeScript/JavaScript moderno e Tailwind CSS estruturado.
* **Backend & Dados**: Supabase PostgreSQL, Python para pipelines de dados, ETL/EDA, automações e integrações com Kommo / Provadágua CRM.
* **Qualidade de Código**:
  * Código modular, desacoplado e componentizado.
  * Sem código "morto" ou arquivos de debug esquecidos no repositório.
  * Tratamento consistente de erros e fallbacks amigáveis na UI.
