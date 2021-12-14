### A Pluto.jl notebook ###
# v0.17.3

using Markdown
using InteractiveUtils

# ╔═╡ ef732c7b-8ff5-4149-bd18-080a4be144b0
using LinearAlgebra

# ╔═╡ d2a532eb-9e0f-4cd2-9a79-a838ff0d6091
using GLMakie

# ╔═╡ dd361f49-9296-4d60-a059-51f686bdb231
using LaTeXStrings

# ╔═╡ 955ea944-5cc9-11ec-2fde-990deccd1a74
md"""
Este é um notebook Pluto!

 * Tem algumas semelhanças com Jupyter
 * Mas também é bem diferente

Diferenças notáveis
 * Notebook reativo!
 * Uma expressão por célula
   - O que aparece é a saída desta expressão
   - Só existe um tipo de célula
 * Tem o gerenciador de pacotes embutido
 * Já disse que é reativo?
"""



# ╔═╡ 882bd18e-0bb6-429e-b276-62b9c0fa9bc5
md"""
O que eu quero dizer com reativo?

Existe uma dependência entre as expressões de cada célula. Modifique uma e todas as outras serão modificadas!
"""

# ╔═╡ d0b2176a-0641-4fed-a40c-6d09405a2f68
x = 12

# ╔═╡ c6d45a4a-bcae-4e3e-9ff6-7c3d2308b1fe
y = 2x + rand()

# ╔═╡ 524cb489-108c-4edb-8cce-0b78ef050cc1
z = cos(y)

# ╔═╡ 4fad2f79-e722-4216-9fb8-6c3301b972e6
md"""
Quais as vantagens do notebook ser reativo?

 * O notebook quase vira (ou vira?) um aplicativo
 * Não dá para criar código espagueti. Quem já usou Jupyter sabe do que eu estou falando...
 * Funciona muito bem com sistemas de controle de versão
 * Outra aspecto interessante: os comentários podem refletir o que acontece nos cálculos!
"""

# ╔═╡ cb8e03bb-f884-473f-b44a-3ba0253ef658
begin
	autor = "Gabriel"
	inst = "USP"
end

# ╔═╡ e3ca765f-ea1c-4947-a0f7-7d9d75423804
md"""
Este curso está sendo ministrado no $inst por $autor
"""

# ╔═╡ ec8c6e2b-0947-4b58-a26d-0df38c3428b6
md"""
# Voltemos ao curso: Arrays, vetores, listas, etc

 * Como Python (ao contrário de R e Matlab), **existem valores escalares e arrays**
 * Ao contrário do Matlab, mas como Python e R, **vetores não são apenas matrizes coluna**
 * Diferente do Python e R, lista é simplesmente um vetor
"""

# ╔═╡ 0230b35b-cde0-4e7f-b64b-b6938019d2e1
# Criando vetores
v₁ = [1,2,3]

# ╔═╡ 5fe6732b-06da-4a17-aef2-4884a3c55688
typeof(v₁)

# ╔═╡ d096dde4-1bbf-43de-a9db-c58c616ab262
eltype(v₁)

# ╔═╡ 1c539edc-a223-4dfe-835c-8f4622e40b81
length(v₁)

# ╔═╡ fcff733b-5e29-4250-b523-3e696ede569f
size(v₁)

# ╔═╡ 8dff50f4-4204-494d-b179-cdf539b7a860
Vector{Int64} == Array{Int64,1}

# ╔═╡ 12a2e38a-b831-4afc-817f-6f7f0cfa17a9
v₂ = [1.0, 2, 3]

# ╔═╡ a4cffb60-34a8-4d9e-98b0-53b33c9cbda7
typeof(v₂)

# ╔═╡ edf5902c-6f49-4668-8efd-7bd49a76d40e
v₃ = [1,2,3.0]

# ╔═╡ 9a14b46f-81d6-4d0b-b72c-ec542f1ced04
typeof(v₃)

# ╔═╡ 83f70015-e147-431d-9e59-e62a47e4452b
v₄ = [1, 2.0, 3.0+0.0im]

# ╔═╡ 9417d3b5-da2a-4622-add3-80b4ba95f283
typeof(v₄)

# ╔═╡ 714b1141-83b0-40c5-b02b-26a4dc8d938a
v₅ = [1,2.0,"3", 4.0+0.0im]

# ╔═╡ e1374d5d-d7f7-4ef2-94e3-f23d06e6327d
typeof(v₅)

# ╔═╡ c8640f44-a60d-49b3-be86-dbad68ce86a6
v₅[1] = (1,2.0, "3.0")

# ╔═╡ 578c00e3-acad-4185-9d2c-305ccb3cc11a
v₅

# ╔═╡ 17be0c7a-27ed-47c8-98ed-48d7ac7adfd0
md"""
 Algumas observações
 * Como as listas em R e Python, os vetores podem armazenar qualquer tipo de dados
 * Mas se for homogêneo, temos um vetor especializado para o o tipo de dados
 * Se tivermos mistura de coisas parecidas, Julia promove os valores
"""

# ╔═╡ 54905327-393e-456f-8d41-eb3a40231e0d
# Para acessar um elemento:
(v₁[1], v₁[2], v₁[3])

# ╔═╡ c1400709-4638-487d-ac89-fb6659b1f254
# Para variar, é bom lembrar que o notebook é reativo mas não é deus
sum(v₁) 


# ╔═╡ 2df4d9fe-9cd0-4d66-a518-90701bedb05f
# Podemos modificar os valores
v₁[1] = 1 # setindex! - Pluto não tem como saber se uma função modificou o valor

# ╔═╡ 0c34a7fa-4af3-4311-bb18-af0d0a05aea9
# Outros jeitos de criar vetores
u₁ = Vector{Any}(undef, 10)

# ╔═╡ 2a0150a8-96a3-4cad-a4b6-6a1193e42d30
u₁[1] = 123

# ╔═╡ 8cefeef5-7365-4abd-96b3-7127525267c9
u₁[2] = "lixo"

# ╔═╡ f20ec88e-ed93-4317-944a-8cbb3410df31
u₁₂ = Vector{Int64}(undef, 10)

# ╔═╡ b4035537-0988-4ecd-aa19-e98b1a805fcc
# Um jeito melhor
u₂ = fill(3.14, 10)

# ╔═╡ a1bec886-9643-467c-a120-03720be93ffd
typeof(u₂)

# ╔═╡ ea39f53d-e520-44be-b735-e045880b3a16
# Talvez seja melhor fazer isso:
u₃ = zeros(10)

# ╔═╡ 150d2292-2f1b-4902-8081-3708858f26f6
# Ou isso
u₄ = ones(10)

# ╔═╡ 207b20ae-285f-400c-926b-fa48bdb3cc28
# Mas se você quer outro tipo de dado:
u₅ = zeros(BigFloat, 10)

# ╔═╡ 876ca69e-c680-48f5-9e70-efc2b3bb3719
typeof(u₅)

# ╔═╡ 9efdf5f1-9912-41bc-a4b1-48d583ec59ab
md"""
## Coisas que parecem arrays mas não são

*(mas são AbstractArray)*
"""

# ╔═╡ d33f2f2a-7921-48fd-94af-1bf62e93b98f
i₁ = 0.0:0.2:1

# ╔═╡ 7648ccbe-1492-474a-b692-ad6c3b99d0d9
typeof(i₁)

# ╔═╡ 15de5243-77ab-4d12-b731-d0ba7b933473
typeof(i₁) <: AbstractArray

# ╔═╡ 43068b5b-4715-4bb3-bc32-0766e7bb1d78
[i₁;]

# ╔═╡ 30f575f6-f448-4cd4-a850-98db49f50612
collect(i₁)

# ╔═╡ 03e3bc86-b437-4c82-9473-71491ae75aec
w₁ = range(0, 1, length=11)

