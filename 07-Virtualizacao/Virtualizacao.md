
# Virtualização

## Abstração de recursos físicos como se fossem Lógico!

Consiste em emular um ambiente computacional de forma isolada, tornando capaz de oferecer mais recursos ao user finais

Virtualização é a capacidade de transformar um equipamento fisico Ex: Servidor, em ambiente computacionais diferentes e distintos!

<on-section-content>
      <h1 class="on-text-uppercase">
        <div class="on-font-gotham-htf-book on-font-size-medium"></div>
        <div class="on-font-gotham-htf-ultra on-font-size-large">Hardware e virtualização</div>
      </h1>
      <p>O hardware é a parte física de um sistema computacional, composto por uma variedade de componentes que trabalham em conjunto para executar tarefas específicas. Esses componentes incluem a placa-mãe, processador, memória RAM, disco rígido, placa de vídeo, fonte de alimentação e outros dispositivos periféricos. Cada componente é essencial para o funcionamento adequado do sistema.
      </p>
      <p>
        A placa-mãe é o componente principal do hardware, que conecta todos os outros componentes e permite a comunicação entre eles. O processador é o cérebro do sistema, responsável por executar instruções e controlar a velocidade de processamento. A memória RAM armazena temporariamente dados e instruções que são usados pelo processador. O disco rígido é usado para armazenar dados permanentemente, enquanto a placa de vídeo é responsável por gerar imagens para o monitor.
      </p>
      <p>
        A virtualização é uma tecnologia que permite que um único sistema hospede vários sistemas operacionais simultaneamente, isolando cada um deles do restante do sistema. Isso permite que diferentes sistemas operacionais e aplicativos sejam executados em uma única máquina, aumentando a eficiência e reduzindo os custos. A virtualização é geralmente implementada por meio de software especializado, que cria ambientes virtuais independentes para cada sistema operacional.
      </p>
      <p>
        Embora a virtualização seja uma tecnologia importante, o hardware é fundamental para garantir o desempenho adequado de qualquer sistema computacional. Cada componente do hardware deve ser selecionado cuidadosamente para garantir que o sistema seja capaz de lidar com as tarefas necessárias. Um hardware bem projetado e configurado pode melhorar significativamente a eficiência e a produtividade de um sistema, permitindo que ele opere com rapidez e eficiência em qualquer cenário.
      </p>
      <h2>Placa-mãe</h2>
      <p>
        A placa-mãe é um componente essencial em qualquer computador, pois é responsável por conectar e coordenar todos os outros componentes do sistema. Ela fornece uma plataforma para a CPU, memória RAM, discos rígidos e outros dispositivos conectados. Com a crescente popularidade da virtualização, a placa-mãe também se tornou um fator crítico na eficiência e capacidade de um sistema virtualizado. 
      </p>
      <on-box>
        <p>
          Para a virtualização funcionar corretamente, a placa-mãe deve suportar recursos específicos. Um dos recursos mais importantes é a virtualização de CPU, que permite que a CPU execute várias máquinas virtuais simultaneamente. A placa-mãe também deve ter suporte para tecnologias de virtualização de E/S, que permitem que os dispositivos virtuais acessem os recursos de hardware físicos diretamente, sem passar pelo sistema operacional host.
        </p>
      
</on-box>
      
      <on-figure description="Exemplo de BIOS com Virtualização desabilitada" img="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/02140527/on-image-1-1024x666.jpg"><figure>
  <a class="on-image-popup" target="_blank" href="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/02140527/on-image-1-1024x666.jpg">
    <img src="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/02140527/on-image-1-1024x666.jpg" alt="Exemplo de BIOS com Virtualização desabilitada" title="Exemplo de BIOS com Virtualização desabilitada">
  </a>
  <figcaption style="width: 940px;">Fig. 1 - Exemplo de BIOS com Virtualização desabilitada</figcaption>
</figure>

