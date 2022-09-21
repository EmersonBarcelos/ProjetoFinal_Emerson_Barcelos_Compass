<h1>Automação de Testes ServeRest</h1>
Testes aumomatizados para o front-end do site ServeRest

<h2>Apresentação</h2>
Na automação é feito os desdes de usuário de sistema, cadastro de usuários, login, pesquisa de itens e adição de itens ao carrinho de compras


<h2>Pré requisitos</h2>
Tecnologias e ferramentas ultilzadas no projetos:</br>

  <ul>
    <li><a href="https://rubyinstaller.org/downloads/">RUBY 3.1.2,</a></li>
    <li><a href="https://cmder.app/">CMDER</a></li>
    <li><a href="https://git-scm.com/">GIT</a></li>
    <li><a href="https://code.visualstudio.com/">VSCODE</a></li>
  </ul>

Instalação compativel com Windows

<h2>Instalação</h2>

Feita a instalação das ferramentas abra o CMDER e rode o seguinte comando:
  
<pre>
<span style="font-weight: 400">gem install bundler</span>
</pre>

Agora para clonar o projeto em sua maquina abra o GIT BASH em uma pasta e rode:

<pre>
<span style="font-weight: 400">git clone https://github.com/EmersonBarcelos/RealityStone_Emerson_Barcelos_Compass.git</span>
</pre>

Abra o CMDER na pasta do projeto e faça a instalação das dependencias com o comando:

<pre>
<span style="font-weight: 400">bundle install</span>
</pre>

<h2>Execução dos testes</h2>

Para a execução automatizada dos testes abra o CMDER na pasta do projeto e rode:

<pre>
<span style="font-weight: 400">bundle exec cucumber -p default r</span>
</pre>

<h2>Deployment</h2>
Para atualização do projeto e correção de bugs:
<pre>
<span style="font-weight: 400">git checkout -b "develop"</span>
</pre>
<pre>
<span style="font-weight: 400">git commit -m "Correção <correção feita> "</span>
</pre>
<pre>
<span style="font-weight: 400">git push origin https://github.com/EmersonBarcelos/ProjetoFinal_Emerson_Barcelos_Compass</span>
</pre>

</ul>

<h2>Contribuições</h2>

Para contruibuições faça o commit na brach "develop" com a descrição da atualização para analise.

<h3>Autor</h3>
Emerson Barcelos - 06/09/22  - https://github.com/EmersonBarcelos/ProjetoFinal_Emerson_Barcelos_Compass

<h3>License</h3>

Software pode ser modificado, usado comercialmente e distribuído.
Software pode ser modificado e usado de forma privada.
A licença e os direitos precisam ser incluídos no software.
Os autores dos software não provêm garantias.

<h3>Créditos</h3>
fontes ultilizadas:
<ul>
  <li>https://github.com/site-prism/site_prism</li>
  <li>https://github.com/cucumber/cucumber-ruby</li>
  <li>https://github.com/teamcapybara/capybara</li>
</ul>
Agradecimentos ao <a href="https://github.com/teamcapybara/capybara">Willian Soares da Silva</a>