# ╔═╡ fd129ba6-0385-433d-90b1-3d03c43b58da
collect(w₁)

# ╔═╡ 89fa93a0-37af-4b5d-8591-cf2a314ff0b1
w₂ = range(0, length=11, step=0.33)

# ╔═╡ ad632869-c9b4-448f-a2b1-8b2f1dac4110
collect(w₂)

# ╔═╡ c4767437-1291-44d4-8f48-55ec140e88d7
md""" 
### Tem mais. O pessoal do Python vai gostar...
"""

# ╔═╡ 5af6a07c-088b-4e3d-bf34-0e9b5ddcf497
# Array comprehension
w₃ = [i^2 for i in 1:10]

# ╔═╡ c4261194-55ad-4a12-acce-e62341be820b
sum([1/i^2 for i in 1:100])

# ╔═╡ 67f94091-d3cf-4cf5-8441-0872b8a64c3d
# Olha mãe, sem as mãos!
sum(1/i^2 for i in 1:100)

# ╔═╡ 58d667d4-675e-4dce-98e0-60fd207da1a5
md"""
# Vetor qualquer um faz e matrizes?
"""

# ╔═╡ e09fd783-af43-4d11-a9d4-9c977ec49e80
[1 2 3]

# ╔═╡ 516ebc5c-5103-4cb4-865c-c840c0b85f68
[1 2;
3 4]

# ╔═╡ 79d7bbee-04b1-47a7-a90c-95a2f6b2e8a2
[1 2; 3 4]

# ╔═╡ 46a21d1a-0f79-4a69-bea0-cb5e91a77814
# , ; e espaços funcionam de maneira diferente
[1 2;3 4]

# ╔═╡ 935cd75c-d783-4991-a32c-530c8dce319d
[[1,2], [3, 4], [5,6]]

# ╔═╡ 12a6ae26-0e3d-40a2-a1be-6339cc94d815
Matrix{Int}(undef, 3,4)

# ╔═╡ a362f12d-c198-4f7f-803a-a5113ee092be
fill(0.0, 3, 4)

# ╔═╡ 4400f452-7522-4088-9838-4f8807736210
zeros(3,4)

# ╔═╡ 06109ba2-d27d-40fa-a581-f3947939b2e3
zeros(Int8, 3, 4)

# ╔═╡ e686e501-f772-4e6d-93ec-7276f414a444
Matrix{Int} == Array{Int,2}

# ╔═╡ 5d1b1249-56cf-405e-af22-a1fe80ddb9fe
ones(3,4)

# ╔═╡ b0f70220-c00d-464e-aa07-dc13f206c0f5
# Porque parar por aqui?
z₁ = zeros(2,3,4)

# ╔═╡ b7abc23a-78e8-4ac6-82e1-d757c7ed363f
typeof(z₁)

# ╔═╡ 562e4519-10ed-4299-8997-23a7ef4e4596
eltype(z₁)

# ╔═╡ 46606ae7-4dee-4282-88f4-3a0f5b75f604
length(z₁)

# ╔═╡ cdbec343-df31-4556-9e99-998e44ef4536
size(z₁)

# ╔═╡ f394c19b-532c-4b90-9709-87207d52fe41
size(z₁,1)

# ╔═╡ 40c105ce-93a1-41db-902d-92c9af9848cd
strides(z₁)

# ╔═╡ 8e1c27e9-ca36-4de2-ad31-46f96d84a234
# Para acessar um elemento
z₁[1]

# ╔═╡ 20e916a9-2698-466e-bc27-7fe9e62cec17
z₂ = reshape([i for i in 1:12], 3,4)

# ╔═╡ 676296df-eff4-4111-a4c5-e42c01a02a78
z₂[1,1]

# ╔═╡ 13cd32ed-49cc-4453-9d35-e3e36598e9ad
z₂[1,1] = 123

# ╔═╡ 5d023513-c137-4858-9ce5-4fceb495314e
z₂

# ╔═╡ 5cfc7960-aa0e-46d8-ab07-477ffa2ff821
# Acessando uma coluna
z₃ = z₂[:,2]

# ╔═╡ d6ff5fb7-28e5-4266-b64b-bd8e19d92fdb
z₃[1] = -999

# ╔═╡ d59e61d8-9103-4601-b823-9b0f4a2c93ee
z₃

# ╔═╡ 8fd3718f-3c96-4449-a6fe-2366af70e4c8
# Copiou a memória
z₂[2,2]

# ╔═╡ a51775af-210d-4efc-912e-5d2287f7426e
z₄ = @view z₂[:,2]

# ╔═╡ a3107949-7c74-4e7e-a1ac-1004fe8ea895
z₄[2] = 665

# ╔═╡ e801e8eb-8d5d-436b-8bee-59a40ee0211a
z₂

# ╔═╡ a3d40b6c-cb27-4d00-a4dc-9508f1539ec5
typeof(z₃)

# ╔═╡ 5508044e-4686-4919-9c89-6efa88835e4e
typeof(z₄)

# ╔═╡ 1c5a96eb-8281-42e9-ae69-8cf4fb22836c
md"""
#### Array comprehension

É isso aí!
"""

# ╔═╡ 58f898c1-aeeb-4477-8c64-3f5aab9f73df
[i+j+k  for i in 1:5, j in 10:10:100, k in 1000:1000:3000]

# ╔═╡ 92099d24-e94a-43be-b94f-6ffbff15d7c6
md"""
### Broadcasting 
"""


# ╔═╡ c0cba5f4-f6ca-4b91-842e-965df6be9d1f
begin
	1+1
	2+2
end

# ╔═╡ 870de4b2-316c-487a-85b2-68d34da28203
begin
	f₁ = rand(5)
	f₂ = rand(5)
end

# ╔═╡ ebbf860b-8004-4aec-9a03-ae66721a7df6
# Julia segue a notação matemática (quando dá...)
# Soma vetorial? OK!
f₁ + f₂

# ╔═╡ 5b0d1811-0a85-41ec-91ae-7c3d1f6fd10f
# Soma elemento a elemento: mesma coisa que soma vetorial
f₁ .+ f₂

# ╔═╡ f34a945e-8929-42ec-9e9d-18955d05810c
dot(f₁, f₂)

# ╔═╡ 1eeba89a-23be-4992-8927-36ec3c7d5589
f₁' * f₂

# ╔═╡ 492b5a7e-5a28-4bba-a7b8-63bfb9e3d859
f₁'

# ╔═╡ 4798a1ba-25bf-407d-acfe-660ea4c951cd
md"""
Os pontos... Matlab tem um pouco disso mas Julia realmente explora isso e **de maneira consistente**!
"""


# ╔═╡ 4590e184-9100-4a17-99c5-f3fc9c1d7573
f₁ + 1

# ╔═╡ f422d0d5-4f65-4716-9074-b708ae876d1b
f₁ .+ 1

# ╔═╡ 18a11285-94d1-4288-a7ff-cff30d12eeda
f₁ * f₂  # O que é multiplicação de dois vetores?

# ╔═╡ a65eade6-43c7-42e8-8f46-e0d483f59086
# Mas elemento a elemento funciona!
f₁ .* f₂

# ╔═╡ 2433ab36-5df8-4aac-b16a-14a28fe8228c
begin
	M₁ = rand(2,2)
	M₂ = rand(2,2)
end

# ╔═╡ 983067ba-645f-4d52-915b-4e834dc21a4b
# Multiplicação matricial
M₁ * M₂

# ╔═╡ ed0ba43e-e362-42b0-bde0-f6daf2e75e6a
# Mult. elemento a elemento
M₁ .* M₂

# ╔═╡ 04c5a231-293b-4d7a-8049-13ffc2d0b322
M₁[1,1] * M₂[1,1]


# ╔═╡ 49d04b84-5b2b-4dd0-931f-bfc3532d70e2
# Seno de um vetor?
sin(f₁)

