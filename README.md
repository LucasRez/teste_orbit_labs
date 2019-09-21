# Teste Orbit Labs

Teste de desenvolvimento de backend para a Orbit Labs

## Setup

Antes de criar o banco de dados altere as credenciais do usuário do banco no arquivo ``` database.yml ```

Crie o banco com ```rake db:create``` e as tabelas com ```rake db:migrate```. É possível gerar 3 eventos e 2 usuários utilizando ```rake db:seed```

Para iniciar o servidor basta utilizar o comando ```rails s```

## Rotas

| Método | Rota |Parâmetros| Descrição |
|-------|------|-----|-----------|
| GET | events/| Nenhum | Retorna lista de todos os Events.|
| POST | comments/| text, user_id, event_id | Cria um Comment de um User sobre um Event. Não pode ser enviado Comment vazio.|
| GET | comments/| user_id, event_id, show_reported | Lista os Comments, podendo ser filtrado por User, Event e se devem aparecer os Comments com Report.|
| POST | reports/| user_id, comment_id | Cria um Report de um User em um Comment.|
