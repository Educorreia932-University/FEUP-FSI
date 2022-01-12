# Trabalho realizado na Semana #10

## Task 1 - Posting a Malicious Message to Display an Alert Window

![](Tarefas/screenshots/1-1.png)

![](Tarefas/screenshots/1-2.png)

## Task 2 - Posting a Malicious Message to Display Cookies

![](Tarefas/screenshots/2-1.png)

![](Tarefas/screenshots/2-2.png)

## Task 3: Stealing Cookies from the Victim’s Machine

![](Tarefas/screenshots/3-1.png)

![](Tarefas/screenshots/3-2.png)

## Task 4 - Becoming the Victim’s Friend

![](Tarefas/screenshots/4-1.png)

![](Tarefas/screenshots/4-2.png)

### Question 1

> Explain the purpose of Lines ➀ and ➁, why are they are needed?

As linhas 1 e 2 são necessárias, pois os campos `__elgg_ts` e `__elgg_token` são usados pelo servidor para identificar o utilizador a realizar o pedido.

### Question 2

> If the Elgg application only provide the Editor mode for the "About Me" field, i.e., you cannot switch to the Text mode, can you still launch a successful attack?

Não, pois o texto inserido é *encoded*, não sendo interpretado como código (por exemplo, o caratér `<` é substituído por `&gt;`)

--- 

# CTF realizado na Semana #10

## Desafio 2