# ╔═╡ ab53f49a-0995-4a4b-9a54-8547a6ea0618
# Use ponto para fazer isso ponto a ponto
sin.(f₁)

# ╔═╡ 221356ba-bf7e-4d0a-b171-b171fa8a8171
xx = zeros(5)

# ╔═╡ 3e5557ca-a3ec-421b-bac2-fc3da81e648a
# Uma expressão mais complicada (elemento a elemento!)
exp.(sin.(f₁)) .* f₂ .^ f₁ .- 1

# ╔═╡ dbc75111-1fb0-4158-8a74-1483671711ba
# Os pontos podem encher o saco!
@. exp(sin(f₁)) * f₂ ^ f₁ - 1

# ╔═╡ 1c792be0-5f2c-4538-ba60-009c342f0735
# Curiosidade
# Exponencial de cada elemento da matriz
exp.(M₁)

# ╔═╡ a9934483-1263-4f3c-aa31-c59ffa049aa3
# Exponencial **da matriz**
exp(M₁)

# ╔═╡ 6ccb5535-7aa9-4e67-8a6c-5c24262b92f4
md"""
#### Coisa nova: arrays multidimensionais literais

"""

# ╔═╡ 9380d6f3-5c79-4825-b796-d0ce6bfe1d88
z₅ = [1 2; 3 4;;; 5 6; 7 8;;; 9 10; 11 12]

# ╔═╡ 7b575a85-ad47-41b2-a491-00574ba48ef4
size(z₅)

# ╔═╡ f8e3ed46-276e-4810-94da-7092217d8b6e
z₆ = [1;2;;3;4;;;5;6;;7;8;;;9;10;;11;12]

# ╔═╡ 07c98423-087a-4594-9c3f-133f3c5e65c9
md"""
# Brincando com os índices

Assim, como Python (numpy), R, Matlab, existem diversas maneiras de indexar as coisas
"""

# ╔═╡ e4314984-6e10-4bef-874f-f96ea6102cc8
a = rand(4,5)

# ╔═╡ 37c93d19-1a3c-45ba-b8f7-f72686fa50c4
a[1,2]

# ╔═╡ 443a6de8-a004-4f85-8418-516baf0b12bc
a[:,1]

# ╔═╡ df4064f5-c205-4434-99c4-2b56cda04563
a[1,:]

# ╔═╡ 0f172f57-1606-4f7b-aaaf-67fd22b3b4ce
a[1:2,:]

# ╔═╡ 010a32e4-a2bc-4f06-a69a-757ca84dcbe8
a[1:2,1:2]

# ╔═╡ a9e0e47d-d6cf-4095-8492-47342ba72181
a[2:end,1]

# ╔═╡ 1e81ba44-cbe5-4949-82f4-f0468e77ceef
a[2:end,4:end]

# ╔═╡ ddc8b42f-94e5-4dd9-ad92-62ed012aed44
b = deepcopy(a)

# ╔═╡ 77b98d13-276a-477f-ab36-05d8053a8bee
b[1,1] = 2

# ╔═╡ bb92f6d1-b3ad-4dca-80e5-deb143a037a9
b

# ╔═╡ 5d58e541-e68c-48f3-ac23-740f2c776042
a

# ╔═╡ 743f43b1-821a-421a-91cc-8e081997791d
md"""
Array multi-dimensional X.
 * Indexação X[I₁, I₂, …, Iₙ]
 * Iₖ pode ser inteiro, array de inteiros, dois pontos, 
 * Podemos indexar com booleanos
"""

# ╔═╡ 4be1d306-980b-4a09-a32b-a61f29422a10
X = rand(4,5)

# ╔═╡ 38392a29-0c82-41ba-bfc3-7d601a97d78b
idx = X .> 0.5

# ╔═╡ f485d831-278b-4a90-a8a0-87faf28a01c7
X[idx]

# ╔═╡ 23781193-0577-4746-b70c-4815e95a01e4
ii = X[:,1] .> 0.3

# ╔═╡ f3f729bb-7c4e-4a3f-9a10-166397d6e965
X[ii,:]

# ╔═╡ 5f116107-5558-491d-a463-1d28832d30b0
md"""
# Plotar gráficos

Julia é bom nisso? Muito bom mas é confuso.

### Um pouco de história

Julia é uma linguagem de programação geral mas nasceu numa comunidade preocupada com programação numérica/matemática.

Hoje, uma linguagem numérica que não tem gráficos bons é inútil.

Assim a comunidade Julia precisou de gambiarras para começar. Essas gambiarras foram basicamente criar interfaces para ambientes/bibliotecas para plotar gráficos. Temos vários frameworks para gráficos:

 * `Makie`
 * `Plots` (mais sobre isso)
 * `Gadfly`
 * `PyPlot` (matplotlib do Python)
 * `GR`
 * `Plotly`
 * `PGFPlots` (latex)
 * `PGFPlotsX` (latex)
 * `Gaston` (gnuplot, interface julia)
 * `Gnuplot` (gnuplot na veia)
 * `UnicodePlots` (é isso aí dá para plotar em terminais modo texto!)
 * `InspectDR`
 * Deve ter outros que eu nem conheço...

Cada um tem suas vantagens e desvantagens. 
Quem está vindo do Python vai se sentir em 
casa com o Matplotlib. A velha guarda pode 
curtir o gnuplot. 

Makie é implementado em Julia e é muito 
poderoso e talvez se torne o padrão no futuro.

Um caso curioso é o `Plots`. 
É simplesmente uma casca ao redor de outras
bibliotecas oferendo uma interface comum.
Hoje talvez seja o mais usado. Tem os seguintes backends
 * `GR` - Bem completo e rápido
 * `PyPlot` - Bem completo e muita funcionalidade
 * `Plotly` - Interatividade web
 * `InspectDR` - Velocidade quando o volume de dados é grande
 * `UnicodePlots` - Terminal!!!
 * `PGFPlotsX` - LaTeX bonito
"""

# ╔═╡ b29dab9f-0752-4246-910e-92bdeeb7ebb8
md"""
Vamos dar alguns exemplos usando Makie.

Documentação e tutorial oficial: <https://makie.juliaplots.org/stable/>
Livro com  tutorial <https://juliadatascience.io>

Muito poderoso. Dêem uma olhada nesse tutorial

<https://www.youtube.com/watch?v=L-gyDvhjzGQ&t=9s>

Esse tutorial surgiu como resultado do interesse nesse vídeo sobre sistemas dinâmicos, caos e efeito borboleta:

<https://www.youtube.com/watch?v=svV1MsUdInE>

"""

# ╔═╡ ba33d5ce-dda8-4702-904a-c7d7d3a56e12
let x= range(0,10,length=100), 
	y=sin.(x)
	lines(x,y)
end

# ╔═╡ a36c1b33-0b9c-417b-b2b2-e9e4c96459b7
let x= range(0,10,length=100), 
	y=sin.(x)
	scatter(x,y)
end

# ╔═╡ 89a26458-b3b0-4934-bab9-e952d191c5d1
let x = range(0,10,length=100), 
	y1 = sin.(x)
	y2 = cos.(x)
	lines(x,y1)
	lines!(x, y2)
	current_figure()
end

# ╔═╡ 9b567002-3bbd-4e4e-8722-f682c1ca4ae2
let x = range(0,10,length=100), 
	y1 = sin.(x)
	y2 = cos.(x)
	lines(x,y1, color=:red)
	lines!(x, y2, color=:blue)
	current_figure()
end

# ╔═╡ e923e7c1-44d3-4128-af19-b9d27d020181
let x = range(0,10,length=100), 
	y1 = sin.(x)
	y2 = cos.(x)
	scatter(x,y1, color=:red, markersize=5)
	scatter!(x, y2, color=:blue, markersize=5)
	current_figure()
end

