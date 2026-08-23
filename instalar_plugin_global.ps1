<#
.SYNOPSIS
    Script de Instalação Global do Plugin Hub OS para Antigravity IDE / CLI.
.DESCRIPTION
    Copia o ecossistema de 15 Skills Mestras e regras de governança do Hub OS
    para a pasta de configuração global (~/.gemini/config/plugins/hub-os).
    Use este script em qualquer novo computador (ex: notebook) para ativar o
    Hub OS em todos os projetos da máquina com 1 comando.
.EXAMPLE
    .\instalar_plugin_global.ps1
#>

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "🌿 ========================================================" -ForegroundColor Cyan
Write-Host "   Hub OS — Encontro d'Água Hub (Instalador Global)" -ForegroundColor Cyan
Write-Host "   Missão: Reflorestar o Digital com Inteligência Artificial" -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SourcePluginPath = Join-Path $ScriptDir ".agents\plugins\hub-os"
$GlobalPluginsDir = Join-Path $HOME ".gemini\config\plugins"
$DestPluginPath = Join-Path $GlobalPluginsDir "hub-os"

# 1. Verificar se os arquivos fonte existem no repositório
if (-not (Test-Path $SourcePluginPath)) {
    Write-Host "❌ Erro: Diretório fonte '$SourcePluginPath' não encontrado!" -ForegroundColor Red
    Write-Host "   Certifique-se de executar o script na raiz do repositório Hub_OS." -ForegroundColor Yellow
    exit 1
}

# 2. Criar diretório global de plugins se não existir
if (-not (Test-Path $GlobalPluginsDir)) {
    Write-Host "📁 Criando pasta de plugins global: $GlobalPluginsDir" -ForegroundColor DarkGray
    New-Item -Path $GlobalPluginsDir -ItemType Directory -Force | Out-Null
}

# 3. Copiar/Sincronizar arquivos do plugin
Write-Host "📦 Instalando plugin Hub OS em: $DestPluginPath..." -ForegroundColor Yellow
Copy-Item -Path $SourcePluginPath -Destination $DestPluginPath -Recurse -Force

# 4. Validar instalação
$ManifestFile = Join-Path $DestPluginPath "plugin.json"
$SkillsDir = Join-Path $DestPluginPath "skills"

if ((Test-Path $ManifestFile) -and (Test-Path $SkillsDir)) {
    $SkillsCount = (Get-ChildItem -Path $SkillsDir -Directory).Count
    Write-Host ""
    Write-Host "✨ SUCESSO! O Plugin Hub OS foi instalado globalmente." -ForegroundColor Green
    Write-Host "   - Manifesto: plugin.json validado" -ForegroundColor DarkGreen
    Write-Host "   - Skills Instaladas: $SkillsCount de 15 Skills Mestras ativas" -ForegroundColor DarkGreen
    Write-Host "   - Regras de Governança: Roxo Açaí + Glassmorphism, Zero Hardcoding & LGPD" -ForegroundColor DarkGreen
    Write-Host ""
    Write-Host "🚀 Agora você pode usar o NEXUS e todas as Skills do Hub OS em qualquer projeto neste computador!" -ForegroundColor Cyan
    Write-Host ""
} else {
    Write-Host "⚠️ Atenção: A cópia foi realizada, mas alguns arquivos de validação não foram encontrados." -ForegroundColor Yellow
}
