---
name: hub-os-prompt-lab
description: >-
  Use this skill when packaging agent capabilities and Hub OS skills into modular, configurable prompts
  ready for SaaS integration, client self-service, or the Prompt Lab section of CRMs.
---

# Skill Prompt Lab (Empacotador de Prompts Modulares)

## 🎯 Propósito
Democratiza a inteligência artificial desenvolvida no Hub OS ao empacotar os fluxos e especialidades das Skills em **prompts modulares, parametrizáveis e reutilizáveis**, permitindo que clientes e produtos SaaS utilizem as IAs de forma autônoma.

---

## 📥 Entradas (Inputs)
* Nome e especialidade da Skill a ser empacotada (ex: Storytelling de Métricas, Analisador de Sentimento).
* Parâmetros dinâmicos de entrada (ex: variáveis `{nome_cliente}`, `{meta}`, `{publico_alvo}`).
* Formato de resposta esperado (JSON, Markdown, texto para WhatsApp).

---

## 📤 Saídas (Outputs)
* **Prompt Modular Formatado**: Com placeholders padronizados e instruções de contextualização rápida.
* **Guia Simplificado de Uso**: Instruções para o usuário leigo preencher os parâmetros com sucesso.
* **Payload JSON de Integração**: Pronto para importação direta no Prompt Lab do CRM / SaaS.

---

## ⚙️ Diretrizes de Parametrização
* Use delimitadores claros como `{{variavel}}` para campos customizáveis pelo cliente.
* Inclua sempre um exemplo funcional (Few-Shot) ilustrando uma entrada e saída ideais.
