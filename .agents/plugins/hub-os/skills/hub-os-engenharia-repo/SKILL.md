---
name: hub-os-engenharia-repo
description: >-
  Use this skill when inspecting git repository health, managing CI/CD deployment pipelines (GitHub Actions, Vercel),
  maintaining DEVLOGs and technical changelogs, or ensuring code repository governance.
---

# Skill Engenharia (Repositórios & Infraestrutura)

## 🎯 Propósito
Mantém a integridade, saúde, rastreabilidade e governança de todos os repositórios de código do Hub OS e de clientes (GitHub, Vercel, Supabase), garantindo automações de CI/CD robustas e manutenção contínua de documentações de desenvolvimento.

---

## 📥 Entradas (Inputs)
* URL ou caminho local de repositórios Git.
* Relatórios de build, falhas de testes de CI/CD ou logs de deployment.
* Demandas de padronização de commits, branches ou releases.

---

## 📤 Saídas (Outputs)
* Diagnóstico de Saúde do Repositório (estrutura de pastas, dependências desatualizadas, branches órfãs).
* Configurações de CI/CD (`.github/workflows/`).
* Atualização de `DEVLOG.md`, `CHANGELOG.md` e versões de pacotes.

---

## 🛠️ Padrões de Governança de Código
* Padrão de Conventional Commits (`feat:`, `fix:`, `docs:`, `style:`, `refactor:`, `test:`, `chore:`).
* Branches protegidas: `main` sempre estável; desenvolvimento em feature branches.
* Deploy contínuo automatizado acionado após aprovação do pipeline.
