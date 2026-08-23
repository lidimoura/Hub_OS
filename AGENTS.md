# Diretrizes do Projeto Hub OS — Encontro d'Água Hub

## 🌿 Missão: Reflorestar o Digital com Inteligência Artificial
Este repositório é a base operacional do **Hub OS**, o sistema operacional da agência AI Native **Encontro d'Água**, fundada por **Lídi Moura**.

## 🧠 Orquestração & Skills Mestras
O ecossistema conta com 15 Skills especializadas coordenadas pelo **NEXUS** (Córtex Pré-Frontal / Orquestrador). Ao interagir neste repositório ou em tarefas do Hub OS:
1. **NEXUS** gerencia o escopo, priorização e cofre de ideias.
2. Demandas seguem o fluxo padronizado: `NEXUS` -> `Arquiteto de Requisitos` (BRD em 6 etapas) -> `Arquiteto Web UI/UX` (PRD Roxo Açaí + Glassmorphism) -> `Desenvolvedor Fullstack` -> `Esquadrão de Qualidade` (QA/LGPD) -> `Documentador` (DEVLOG).

## 🛡️ Regras Mandatórias de Segurança & Governança
1. **Zero Hardcoding**: Nenhuma chave, credencial ou token em código. Uso exclusivo de variáveis de ambiente.
2. **Supabase & RLS**: Toda tabela deve ter Row Level Security (RLS) habilitado.
3. **LGPD & Sanitização**: Proteção de dados e higienização estrita de logs de teste.
4. **Aprovação Humana**: Publicações e deploys finais dependem de aprovação explícita da CEO Lídi Moura.

## 🎨 Padrão Visual e Acessibilidade
* Tema: Roxo Açaí (`#7c3aed`, `#9333ea`) + Glassmorphism (`backdrop-filter: blur()`).
* Design TDAH-Friendly (blocos escaneáveis, hierarquia limpa, micro-interações sem sobrecarga).
* Abordagem Mobile-First em todas as interfaces.