# ╔═╡ 84ce232b-c9a5-448b-a5fe-f6804f3e8d83
let x = range(0,10,length=100), 
	y1 = sin.(x)
	y2 = cos.(x)
	scatter(x,y1, color=:red, markersize=5)
	sc = scatter!(x, y2, color=:blue, markersize=5)
	sc.color = :green
	sc.markersize = 20
	current_figure()
end

# ╔═╡ 233e7cdb-14e0-488b-b721-1294ba2f5a40
let x = range(0,10,length=100), 
	y1 = sin.(x)
	y2 = cos.(x)
	scatter(x,y1, color=:red, markersize=range(5,15,length=100))
	scatter!(x, y2, color=range(0,1,length=100), colormap= :thermal)
	current_figure()
end

# ╔═╡ 7af37246-8dc6-4b00-9743-65f1057fe621
let x = range(0,10,length=100), 
	y1 = sin.(x)
	y2 = cos.(x)
	scatter(x,y1, color=:red, markersize=range(5,15,length=100))
	sc = scatter!(x, y2, color=range(0,1,length=100), colormap= :thermal)
	sc.colorrange = (0.25, 0.75)
	current_figure()
end

# ╔═╡ c0e8fcf6-072d-44e6-a18e-1a82ff1ab78d
let x = range(0,10,length=100), 
	y1 = sin.(x)
	y2 = cos.(x)
	lines(x,y1, color=:red, label = L"sin(\phi)")
	lines!(x, y2, color=:blue, label="cos")
	axislegend()
	current_figure()
end

# ╔═╡ 571954ee-bfcd-4e23-bafa-b18d3a07d512
let x = range(0,10,length=100), y = sin.(x)
	fig = Figure()
	lines(fig[1,1], x, y, color=:red)
	lines(fig[1,2], x, y, color=:blue)
	lines(fig[2,1:2], x, y, color=:green)
	fig
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
GLMakie = "e9467ef8-e4e7-5192-8a1a-b1aee30e663a"
LaTeXStrings = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[compat]
GLMakie = "~0.4.7"
LaTeXStrings = "~1.3.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.0"
manifest_format = "2.0"

[[deps.AbstractFFTs]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "485ee0867925449198280d4af84bdb46a2a404d0"
uuid = "621f4979-c628-5d54-868e-fcf4e3e8185c"
version = "1.0.1"

[[deps.AbstractTrees]]
git-tree-sha1 = "03e0550477d86222521d254b741d470ba17ea0b5"
uuid = "1520ce14-60c1-5f80-bbc7-55ef81b5835c"
version = "0.3.4"

[[deps.Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "84918055d15b3114ede17ac6a7182f68870c16f7"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.3.1"

[[deps.Animations]]
deps = ["Colors"]
git-tree-sha1 = "e81c509d2c8e49592413bfb0bb3b08150056c79d"
uuid = "27a7e980-b3e6-11e9-2bcd-0b925532e340"
version = "0.4.1"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.ArrayInterface]]
deps = ["Compat", "IfElse", "LinearAlgebra", "Requires", "SparseArrays", "Static"]
git-tree-sha1 = "265b06e2b1f6a216e0e8f183d28e4d354eab3220"
uuid = "4fba245c-0d91-5ea0-9b3e-6abc04ee57a9"
version = "3.2.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Automa]]
deps = ["Printf", "ScanByte", "TranscodingStreams"]
git-tree-sha1 = "d50976f217489ce799e366d9561d56a98a30d7fe"
uuid = "67c07d97-cdcb-5c2c-af73-a7f9c32a568b"
version = "0.8.2"

[[deps.AxisAlgorithms]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "WoodburyMatrices"]
git-tree-sha1 = "66771c8d21c8ff5e3a93379480a2307ac36863f7"
uuid = "13072b0f-2c55-5437-9ae7-d433b7a33950"
version = "1.0.1"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.CEnum]]
git-tree-sha1 = "215a9aa4a1f23fbd05b92769fdd62559488d70e9"
uuid = "fa961155-64e5-5f13-b03f-caf6b980ea82"
version = "0.4.1"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "f2202b55d816427cd385a9a4f3ffb226bee80f99"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+0"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "4c26b4e9e91ca528ea212927326ece5918a04b47"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.11.2"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "bf98fa45a0a4cee295de98d4c1462be26345b9a1"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.2"

[[deps.ColorBrewer]]
deps = ["Colors", "JSON", "Test"]
git-tree-sha1 = "61c5334f33d91e570e1d0c3eb5465835242582c4"
uuid = "a2cac450-b92f-5266-8821-25eda20663c8"
version = "0.4.0"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "Colors", "FixedPointNumbers", "Random"]
git-tree-sha1 = "a851fec56cb73cfdf43762999ec72eff5b86882a"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.15.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "SpecialFunctions", "Statistics", "TensorCore"]
git-tree-sha1 = "3f1f500312161f1ae067abe07d13b40f78f32e07"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.9.8"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "417b0ed7b8b838aa6ca0a87aadf1bb9eb111ce40"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.8"

[[deps.Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "44c37b4636bc54afac5c574d2d02b625349d6582"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.41.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Contour]]
deps = ["StaticArrays"]
git-tree-sha1 = "9f02045d934dc030edad45944ea80dbd1f0ebea7"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.5.7"

[[deps.DataAPI]]
git-tree-sha1 = "cc70b17275652eb47bc9e5f81635981f13cea5c8"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.9.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "3daef5523dd2e769dad2365274f760ff5f282c7d"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.11"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[deps.DensityInterface]]
deps = ["InverseFunctions", "Test"]
git-tree-sha1 = "80c3e8639e3353e5d2912fb3a1916b8455e2494b"
uuid = "b429d917-457f-4dbc-8f4c-0cc954292b1d"
version = "0.4.0"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.Distributions]]
deps = ["ChainRulesCore", "DensityInterface", "FillArrays", "LinearAlgebra", "PDMats", "Printf", "QuadGK", "Random", "SparseArrays", "SpecialFunctions", "Statistics", "StatsBase", "StatsFuns", "Test"]
git-tree-sha1 = "c1724611e6ae29c6094c8d9850e3136297ba7fff"
uuid = "31c24e10-a181-5473-b8eb-7969acd0382f"
version = "0.25.36"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "b19534d1895d702889b219c382a6e18010797f0b"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.8.6"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3f3a2501fa7236e9b911e0f7a588c657e822bb6d"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.3+0"

[[deps.EllipsisNotation]]
deps = ["ArrayInterface"]
git-tree-sha1 = "3fe985505b4b667e1ae303c9ca64d181f09d5c05"
uuid = "da5c29d0-fa7d-589e-88eb-ea29b0a81949"
version = "1.1.3"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b3bfd02e98aedfa5cf885665493c5598c350cd2f"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.2.10+0"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "Pkg", "Zlib_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "d8a578692e3077ac998b50c0217dfd67f21d1e5f"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.0+0"

[[deps.FFTW]]
deps = ["AbstractFFTs", "FFTW_jll", "LinearAlgebra", "MKL_jll", "Preferences", "Reexport"]
git-tree-sha1 = "463cb335fa22c4ebacfd1faba5fde14edb80d96c"
uuid = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
version = "1.4.5"

