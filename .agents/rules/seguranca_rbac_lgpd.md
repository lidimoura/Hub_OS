# Diretrizes de Segurança, RBAC e LGPD — Hub OS

## 🛡️ Princípios Fundamentais de Segurança (Master Professional)

1. **Zero Hardcoding**:
   * Jamais inclua chaves de API, senhas, tokens de acesso, strings de conexão ou segredos em código-fonte, templates ou documentações públicas.
   * Utilize estritamente variáveis de ambiente (`.env` ou secrets do ambiente de CI/CD / Supabase / Vercel).

2. **RBAC & Isolamento Multi-Tenant**:
   * Toda tabela criada no Supabase PostgreSQL deve ter **Row Level Security (RLS)** habilitado por padrão.
   * Implemente políticas explícitas de `SELECT`, `INSERT`, `UPDATE` e `DELETE` baseadas em `auth.uid()` ou tenant context (`organization_id`).
   * Princípio do privilégio mínimo: cada skill e serviço só acessa os dados e APIs estritamente necessários para seu propósito.

3. **Proteção de Dados & Conformidade LGPD**:
   * Tratamento seguro e anonimização de PII (Personally Identifiable Information).
   * Formulários e coletores de leads devem manter consentimento explícito e transparência de finalidade.
   * Nunca persista dados pessoais em logs de auditoria ou relatórios de QA — os dados de testes manuais devem ser sempre higienizados.

4. **Aprovação Humana Obrigatória**:
   * Deploys em produção, alterações de permissões de banco de dados, comunicações em massa via CRM e publicações em redes sociais (Instagram/LinkedIn) exigem validação e aprovação explícita da CEO Lídi Moura.
