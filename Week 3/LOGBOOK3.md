# Trabalho realizado na Semana #3

## Identificação

- **Shogihax** consiste num *exploit* que permite a execução de código remoto nas consolas de videojogos Nintendo 64.
- A falha de segurança está presente em dispositivos que reproduzam um jogo específico, no caso, **Morita Shogi 64**, devido ao seu *modem* integrado.  
- Usando o comando *IF* (0x800b3e94), é possível tomar partido da chamada à função `copyAdvanceString` (um equivalente à função em C `strcpy`) para executar um *buffer-overflow*.

## Catalogação

- Esta falha de segurança não possui um *bug bounty* associado.
- Esta falha de segurança foi encontrado pelo engenheiro de seugrança *CTurt*, que a documentou no seu Github [[1]](https://github.com/CTurt/shogihax) e escreveu um artigo acerca da mesma [[2]](https://cturt.github.io/shogihax.html).
- Não há nivel de gravidade atribuído, no entanto achamos que lhe deveria ser atribuído nível baixo [[3]](https://qualysguard.qualys.com/portal-help/en/wasknowledgebase/severity_levels.htm) [[4]](https://www.netsparker.com/support/vulnerability-severity-levels-netsparker/), já que requer um cenário muito específico e que a consola já saiu há muito do mercado.

## Exploit

- Este *exploit* introduz um método mais simples da criação *homebrew* na Nintendo 64 sem o uso de um *flash card*.
- Existência de strings de debug potenciou a descoberta desta falha, já que facilitou a descodificação do formato correto dos pacotes. 

## Ataques

- Este *exploit* poderia, teoricamente, ser usado para tornar o software de uma Nintendo 64 inutilizável através da execução de código remotamente.
- No entanto, devido ao facto de serem necessários um jogo específico raro e um computador, seria difícil tomar proveito do *exploit*.
- Por último, este *exploit* facilita o desenvolvimento de jogos para esta consola e permite pirataria de videojogos para a consola.

**Página CVE:** https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-13109  