[[deps.FFTW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c6033cc3892d0ef5bb9cd29b7f2f0331ea5184ea"
uuid = "f5851436-0d7a-5f13-b9de-f02708fd171a"
version = "3.3.10+0"

[[deps.FileIO]]
deps = ["Pkg", "Requires", "UUIDs"]
git-tree-sha1 = "2db648b6712831ecb333eae76dbfd1c156ca13bb"
uuid = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
version = "1.11.2"

[[deps.FillArrays]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "Statistics"]
git-tree-sha1 = "8756f9935b7ccc9064c6eef0bff0ad643df733a3"
uuid = "1a297f60-69ca-5386-bcde-b61e274b549b"
version = "0.12.7"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.FreeType]]
deps = ["CEnum", "FreeType2_jll"]
git-tree-sha1 = "cabd77ab6a6fdff49bfd24af2ebe76e6e018a2b4"
uuid = "b38be410-82b0-50bf-ab77-7b57e271db43"
version = "4.0.0"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[deps.FreeTypeAbstraction]]
deps = ["ColorVectorSpace", "Colors", "FreeType", "GeometryBasics", "StaticArrays"]
git-tree-sha1 = "770050893e7bc8a34915b4b9298604a3236de834"
uuid = "663a7486-cb36-511b-a19d-713bb74d65c9"
version = "0.9.5"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.GLFW]]
deps = ["GLFW_jll"]
git-tree-sha1 = "35dbc482f0967d8dceaa7ce007d16f9064072166"
uuid = "f7f18e0c-5ee9-5ccd-a5bf-e8befd85ed98"
version = "3.4.1"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "0c603255764a1fa0b61752d2bec14cfbd18f7fe8"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.5+1"

[[deps.GLMakie]]
deps = ["ColorTypes", "Colors", "FileIO", "FixedPointNumbers", "FreeTypeAbstraction", "GLFW", "GeometryBasics", "LinearAlgebra", "Makie", "Markdown", "MeshIO", "ModernGL", "Observables", "Printf", "Serialization", "ShaderAbstractions", "StaticArrays"]
git-tree-sha1 = "25dd999ef6ad2904206f96211386535bcb86cc58"
uuid = "e9467ef8-e4e7-5192-8a1a-b1aee30e663a"
version = "0.4.7"

[[deps.GeometryBasics]]
deps = ["EarCut_jll", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "58bcdf5ebc057b085e58d95c138725628dd7453c"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.1"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "74ef6288d071f58033d54fd6708d4bc23a8b8972"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.68.3+1"

[[deps.Graphics]]
deps = ["Colors", "LinearAlgebra", "NaNMath"]
git-tree-sha1 = "1c5a84319923bea76fa145d49e93aa4394c73fc2"
uuid = "a2bd30eb-e257-5431-a919-1863eab51364"
version = "1.1.1"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.GridLayoutBase]]
deps = ["GeometryBasics", "InteractiveUtils", "Observables"]
git-tree-sha1 = "70938436e2720e6cb8a7f2ca9f1bbdbf40d7f5d0"
uuid = "3955a311-db13-416c-9275-1d80ed98e5e9"
version = "0.6.4"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

[[deps.IfElse]]
git-tree-sha1 = "debdd00ffef04665ccbb3e150747a77560e8fad1"
uuid = "615f187c-cbe4-4ef1-ba3b-2fcf58d6d173"
version = "0.1.1"

[[deps.ImageCore]]
deps = ["AbstractFFTs", "ColorVectorSpace", "Colors", "FixedPointNumbers", "Graphics", "MappedArrays", "MosaicViews", "OffsetArrays", "PaddedViews", "Reexport"]
git-tree-sha1 = "9a5c62f231e5bba35695a20988fc7cd6de7eeb5a"
uuid = "a09fc81d-aa75-5fe9-8630-4744c3626534"
version = "0.9.3"

[[deps.ImageIO]]
deps = ["FileIO", "Netpbm", "OpenEXR", "PNGFiles", "TiffImages", "UUIDs"]
git-tree-sha1 = "a2951c93684551467265e0e32b577914f69532be"
uuid = "82e4d734-157c-48bb-816b-45c225c6df19"
version = "0.5.9"

[[deps.Imath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "87f7662e03a649cffa2e05bf19c303e168732d3e"
uuid = "905a6f67-0a94-5f89-b386-d35d92009cd1"
version = "3.1.2+0"

[[deps.IndirectArrays]]
git-tree-sha1 = "012e604e1c7458645cb8b436f8fba789a51b257f"
uuid = "9b13fd28-a010-5f03-acff-a1bbcff69959"
version = "1.0.0"

[[deps.Inflate]]
git-tree-sha1 = "f5fc07d4e706b84f72d54eedcc1c13d92fb0871c"
uuid = "d25df0c9-e2be-5dd7-82c8-3ad0b3e990b9"
version = "0.1.2"

[[deps.IntelOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "d979e54b71da82f3a65b62553da4fc3d18c9004c"
uuid = "1d5cc7b8-4909-519e-a0f8-d0f5ad9712d0"
version = "2018.0.3+2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Interpolations]]
deps = ["AxisAlgorithms", "ChainRulesCore", "LinearAlgebra", "OffsetArrays", "Random", "Ratios", "Requires", "SharedArrays", "SparseArrays", "StaticArrays", "WoodburyMatrices"]
git-tree-sha1 = "b15fc0a95c564ca2e0a7ae12c1f095ca848ceb31"
uuid = "a98d9a8b-a2ab-59e6-89dd-64a1c18fca59"
version = "0.13.5"

[[deps.IntervalSets]]
deps = ["Dates", "EllipsisNotation", "Statistics"]
git-tree-sha1 = "3cc368af3f110a767ac786560045dceddfc16758"
uuid = "8197267c-284f-5f27-9208-e0e47529a953"
version = "0.5.3"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "a7254c0acd8e62f1ac75ad24d5db43f5f19f3c65"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.2"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.Isoband]]
deps = ["isoband_jll"]
git-tree-sha1 = "f9b6d97355599074dc867318950adaa6f9946137"
uuid = "f1662d9f-8043-43de-a69a-05efc1cc6ff4"
version = "0.1.1"

[[deps.IterTools]]
git-tree-sha1 = "fa6287a4469f5e048d763df38279ee729fbd44e5"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.4.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "642a199af8b68253517b80bd3bfd17eb4e84df6e"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.3.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

[[deps.KernelDensity]]
deps = ["Distributions", "DocStringExtensions", "FFTW", "Interpolations", "StatsBase"]
git-tree-sha1 = "591e8dc09ad18386189610acafb970032c519707"
uuid = "5ab0869b-81aa-558d-bb23-cbf5423bbe9b"
version = "0.6.3"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.LazyArtifacts]]
deps = ["Artifacts", "Pkg"]
uuid = "4af54fe1-eca0-43a8-85a7-787d91b784e3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "7739f837d6447403596a75d19ed01fd08d6f56bf"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.3.0+3"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "42b62845d70a619f063a7da093d995ec8e15e778"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+1"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "be9eef9f9d78cecb6f262f3c10da151a6c5ab827"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.5"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MKL_jll]]
deps = ["Artifacts", "IntelOpenMP_jll", "JLLWrappers", "LazyArtifacts", "Libdl", "Pkg"]
git-tree-sha1 = "5455aef09b40e5020e1520f551fa3135040d4ed0"
uuid = "856f044c-d86e-5d09-b602-aeab76dc8ba7"
version = "2021.1.1+2"

[[deps.Makie]]
deps = ["Animations", "Base64", "ColorBrewer", "ColorSchemes", "ColorTypes", "Colors", "Contour", "Distributions", "DocStringExtensions", "FFMPEG", "FileIO", "FixedPointNumbers", "Formatting", "FreeType", "FreeTypeAbstraction", "GeometryBasics", "GridLayoutBase", "ImageIO", "IntervalSets", "Isoband", "KernelDensity", "LaTeXStrings", "LinearAlgebra", "MakieCore", "Markdown", "Match", "MathTeXEngine", "Observables", "Packing", "PlotUtils", "PolygonOps", "Printf", "Random", "RelocatableFolders", "Serialization", "Showoff", "SignedDistanceFields", "SparseArrays", "StaticArrays", "Statistics", "StatsBase", "StatsFuns", "StructArrays", "UnicodeFun"]
git-tree-sha1 = "56b0b7772676c499430dc8eb15cfab120c05a150"
uuid = "ee78f7c6-11fb-53f2-987a-cfe4a2b5a57a"
version = "0.15.3"

