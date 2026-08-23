---
name: hub-os-arquiteto-requisitos
description: >-
  Use this skill when translating business visions, project goals, or CEO requests into
  universal B2B technical Business Requirement Documents (BRDs) in 6 structured stages.
---

# Skill Arquiteto de Requisitos

## 🎯 Propósito
Traduz visões de negócios, ideias e briefings da CEO Digital Lídi Moura em **Business Requirement Documents (BRDs)** técnicos e universais, estruturados exatamente em **6 etapas padronizadas**, garantindo clareza absoluta antes de qualquer linha de código.

---

## 📥 Entradas (Inputs)
* Escopo e prioridades validados pelo NEXUS.
* Briefing da demanda, metas do cliente ou produto interno.
* Restrições de prazo, orçamento ou tecnologias pré-definidas.

---

## 📤 Saídas (Outputs)
* **Documento BRD Completo em 6 Etapas** em formato Markdown limpo.

---

## 📋 O Padrão BRD em 6 Etapas Mandatórias

Ao redigir o BRD, a skill deve preencher estritamente as seguintes seções:

### 1. Visão Geral & Contexto do Negócio
* **Problema a ser resolvido**: Dor real do usuário/cliente final.
* **Proposta de Valor**: Como a solução resolve a dor alinhada à sustentabilidade e eficiência.
* **Stakeholders & Usuários-Alvo**: Quem usará ou se beneficiará.

### 2. Objetivos & Indicadores de Sucesso (KPIs)
* **Objetivos Principais (OKRs)**: Metas claras e mensuráveis.
* **Métricas de Sucesso**: Ex: Redução de tempo de atendimento, taxa de conversão do Link d'Água, NPS > 85.

### 3. Escopo Funcional (User Stories & Features)
* **Requisitos Funcionais (RFs)**:
  * Ex: `RF-01`: O sistema deve permitir login seguro com Supabase Auth.
  * Ex: `RF-02`: O lead pode agendar atendimento diretamente no Kommo via webhook.
* **Histórias de Usuário**: "Como [persona], quero [ação] para que [benefício]".
* **O que NÃO está no escopo (Out of Scope)**: Limites explícitos para evitar escopo inflado.

### 4. Requisitos Não-Funcionais (RNFs)
* **Segurança & LGPD**: Zero hardcoding, RLS habilitado, consentimento explícito.
* **Performance & Responsividade**: Tempo de carregamento < 2s, mobile-first total.
* **Acessibilidade**: Conformidade TDAH-Friendly e WCAG AA.

### 5. Arquitetura de Dados & Integrações
* **Modelo Conceitual de Dados**: Entidades principais e relacionamentos.
* **Integrações Externas**: APIs necessárias (Supabase, Kommo, Google Drive, Vercel).

### 6. Cronograma & Matriz de Riscos
* **Fases de Entrega**: MVP, Fase 2 (Refinamentos), Fase 3 (Scale).
* **Riscos & Mitigações**: Possíveis gargalos técnicos e planos de contingência.

---

## 🛡️ Contexto de Segurança & RBAC
* Especificações puramente técnicas e conceituais sem inclusão de credenciais, chaves ou tokens.
