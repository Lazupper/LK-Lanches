-- 1. Tabela de Produtos
create table produtos (
  id serial primary key,
  nome text,
  descricao text,
  preco decimal,
  categoria text,
  imagem_url text,
  disponivel boolean default true
);

-- 2. Tabela de Pedidos
create table pedidos (
  id serial primary key,
  cliente text,
  itens text,
  total decimal,
  status text default 'Pendente',
  endereco text,
  criado_em timestamp with time zone default now()
);

-- 3. Tabela de Configurações
create table configuracoes (
  id int primary key default 1,
  taxa_entrega decimal default 5.00,
  loja_aberta boolean default true
);

-- 4. Inserir configuração inicial (MUITO IMPORTANTE)
insert into configuracoes (id, taxa_entrega, loja_aberta) values (1, 5.00, true);