[[deps.MakieCore]]
deps = ["Observables"]
git-tree-sha1 = "7bcc8323fb37523a6a51ade2234eee27a11114c8"
uuid = "20f20a25-4f0e-4fdf-b5d1-57303727442b"
version = "0.1.3"

[[deps.MappedArrays]]
git-tree-sha1 = "e8b359ef06ec72e8c030463fe02efe5527ee5142"
uuid = "dbb5928d-eab1-5f90-85c2-b9b0edb7c900"
version = "0.4.1"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Match]]
git-tree-sha1 = "1d9bc5c1a6e7ee24effb93f175c9342f9154d97f"
uuid = "7eb4fadd-790c-5f42-8a69-bfa0b872bfbf"
version = "1.2.0"

[[deps.MathTeXEngine]]
deps = ["AbstractTrees", "Automa", "DataStructures", "FreeTypeAbstraction", "GeometryBasics", "LaTeXStrings", "REPL", "RelocatableFolders", "Test"]
git-tree-sha1 = "70e733037bbf02d691e78f95171a1fa08cdc6332"
uuid = "0a4f8689-d25c-4efe-a92b-7142dfc1aa53"
version = "0.2.1"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.MeshIO]]
deps = ["ColorTypes", "FileIO", "GeometryBasics", "Printf"]
git-tree-sha1 = "38f4e93a6485dbd610f09a0669741d2f4899e9ec"
uuid = "7269a6da-0436-5bbc-96c2-40638cbb6118"
version = "0.4.9"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.ModernGL]]
deps = ["Libdl"]
git-tree-sha1 = "1b4ca9b2956401690dfbf1b49e345ca539b54b03"
uuid = "66fc600b-dfda-50eb-8b99-91cfa97b1301"
version = "1.1.3"

[[deps.MosaicViews]]
deps = ["MappedArrays", "OffsetArrays", "PaddedViews", "StackViews"]
git-tree-sha1 = "b34e3bc3ca7c94914418637cb10cc4d1d80d877d"
uuid = "e94cdb99-869f-56ef-bcf0-1ae2bcbe0389"
version = "0.3.3"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NaNMath]]
git-tree-sha1 = "bfe47e760d60b82b66b61d2d44128b62e3a369fb"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "0.3.5"

[[deps.Netpbm]]
deps = ["FileIO", "ImageCore"]
git-tree-sha1 = "18efc06f6ec36a8b801b23f076e3c6ac7c3bf153"
uuid = "f09324ee-3d7c-5217-9330-fc30815ba969"
version = "1.0.2"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.Observables]]
git-tree-sha1 = "fe29afdef3d0c4a8286128d4e45cc50621b1e43d"
uuid = "510215fc-4207-5dde-b226-833fc4488ee2"
version = "0.4.0"

[[deps.OffsetArrays]]
deps = ["Adapt"]
git-tree-sha1 = "043017e0bdeff61cfbb7afeb558ab29536bbb5ed"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.10.8"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7937eda4681660b4d6aeeecc2f7e1c81c8ee4e2f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.OpenEXR]]
deps = ["Colors", "FileIO", "OpenEXR_jll"]
git-tree-sha1 = "327f53360fdb54df7ecd01e96ef1983536d1e633"
uuid = "52e1d378-f018-4a11-a4be-720524705ac7"
version = "0.3.2"