</on-figure>
      <p>
        A maioria das placas-mãe modernas suporta virtualização por hardware, o que significa que a CPU e a placa-mãe possuem instruções e recursos dedicados para acelerar a execução de máquinas virtuais. A tecnologia mais comum para virtualização por hardware é a Intel VT-x ou AMD-V.
      </p>
      <p>
        No entanto, algumas placas-mãe possuem a opção de desativar a virtualização por hardware na BIOS. A BIOS (Basic Input/Output System) é o firmware responsável por inicializar o hardware do computador e carregar o sistema operacional. Quando a virtualização está desabilitada na BIOS, isso significa que o hardware não possui suporte para virtualização e, portanto, não é possível executar máquinas virtuais.
      </p>
      <p>
        A desativação da virtualização por hardware na BIOS pode ser necessária em alguns casos, como em ambientes onde a segurança é primordial. Ao desativar a virtualização, é possível evitar a execução de sistemas operacionais não autorizados, como malware e vírus.
      </p>
      <p>
        No entanto, a desativação da virtualização pode impedir a execução de sistemas legítimos, como máquinas virtuais para testes e desenvolvimento de software. Por isso, é importante verificar as configurações da BIOS antes de desativar a virtualização por hardware.
      </p>
      <p>
        Além disso, a placa-mãe também deve ter suporte para a tecnologia de boot seguro (Secure Boot), que protege o sistema contra ataques maliciosos. O boot seguro verifica a autenticidade de todos os componentes do sistema durante o processo de inicialização e impede que software malicioso seja carregado no sistema.
      </p>
      <p>
        Outro fator importante é a capacidade da placa-mãe de suportar grande quantidade de memória RAM, o que é crucial para o desempenho de máquinas virtuais. Máquinas virtuais consomem muita memória, portanto, é importante ter uma placa-mãe que suporte a quantidade de memória necessária para executar várias máquinas virtuais de maneira eficiente.
      </p>
      <p>
        A placa-mãe também deve ter suporte para redes virtuais, que permitem que as máquinas virtuais se comuniquem entre si e com a rede física. A placa-mãe deve ter recursos para segmentação de redes, NAT e encaminhamento de pacotes, entre outros recursos.
      </p>
      <p>
        A placa-mãe é um componente crítico em sistemas virtualizados. Ela deve ter suporte para virtualização de CPU, tecnologias de virtualização de E/S, boot seguro, grande quantidade de memória RAM e recursos de rede virtual. Sem esses recursos, a virtualização não seria possível ou seria ineficiente. É importante selecionar uma placa-mãe adequada para a virtualização, a fim de garantir a eficiência e capacidade do sistema virtualizado.
      </p>
      <h2>Memória RAM</h2>
      <p>
        A memória RAM (Random Access Memory) é um componente essencial em qualquer sistema de computador moderno. Ela é um tipo de memória volátil, o que significa que os dados armazenados nela são temporários e são perdidos quando a energia é desligada. Isso é diferente da memória de armazenamento permanente, como os discos rígidos, onde os dados são mantidos mesmo após a energia ser desligada. A memória RAM é usada para armazenar temporariamente dados e programas que estão em uso pelo sistema operacional e pelos aplicativos em execução. Ela é rapidamente acessível e permite que o processador leia e escreva dados com alta velocidade.
      </p>
      <p>
        Quando se trata de virtualização, a memória RAM desempenha um papel importante. Cada máquina virtual precisa de sua própria alocação de memória, e a quantidade de memória que cada máquina virtual pode acessar é limitada pela quantidade total de memória física disponível no sistema. Isso significa que, se houver muitas máquinas virtuais em execução ao mesmo tempo, a memória pode se tornar um recurso escasso. Para contornar esse problema, a virtualização usa técnicas de gerenciamento de memória que permitem que as máquinas virtuais compartilhem a memória física disponível de maneira eficiente.
      </p>
      <on-figure description="Exemplo Swap de memória" img="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/05163232/image-31-1024x666.jpg"><figure>
  <a class="on-image-popup" target="_blank" href="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/05163232/image-31-1024x666.jpg">
    <img src="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/05163232/image-31-1024x666.jpg" alt="Exemplo Swap de memória" title="Exemplo Swap de memória">
  </a>
  <figcaption style="width: 940px;">Fig. 2 - Exemplo Swap de memória</figcaption>
</figure>

