---
name: hub-os-esquadrao-qualidade
description: >-
  Use this skill when auditing source code, inspecting prompt security, verifying Supabase RLS policies,
  validating LGPD/privacy compliance, or sanitizing test logs before deployment.
---

# Skill Esquadrão de Qualidade (QA & Compliance)

## 🎯 Propósito
Audita com rigor técnico e de segurança todos os artefatos gerados no Hub OS — incluindo código-fonte, system prompts, regras de banco de dados e fluxos de usuário — antes de qualquer liberação para produção ou entrega ao cliente. Garante o **Selo de Aprovação Hub OS**.

---

## 📥 Entradas (Inputs)
* Código-fonte, componentes React, scripts Python e schemas SQL.
* System Prompts elaborados para IAs.
* Documentos de PRD/BRD e relatórios de execução.
* Logs brutos de testes manuais e integrações.

---

## 📤 Saídas (Outputs)
* **Relatório de Auditoria de QA**: Lista de itens aprovados, vulnerabilidades encontradas e correções obrigatórias.
* **Dossiê de Testes de Segurança & Conformidade**: Validação de RLS, zero hardcoding e LGPD.
* **Logs Higienizados**: Logs e traces livres de credenciais ou PIIs.
* **Selo de Qualidade Hub OS**: Parecer final (Aprovado / Requer Ajustes).

---

## 🔍 Checklist de Auditoria Mandatória

### 1. Segurança & Credenciais (Zero Hardcoding)
- [ ] Nenhuma chave de API, segredo, senha ou token está embutido no código.
- [ ] Variáveis de ambiente configuradas e documentadas em `.env.example`.

### 2. Banco de Dados & RLS (Supabase)
- [ ] Todas as tabelas têm `ENABLE ROW LEVEL SECURITY`.
- [ ] Políticas cobrem cenários de leitura, inserção, atualização e deleção indevida entre usuários/tenants.

### 3. IAs & Prompts
- [ ] Blindagem contra prompt injection implementada.
- [ ] Fallbacks e limites claros de escopo estabelecidos.
- [ ] Nenhuma exposição de dados confidenciais do negócio no system prompt.

### 4. Frontend & Acessibilidade
- [ ] Design mobile-first responsivo e testado em viewports reduzidos.
- [ ] Hierarquia visual coerente e ausência de travamentos ou memory leaks.

---

## 🛡️ Contexto de Segurança & RBAC
* Acesso exclusivo para leitura e auditoria. Não altera bancos de produção diretamente.