[[deps.OpenEXR_jll]]
deps = ["Artifacts", "Imath_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "923319661e9a22712f24596ce81c54fc0366f304"
uuid = "18a262bb-aa17-5467-a713-aee519bc75cb"
version = "3.1.1+0"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "15003dcb7d8db3c6c857fda14891a539a8f2705a"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.10+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PCRE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b2a7af664e098055a7529ad1a900ded962bca488"
uuid = "2f80f16e-611a-54ab-bc61-aa92de5b98fc"
version = "8.44.0+0"

[[deps.PDMats]]
deps = ["LinearAlgebra", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "ee26b350276c51697c9c2d88a072b339f9f03d73"
uuid = "90014a1f-27ba-587c-ab20-58faa44d9150"
version = "0.11.5"

[[deps.PNGFiles]]
deps = ["Base64", "CEnum", "ImageCore", "IndirectArrays", "OffsetArrays", "libpng_jll"]
git-tree-sha1 = "6d105d40e30b635cfed9d52ec29cf456e27d38f8"
uuid = "f57f5aa1-a3ce-4bc8-8ab9-96f992907883"
version = "0.3.12"

[[deps.Packing]]
deps = ["GeometryBasics"]
git-tree-sha1 = "1155f6f937fa2b94104162f01fa400e192e4272f"
uuid = "19eb6ba3-879d-56ad-ad62-d5c202156566"
version = "0.4.2"

[[deps.PaddedViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "646eed6f6a5d8df6708f15ea7e02a7a2c4fe4800"
uuid = "5432bcbf-9aad-5242-b902-cca2824c8663"
version = "0.5.10"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "ae4bbcadb2906ccc085cf52ac286dc1377dceccc"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.1.2"

[[deps.Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PkgVersion]]
deps = ["Pkg"]
git-tree-sha1 = "a7a7e1a88853564e551e4eba8650f8c38df79b37"
uuid = "eebad327-c553-4316-9ea0-9fa01ccd7688"
version = "0.1.1"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "8fb515c5a2c8941cef957e75afb99a2c24b753f3"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.1.0"

[[deps.PolygonOps]]
git-tree-sha1 = "77b3d3605fc1cd0b42d95eba87dfcd2bf67d5ff6"
uuid = "647866c9-e3ac-4575-94e7-e3d426903924"
version = "0.1.2"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "00cfd92944ca9c760982747e9a1d0d5d86ab1e5a"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.2.2"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.ProgressMeter]]
deps = ["Distributed", "Printf"]
git-tree-sha1 = "afadeba63d90ff223a6a48d2009434ecee2ec9e8"
uuid = "92933f4c-e287-5a05-a399-4b506db050ca"
version = "1.7.1"

[[deps.QuadGK]]
deps = ["DataStructures", "LinearAlgebra"]
git-tree-sha1 = "78aadffb3efd2155af139781b8a8df1ef279ea39"
uuid = "1fd47b50-473d-5c70-9696-f719f8f3bcdc"
version = "2.4.2"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Ratios]]
deps = ["Requires"]
git-tree-sha1 = "01d341f502250e81f6fec0afe662aa861392a3aa"
uuid = "c84ed2f1-dad5-54f0-aa8e-dbefe2724439"
version = "0.4.2"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "cdbd3b1338c72ce29d9584fdbe9e9b70eeb5adca"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "0.1.3"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "8f82019e525f4d5c669692772a6f4b0a58b06a6a"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.2.0"

[[deps.Rmath]]
deps = ["Random", "Rmath_jll"]
git-tree-sha1 = "bf3188feca147ce108c76ad82c2792c57abe7b1f"
uuid = "79098fc4-a85e-5d69-aa6a-4863f24498fa"
version = "0.7.0"

[[deps.Rmath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "68db32dff12bb6127bac73c209881191bf0efbb7"
uuid = "f50d1b31-88e8-58de-be2c-1cc44531875f"
version = "0.3.0+0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.SIMD]]
git-tree-sha1 = "9ba33637b24341aba594a2783a502760aa0bff04"
uuid = "fdea26ae-647d-5447-a871-4b548cad5224"
version = "3.3.1"

[[deps.ScanByte]]
deps = ["Libdl", "SIMD"]
git-tree-sha1 = "9cc2955f2a254b18be655a4ee70bc4031b2b189e"
uuid = "7b38b023-a4d7-4c5e-8d43-3f3097f304eb"
version = "0.3.0"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "0b4b7f1393cff97c33891da2a0bf69c6ed241fda"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.ShaderAbstractions]]
deps = ["ColorTypes", "FixedPointNumbers", "GeometryBasics", "LinearAlgebra", "Observables", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "0d97c895406b552bed78f3a1fe9925248e908ae2"
uuid = "65257c39-d410-5151-9873-9b3e5be5013e"
version = "0.2.8"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.SignedDistanceFields]]
deps = ["Random", "Statistics", "Test"]
git-tree-sha1 = "d263a08ec505853a5ff1c1ebde2070419e3f28e9"
uuid = "73760f76-fbc4-59ce-8f25-708e95d2df96"
version = "0.4.0"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "e08890d19787ec25029113e88c34ec20cac1c91e"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.0.0"

[[deps.StackViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "46e589465204cd0c08b4bd97385e4fa79a0c770c"
uuid = "cae243ae-269e-4f55-b966-ac2d0dc13c15"
version = "0.1.1"

[[deps.Static]]
deps = ["IfElse"]
git-tree-sha1 = "7f5a513baec6f122401abfc8e9c074fdac54f6c1"
uuid = "aedffcd0-7271-4cad-89d0-dc628f76c6d3"
version = "0.4.1"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "Random", "Statistics"]
git-tree-sha1 = "3c76dde64d03699e074ac02eb2e8ba8254d428da"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.2.13"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
git-tree-sha1 = "0f2aa8e32d511f758a2ce49208181f7733a0936a"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.1.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "2bb0cb32026a66037360606510fca5984ccc6b75"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.13"

[[deps.StatsFuns]]
deps = ["ChainRulesCore", "InverseFunctions", "IrrationalConstants", "LogExpFunctions", "Reexport", "Rmath", "SpecialFunctions"]
git-tree-sha1 = "bedb3e17cc1d94ce0e6e66d3afa47157978ba404"
uuid = "4c63d2b9-4356-54db-8cca-17b64c39e42c"
version = "0.9.14"

[[deps.StructArrays]]
deps = ["Adapt", "DataAPI", "StaticArrays", "Tables"]
git-tree-sha1 = "2ce41e0d042c60ecd131e9fb7154a3bfadbf50d3"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.3"

[[deps.SuiteSparse]]
deps = ["Libdl", "LinearAlgebra", "Serialization", "SparseArrays"]
uuid = "4607b0f0-06f3-5cda-b6b1-a6196a1729e9"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "TableTraits", "Test"]
git-tree-sha1 = "bb1064c9a84c52e277f1096cf41434b675cd368b"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.6.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TiffImages]]
deps = ["ColorTypes", "DataStructures", "DocStringExtensions", "FileIO", "FixedPointNumbers", "IndirectArrays", "Inflate", "OffsetArrays", "PkgVersion", "ProgressMeter", "UUIDs"]
git-tree-sha1 = "c342ae2abf4902d65a0b0bf59b28506a6e17078a"
uuid = "731e570b-9d59-4bfa-96dc-6df516fadf69"
version = "0.5.2"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "216b95ea110b5972db65aa90f88d8d89dcb8851c"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.6"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.WoodburyMatrices]]
deps = ["LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "de67fa59e33ad156a590055375a30b23c40299d3"
uuid = "efce3f68-66dc-5838-9240-27a6d6f5f9b6"
version = "0.5.5"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "1acf5bdf07aa0907e0a37d3718bb88d4b687b74a"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.9.12+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.isoband_jll]]
deps = ["Libdl", "Pkg"]
git-tree-sha1 = "a1ac99674715995a536bbce674b068ec1b7d893d"
uuid = "9a68df92-36a6-505f-a73e-abb412b6bfb4"
version = "0.2.2+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "c45f4e40e7aafe9d086379e5578947ec8b95a8fb"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"
"""

# ╔═╡ Cell order:
# ╠═955ea944-5cc9-11ec-2fde-990deccd1a74
# ╠═882bd18e-0bb6-429e-b276-62b9c0fa9bc5
# ╠═d0b2176a-0641-4fed-a40c-6d09405a2f68
# ╠═c6d45a4a-bcae-4e3e-9ff6-7c3d2308b1fe
# ╠═524cb489-108c-4edb-8cce-0b78ef050cc1
# ╟─4fad2f79-e722-4216-9fb8-6c3301b972e6
# ╠═cb8e03bb-f884-473f-b44a-3ba0253ef658
# ╠═e3ca765f-ea1c-4947-a0f7-7d9d75423804
# ╟─ec8c6e2b-0947-4b58-a26d-0df38c3428b6
# ╠═0230b35b-cde0-4e7f-b64b-b6938019d2e1
# ╠═5fe6732b-06da-4a17-aef2-4884a3c55688
# ╠═d096dde4-1bbf-43de-a9db-c58c616ab262
# ╠═1c539edc-a223-4dfe-835c-8f4622e40b81
# ╠═fcff733b-5e29-4250-b523-3e696ede569f
# ╠═8dff50f4-4204-494d-b179-cdf539b7a860
# ╠═12a2e38a-b831-4afc-817f-6f7f0cfa17a9
# ╠═a4cffb60-34a8-4d9e-98b0-53b33c9cbda7
# ╠═edf5902c-6f49-4668-8efd-7bd49a76d40e
# ╠═9a14b46f-81d6-4d0b-b72c-ec542f1ced04
# ╠═83f70015-e147-431d-9e59-e62a47e4452b
# ╠═9417d3b5-da2a-4622-add3-80b4ba95f283
# ╠═714b1141-83b0-40c5-b02b-26a4dc8d938a
# ╠═e1374d5d-d7f7-4ef2-94e3-f23d06e6327d
# ╠═c8640f44-a60d-49b3-be86-dbad68ce86a6
# ╠═578c00e3-acad-4185-9d2c-305ccb3cc11a
# ╟─17be0c7a-27ed-47c8-98ed-48d7ac7adfd0
# ╠═54905327-393e-456f-8d41-eb3a40231e0d
# ╠═c1400709-4638-487d-ac89-fb6659b1f254
# ╠═2df4d9fe-9cd0-4d66-a518-90701bedb05f
# ╠═0c34a7fa-4af3-4311-bb18-af0d0a05aea9
# ╠═2a0150a8-96a3-4cad-a4b6-6a1193e42d30
# ╠═8cefeef5-7365-4abd-96b3-7127525267c9
# ╠═f20ec88e-ed93-4317-944a-8cbb3410df31
# ╠═b4035537-0988-4ecd-aa19-e98b1a805fcc
# ╠═a1bec886-9643-467c-a120-03720be93ffd
# ╠═ea39f53d-e520-44be-b735-e045880b3a16
# ╠═150d2292-2f1b-4902-8081-3708858f26f6
# ╠═207b20ae-285f-400c-926b-fa48bdb3cc28
# ╠═876ca69e-c680-48f5-9e70-efc2b3bb3719
# ╟─9efdf5f1-9912-41bc-a4b1-48d583ec59ab
# ╠═d33f2f2a-7921-48fd-94af-1bf62e93b98f
# ╠═7648ccbe-1492-474a-b692-ad6c3b99d0d9
# ╠═15de5243-77ab-4d12-b731-d0ba7b933473
# ╠═43068b5b-4715-4bb3-bc32-0766e7bb1d78
# ╠═30f575f6-f448-4cd4-a850-98db49f50612
# ╠═03e3bc86-b437-4c82-9473-71491ae75aec
# ╠═fd129ba6-0385-433d-90b1-3d03c43b58da
# ╠═89fa93a0-37af-4b5d-8591-cf2a314ff0b1
# ╠═ad632869-c9b4-448f-a2b1-8b2f1dac4110
# ╟─c4767437-1291-44d4-8f48-55ec140e88d7
# ╠═5af6a07c-088b-4e3d-bf34-0e9b5ddcf497
# ╠═c4261194-55ad-4a12-acce-e62341be820b
# ╠═67f94091-d3cf-4cf5-8441-0872b8a64c3d
# ╟─58d667d4-675e-4dce-98e0-60fd207da1a5
# ╠═e09fd783-af43-4d11-a9d4-9c977ec49e80
# ╠═516ebc5c-5103-4cb4-865c-c840c0b85f68
# ╠═79d7bbee-04b1-47a7-a90c-95a2f6b2e8a2
# ╠═46a21d1a-0f79-4a69-bea0-cb5e91a77814
# ╠═935cd75c-d783-4991-a32c-530c8dce319d
# ╠═12a6ae26-0e3d-40a2-a1be-6339cc94d815
# ╠═a362f12d-c198-4f7f-803a-a5113ee092be
# ╠═4400f452-7522-4088-9838-4f8807736210
# ╠═06109ba2-d27d-40fa-a581-f3947939b2e3
# ╠═e686e501-f772-4e6d-93ec-7276f414a444
# ╠═5d1b1249-56cf-405e-af22-a1fe80ddb9fe
# ╠═b0f70220-c00d-464e-aa07-dc13f206c0f5
# ╠═b7abc23a-78e8-4ac6-82e1-d757c7ed363f
# ╠═562e4519-10ed-4299-8997-23a7ef4e4596
# ╠═46606ae7-4dee-4282-88f4-3a0f5b75f604
# ╠═cdbec343-df31-4556-9e99-998e44ef4536
# ╠═f394c19b-532c-4b90-9709-87207d52fe41
# ╠═40c105ce-93a1-41db-902d-92c9af9848cd
# ╠═8e1c27e9-ca36-4de2-ad31-46f96d84a234
# ╠═20e916a9-2698-466e-bc27-7fe9e62cec17
# ╠═676296df-eff4-4111-a4c5-e42c01a02a78
# ╠═13cd32ed-49cc-4453-9d35-e3e36598e9ad
# ╠═5d023513-c137-4858-9ce5-4fceb495314e
# ╠═5cfc7960-aa0e-46d8-ab07-477ffa2ff821
# ╠═d6ff5fb7-28e5-4266-b64b-bd8e19d92fdb
# ╠═d59e61d8-9103-4601-b823-9b0f4a2c93ee
# ╠═8fd3718f-3c96-4449-a6fe-2366af70e4c8
# ╠═a51775af-210d-4efc-912e-5d2287f7426e
# ╠═a3107949-7c74-4e7e-a1ac-1004fe8ea895
# ╠═e801e8eb-8d5d-436b-8bee-59a40ee0211a
# ╠═a3d40b6c-cb27-4d00-a4dc-9508f1539ec5
# ╠═5508044e-4686-4919-9c89-6efa88835e4e
# ╟─1c5a96eb-8281-42e9-ae69-8cf4fb22836c
# ╠═58f898c1-aeeb-4477-8c64-3f5aab9f73df
# ╟─92099d24-e94a-43be-b94f-6ffbff15d7c6
# ╠═c0cba5f4-f6ca-4b91-842e-965df6be9d1f
# ╠═870de4b2-316c-487a-85b2-68d34da28203
# ╠═ebbf860b-8004-4aec-9a03-ae66721a7df6
# ╠═5b0d1811-0a85-41ec-91ae-7c3d1f6fd10f
# ╠═ef732c7b-8ff5-4149-bd18-080a4be144b0
# ╠═f34a945e-8929-42ec-9e9d-18955d05810c
# ╠═1eeba89a-23be-4992-8927-36ec3c7d5589
# ╠═492b5a7e-5a28-4bba-a7b8-63bfb9e3d859
# ╟─4798a1ba-25bf-407d-acfe-660ea4c951cd
# ╠═4590e184-9100-4a17-99c5-f3fc9c1d7573
# ╠═f422d0d5-4f65-4716-9074-b708ae876d1b
# ╠═18a11285-94d1-4288-a7ff-cff30d12eeda
# ╠═a65eade6-43c7-42e8-8f46-e0d483f59086
# ╠═2433ab36-5df8-4aac-b16a-14a28fe8228c
# ╠═983067ba-645f-4d52-915b-4e834dc21a4b
# ╠═ed0ba43e-e362-42b0-bde0-f6daf2e75e6a
# ╠═04c5a231-293b-4d7a-8049-13ffc2d0b322
# ╠═49d04b84-5b2b-4dd0-931f-bfc3532d70e2
# ╠═ab53f49a-0995-4a4b-9a54-8547a6ea0618
# ╠═221356ba-bf7e-4d0a-b171-b171fa8a8171
# ╠═3e5557ca-a3ec-421b-bac2-fc3da81e648a
# ╠═dbc75111-1fb0-4158-8a74-1483671711ba
# ╠═1c792be0-5f2c-4538-ba60-009c342f0735
# ╠═a9934483-1263-4f3c-aa31-c59ffa049aa3
# ╟─6ccb5535-7aa9-4e67-8a6c-5c24262b92f4
# ╠═9380d6f3-5c79-4825-b796-d0ce6bfe1d88
# ╠═7b575a85-ad47-41b2-a491-00574ba48ef4
# ╠═f8e3ed46-276e-4810-94da-7092217d8b6e
# ╟─07c98423-087a-4594-9c3f-133f3c5e65c9
# ╠═e4314984-6e10-4bef-874f-f96ea6102cc8
# ╠═37c93d19-1a3c-45ba-b8f7-f72686fa50c4
# ╠═443a6de8-a004-4f85-8418-516baf0b12bc
# ╠═df4064f5-c205-4434-99c4-2b56cda04563
# ╠═0f172f57-1606-4f7b-aaaf-67fd22b3b4ce
# ╠═010a32e4-a2bc-4f06-a69a-757ca84dcbe8
# ╠═a9e0e47d-d6cf-4095-8492-47342ba72181
# ╠═1e81ba44-cbe5-4949-82f4-f0468e77ceef
# ╠═ddc8b42f-94e5-4dd9-ad92-62ed012aed44
# ╠═77b98d13-276a-477f-ab36-05d8053a8bee
# ╠═bb92f6d1-b3ad-4dca-80e5-deb143a037a9
# ╠═5d58e541-e68c-48f3-ac23-740f2c776042
# ╟─743f43b1-821a-421a-91cc-8e081997791d
# ╠═4be1d306-980b-4a09-a32b-a61f29422a10
# ╠═38392a29-0c82-41ba-bfc3-7d601a97d78b
# ╠═f485d831-278b-4a90-a8a0-87faf28a01c7
# ╠═23781193-0577-4746-b70c-4815e95a01e4
# ╠═f3f729bb-7c4e-4a3f-9a10-166397d6e965
# ╟─5f116107-5558-491d-a463-1d28832d30b0
# ╟─b29dab9f-0752-4246-910e-92bdeeb7ebb8
# ╠═d2a532eb-9e0f-4cd2-9a79-a838ff0d6091
# ╠═dd361f49-9296-4d60-a059-51f686bdb231
# ╠═ba33d5ce-dda8-4702-904a-c7d7d3a56e12
# ╠═a36c1b33-0b9c-417b-b2b2-e9e4c96459b7
# ╠═89a26458-b3b0-4934-bab9-e952d191c5d1
# ╠═9b567002-3bbd-4e4e-8722-f682c1ca4ae2
# ╠═e923e7c1-44d3-4128-af19-b9d27d020181
# ╠═84ce232b-c9a5-448b-a5fe-f6804f3e8d83
# ╠═233e7cdb-14e0-488b-b721-1294ba2f5a40
# ╠═7af37246-8dc6-4b00-9743-65f1057fe621
# ╠═c0e8fcf6-072d-44e6-a18e-1a82ff1ab78d
# ╠═571954ee-bfcd-4e23-bafa-b18d3a07d512
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