</on-figure>
      <p>
        Existem duas principais técnicas de gerenciamento de memória utilizadas na virtualização: swap de memória e alocação de memória dinâmica. Swap de memória é uma técnica que permite que a memória física seja usada como um cache para dados que não são frequentemente usados. Quando a memória física está cheia, os dados mais antigos são movidos para o armazenamento em disco, permitindo que novos dados sejam carregados na memória. A alocação de memória dinâmica, por outro lado, é uma técnica que permite que a memória seja compartilhada entre as máquinas virtuais de maneira eficiente. Isso é feito usando um algoritmo de gerenciamento de memória que monitora o uso de memória por cada máquina virtual e aloca mais memória para as máquinas que precisam dela.
      </p>
      <p>
        A memória RAM é um componente crítico em qualquer sistema de computador moderno e desempenha um papel importante na virtualização, permitindo que as máquinas virtuais acessem rapidamente os dados necessários. A memória RAM é volátil e é usada para armazenar temporariamente dados e programas que estão em uso pelo sistema operacional e pelos aplicativos em execução.
      </p>
      <h2>Disco Rígido</h2>
      <p>
        Os discos rígidos (HDD, do inglês hard disk drive) e os discos de estado sólido (SSD, do inglês solid-state drive) são duas tecnologias de armazenamento que apresentam diferenças significativas em termos de velocidade, capacidade e confiabilidade.
      </p>
      <p>
        Os discos rígidos são compostos por discos magnéticos que giram em alta velocidade e são lidos por uma cabeça de leitura. Eles têm sido a tecnologia de armazenamento mais comum para computadores pessoais e servidores por décadas, devido à sua grande capacidade de armazenamento, confiabilidade e preço acessível.
      </p>
      <on-col-float size="50" to="left" class="on-col-float-left on-col-float-50">


        <on-figure description="Disco Rígido" img="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/02140531/on-image-2-1024x666.jpg"><figure>
  <a class="on-image-popup" target="_blank" href="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/02140531/on-image-2-1024x666.jpg">
    <img src="https://s3.amazonaws.com/b5fa8c4024182e6fb580b451bb51ed1719e4949feb566bd9b6b92b85df31576/wp-content/uploads/2023/05/02140531/on-image-2-1024x666.jpg" alt="Disco Rígido" title="Disco Rígido">
  </a>
  <figcaption style="width: 460px;">Fig. 3 - Disco Rígido</figcaption>
</figure>

</on-figure>
      
</on-col-float>
      <p>
        Os SSDs, por outro lado, usam memória flash para armazenar dados, o que lhes permite oferecer velocidades muito mais rápidas de leitura e gravação em comparação com os HDDs. Isso é possível porque os SSDs não têm partes móveis e, portanto, não precisam esperar que as cabeças de leitura se movam para acessar os dados.
      </p>
      <p>
        Os SSDs também são mais duráveis do que os HDDs, já que não são suscetíveis a falhas mecânicas causadas por partes móveis. No entanto, os SSDs ainda são mais caros do que os HDDs em termos de preço por gigabyte de armazenamento.
      </p>
      <p>
        No contexto da virtualização, a escolha do tipo de disco de armazenamento pode ter um impacto significativo no desempenho e na eficiência de uma máquina virtual. Como as máquinas virtuais compartilham o hardware físico com outras máquinas virtuais, o armazenamento pode ser um gargalo significativo que limita o desempenho da máquina virtual.
      </p>
      <p>
        Nesse sentido, os SSDs têm uma vantagem significativa em relação aos HDDs, uma vez que oferecem velocidades de leitura e gravação muito mais rápidas, permitindo que as máquinas virtuais acessem os dados de maneira mais eficiente. Além disso, como os SSDs têm tempos de acesso mais rápidos, eles podem reduzir o tempo que as máquinas virtuais levam para iniciar e desligar.
      </p>
      <p>
        No entanto, os SSDs também podem apresentar algumas desvantagens no contexto da virtualização. Como eles são mais caros em termos de preço por gigabyte, o uso de SSDs pode ser menos econômico do que o uso de HDDs em ambientes de virtualização com grandes quantidades de dados. Além disso, os SSDs podem apresentar maior desgaste quando usados em ambientes de virtualização de alta demanda, o que pode afetar a durabilidade e a vida útil do dispositivo.
      </p>
      <p>
        A escolha entre HDDs e SSDs depende das necessidades de armazenamento, desempenho e confiabilidade do usuário. Em ambientes de virtualização, os SSDs podem oferecer vantagens significativas em termos de desempenho, mas podem ser menos econômicos do que os HDDs em grandes quantidades de dados. É importante considerar cuidadosamente esses fatores ao selecionar um disco para uso em ambientes de virtualização.
      </p>
    
</on-section-content>

