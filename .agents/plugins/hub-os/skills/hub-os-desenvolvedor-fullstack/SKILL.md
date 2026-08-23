---
name: hub-os-desenvolvedor-fullstack
description: >-
  Use this skill when developing frontend web applications (React, Vite, Tailwind CSS),
  backend data pipelines (Python, ETL/EDA, Data Science), database schemas (Supabase PostgreSQL, RLS policies),
  or deploying to Vercel/Cloud infrastructure.
---

# Skill Desenvolvedor Fullstack

## 🎯 Propósito
Traduz especificações técnicas, PRDs e BRDs em código limpo, moderno, performático e seguro. Domina a stack prioritária do Hub OS: **React + Vite + Tailwind CSS** no frontend, **Python** para análise de dados e automação, **Supabase PostgreSQL** para persistência e autenticação, e **Vercel** para deploy ágil.

---

## 📥 Entradas (Inputs)
* PRD do Arquiteto Web / BRD do Arquiteto de Requisitos.
* Modelos de banco de dados e requisitos de API.
* Relatórios e apontamentos do Esquadrão de Qualidade (QA).

---

## 📤 Saídas (Outputs)
* Código-fonte completo, modular e documentado, dividido por arquivo.
* Schemas SQL com políticas RLS completas e tabelas estruturadas.
* Scripts Python de automação, ETL ou análise exploratória de dados (EDA).
* Configurações de build e deploy (Vite, Vercel, Tailwind).

---

## 🛠️ Diretrizes de Implementação por Camada

### 1. Frontend (React + Vite + Tailwind CSS)
* Estrutura de pastas limpa: `src/components/`, `src/hooks/`, `src/pages/`, `src/services/`, `src/types/`.
* Componentes funcionais puros, reutilizáveis e desacoplados.
* Estilização fiel à paleta Roxo Açaí + Glassmorphism e responsividade total mobile-first.
* Tratamento de estados de carregamento (skeletons/spinners) e tratamento de erros visíveis.

### 2. Banco de Dados (Supabase PostgreSQL & RLS)
* Toda tabela deve conter `id UUID PRIMARY KEY DEFAULT gen_random_uuid()`, `created_at` e `updated_at`.
* **RLS Mandatório**:
  ```sql
  ALTER TABLE public.minha_tabela ENABLE ROW LEVEL SECURITY;
  
  CREATE POLICY "Usuários acessam apenas seus próprios registros"
    ON public.minha_tabela
    FOR ALL
    USING (auth.uid() = user_id);
  ```

### 3. Backend & Data Science (Python)
* Scripts organizados com tipagem estática (Type Hints), `docstrings` e tratamento de exceções.
* Análise de dados com Pandas, NumPy e visualização com gráficos limpos.

---

## 🛡️ Contexto de Segurança & RBAC
* **Zero Hardcoding**: Nenhuma credencial no código; leitura estrita via `process.env` / `import.meta.env` / `os.environ`.
* Sanitização de entradas do usuário para prevenir SQL Injection e XSS.
