## Caso

**Empresa**: Uma rede social focada em compartilhamento de conteúdo multimídia e interação em tempo real.

## Collections

### Usuários

Os perfis de usuário variam bastante, podendo adicionar informações de gostos pessoas, localidade,
pessoas e páginas de interesse e etc. Com o mongo evitaríamos ter muiutos campos nulo permitindo um esquema flexível

### Publicações

As publicações possuem um alto fluxo de consultas e filtros variádos para um sistema de recomendação
de conteúdo, fazendo um cruzamento com os gostos do usuário.

## Interações

Interações incluem curtidas, comentários, compartilhamentos, reações com emojis, marcações, etc. Cada interação
pode ter campos diferentes. Um comentário pode ter respostas aninhadas, enquanto uma reação pode simplesmente, 
registrar o tipo de emoji usado. A flexibilidade do MongoDB facilita o armazenamento dessas diferentes estruturas
de dados.

```javascript
db.getCollection("usuarios").insertOne({
    nome: "Mateus Felipe",
    email: "contato@mateusf.com",
    interesses: ["Programação", "DevOps", "Skyrim", "Futebol", "Galo"],
    redes_sociais: {
        instagram: "@mateusfg7",
        twitter: "@mateusfg77"
    },
    data_criacao: new Date("2023-11-11")
});

db.getCollection("usuarios").insertMany([
  {
    nome: "João Carvalho",
    email: "joao.carvalho@example.com",
    profissao: "Designer Gráfico",
    amigos: ["contato@mateusf.com", "ana.lima@example.com"],
    preferencias: {
      notificacoes: false,
      tema: "claro"
    },
    data_criacao: new Date("2023-03-10")
  },
  {
    nome: "Ana Lima",
    email: "ana.lima@example.com",
    interesses: ["Música", "Tecnologia"],
    redes_sociais: {
      linkedin: "linkedin.com/in/ana-lima"
    },
    data_criacao: new Date("2023-04-05")
  },
  {
    nome: "Carlos Souza",
    email: "carlos.souza@example.com",
    data_criacao: new Date("2023-05-20")
  }
]);


db.publicacoes.insertMany([
  {
    usuario_email: "contato@mateusf.com",
    tipo: "imagem",
    conteudo: {
      url: "https://example.com/fotos/paisagem.jpg",
      descricao: "Pôr do sol incrível na praia!"
    },
    curtidas: 150,
    comentarios: [
      {
        usuario_email: "joao.carvalho@example.com",
        texto: "Foto maravilhosa!",
        data: new Date("2023-06-01")
      }
    ],
    data_publicacao: new Date("2023-05-30")
  },
  {
    usuario_email: "joao.carvalho@example.com",
    tipo: "texto",
    conteudo: "Acabei de finalizar um novo projeto de design!",
    curtidas: 75,
    data_publicacao: new Date("2023-06-02")
  },
  {
    usuario_email: "ana.lima@example.com",
    tipo: "evento",
    conteudo: {
      titulo: "Workshop de Tecnologia",
      data_evento: new Date("2023-07-10"),
      local: "Centro de Convenções"
    },
    interessados: ["contato@mateusf.com", "carlos.souza@example.com"],
    data_publicacao: new Date("2023-06-05")
  },
  {
    usuario_email: "carlos.souza@example.com",
    tipo: "enquete",
    conteudo: {
      pergunta: "Qual seu gênero musical favorito?",
      opcoes: ["Rock", "Pop", "Jazz", "Clássica"]
    },
    votos: {
      Rock: 20,
      Pop: 15,
      Jazz: 10,
      Clássica: 5
    },
    data_publicacao: new Date("2023-06-10")
  }
]);


db.interacoes.insertMany([
  {
    usuario_email: "contato@mateusf.com",
    tipo_interacao: "curtida",
    id_publicacao: ObjectId("67329e840a5d8f29d2210f22"),
    data_interacao: new Date("2023-06-02")
  },
  {
    usuario_email: "joao.carvalho@example.com",
    tipo_interacao: "comentario",
    id_publicacao: ObjectId("67329e840a5d8f29d2210f23"),
    comentario: "Contando os dias para o workshop!",
    data_interacao: new Date("2023-06-06")
  },
  {
    usuario_email: "ana.lima@example.com",
    tipo_interacao: "compartilhamento",
    id_publicacao: ObjectId("67329e840a5d8f29d2210f24"),
    data_interacao: new Date("2023-06-11")
  },
  {
    usuario_email: "carlos.souza@example.com",
    tipo_interacao: "reacao",
    id_publicacao: ObjectId("67329e840a5d8f29d2210f25"),
    reacao: "👍",
    data_interacao: new Date("2023-06-12")
  }
]);
```

