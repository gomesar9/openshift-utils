# Openshift
## LAB: Anyuid

Algumas aplicações e imagens prontas na internet recaem sobre ações privilegiadas para o bom funcionamento,
porém os deployments em openshift, por padrão, sobem pods com usuários sem privilégios, causando erros e muitas vezes deixando
os pods em estado de _CrashLoopBackOff_

O lab demonstra esse comportamento e exemplifica uma solução prática, de adição da permissão para um usuário de serviço específico,
destinado a ser usado por este deployment.

A pasta `basic` contém o exemplo com deployments, um caso padrão.

A pasta `advanced` contém o exemplo direto do pod, com securityContext setados manualmente.


Bom experimento.
