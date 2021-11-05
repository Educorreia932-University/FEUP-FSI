
# Trabalho realizado na Semana #3

## Identificação

- **Shogihax** consiste num *exploit* que permite a execução de código remoto nas consolas de videojogos Nintendo 64.
- A falha de segurança está presente em dispositivos que reproduzam um jogo específico, no caso, **Morita Shogi 64**, devido ao seu *modem* integrado.  
- Usando o comando *IF* (0x800b3e94), é possível tomar partido da chamada à função `copyAdvanceString` (um equivalente à função em C `strcpy`) para executar um *buffer-overflow*.

## Catalogação

- Esta falha de segurança não possui um *bug bounty* associado.
- Esta falha de segurança foi encontrado pelo engenheiro de seugrança *CTurt*, que a documentou no seu Github[2] e escreveu um artigo acerca da mesma[1].

## Exploit

- Este *exploit* introduz um método mais simples da criação *homebrew* na Nintendo 64 sem o uso de um *flash card*.

## Ataques

- Este *exploit* poderia, teoricamente, ser usado para tornar o software de uma Nintendo 64 inutilizável através da execução de código remotamente.
- No entanto, devido ao facto de serem necessários um jogo específico raro e um computador, seria difícil tomar proveito do *exploit*.
- Por último, este *exploit* facilita o desenvolvimento de jogos para esta consola e permite pirataria de videojogos para a consola, o que pode ser visto como prejudicial.


CVE page: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-13109
[1] https://cturt.github.io/shogihax.html
[2] Github repository: https://github.com/CTurt/shogihax
[3] Severity level identification:
 https://qualysguard.qualys.com/portal-help/en/was/knowledgebase/severity_levels.htm
https://www.netsparker.com/support/vulnerability-severity-levels-netsparker/
