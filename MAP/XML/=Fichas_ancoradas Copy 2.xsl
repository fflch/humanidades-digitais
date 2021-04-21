<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////   Template for Dir structure: HD/MAP/XML     /////-->
<!--/////                                              /////-->
<!--/////      Link to files in /HD   = ../            /////--> 
<!--/////      Link to files in /MAP  = <self>         /////-->
<!--/////                                              /////-->
<!--/////                                              /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->

<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////    Template 1 is for all html outputs!       /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////--> 

<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////        TEMPLATE 1: Set HMTL structure        /////-->
<!--/////   Match Root, build html; 'apply-templates'  /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->

<xsl:template match="/">
  
  <html>
    
    <head>
      
      	<meta charset="UTF-8" />
	<meta name="viewport"
              content="width=device-width, initial-scale=1" />
	
	<meta name="description"
              content="Site do Projeto Mulheres na América Portuguesa, do grupo de pesquisas Humanidades Digitais, Núcleo de Apoio à Pesquisa em Etimologia e História da Língua Portuguesa da Faculdade de Filosofia, Letras e Ciências Humanas da Universidade de São Paulo" />
          
	<meta name="keywords"
              content="Mulheres na América Portuguesa, M.A.P, Humanidades Digitais, Grupo de Pesquisas, Núcleo de Apoio à Pesquisa em Etimologia e História da Língua Portuguesa, NEHiLP, Universidade de São Paulo, USP, Projeto Mulheres na América Portuguesa, Digital Humanities" />
          
	<meta name="author"
              content="Maria Clara Paixão de Sousa" />
		
	<title>M.A.P.: Mulheres na América Portuguesa ::
        Grupo de Pesquisas Humanidades Digitais ::</title>
      
      
      <link rel="stylesheet" href="../../HD.css" type="text/css" />
      <link rel="icon" href="../Images/HD_favicon.png" />
      
  </head>
    
  <body>
    
  <div id="Content">
      <div id="Header">
	<div id="Header-Title" class="Header-white">
          <a name="Top"></a>
		<h1>M.A.P.</h1>
		<p><a href="../index.html">Grupo de pesquisas Humanidades Digitais</a>
                  <br/>Projeto Mulheres na América Portuguesa</p>
	</div>

 	<div class="DropdownNavbar-MAP"><!--#DropdownNavbar-->
		<div class="dropdown-keepwhite"><!-- home-->
			<div class="falsebutton-keepwhite">
				<a href="../index.html">Home</a>
			</div>
		</div><!--home-->
		<div class="dropdown-keepwhite"><!--MAP menu 1--> 
			<div class="falsebutton-withcontent-keepwhite">
				<a href="index.html">M.A.P.</a>
			<i class="arrow right"></i>
			</div>
			<div class="dropdown-content-MAP">	
			<a href="MAP_Recursos.html">Catálogos</a>	
			<a href="MAP_Projeto.html">Projeto</a>
			<a href="MAP_Equipe.html">Equipe</a>
			</div>
		</div><!--MAP menu 1-->
	</div><!--#DropdownNavbar-->
      </div><!--Header-->
 
 <div id="Main" class="Main-MAP-white">
  
  
  <h1>Fichas individuais</h1>
  <h2>Documentos primários acessados, ou acessados e transcritos</h2>
  
  
  <!--Menu-->
  
  <div style="margin-top: 20px; margin-bottom: 70px;"><!--FalseHead-->
  <div class="DropdownNavbar-long"> 
  <div class="dropdown-long">
    <div class="falsebutton-long">
			<a href="">Lista de nomes:
			<i class="arrow down"></i>
			</a>
    </div>
        <div class="dropdown-content-long">  
        <xsl:for-each select="Document/Folder[@name='Nomeadas em documento primário']/Placemark | Document/Folder[@name='Autoras']/Placemark ">
          <xsl:sort select="name"/> 
        <xsl:element name="a">
        <xsl:attribute name="href">
          #<xsl:value-of select="normalize-space(ExtendedData/Data[@name='Código'])"/>
        </xsl:attribute>
        <xsl:value-of select="normalize-space(name)"/>
      </xsl:element>
        </xsl:for-each>
        </div> 
      </div>
  </div>
  </div><!--FalseHead--> 
  <!--Menu-->

          
  </div><!--Main-->
</div><!--Content-->
 


 <div id="Main" class="Main-MAP" style="background-image: none;">

          <xsl:apply-templates />
    
 </div>
 
 <div id="Navbar" class="Navbar-bottom" style="border-top: 1px solid #999999;"><!--#Navbar-bottom-->
  <div class="Navbar-bottom-wrap"><!--#Navbar-bottom-wrap-->
    <ul class="menu-simple"><!--ul.menu-simple-->
	<li id="menu-item-1" class=""><a href="index.html">M.A.P. Home</a></li>
	<li id="menu-item-2" class=""><a href="MAP_Resumo.html">M.A.P. Projeto</a></li>
	<li id="menu-item-3" class=""><a href="MAP_Recursos.html">M.A.P. Recursos</a></li>
	<li id="menu-item-4" class=""><a href="../index.html">Humanidades Digitais</a></li>
    </ul><!--ul.menu-simple-->
  </div><!--#Navbar-bottom-wrap-->
</div><!--#Navbar-bottom-->
        
<div id="Footer"><!--#Footer-->

	<div id="footer_1" class="footer_left">
		<p>
		<a href="../index.html">Humanidades Digitais</a><br />
		Grupo de Pesquisas<br />
		Universidade de São Paulo
		</p>	
	</div>
	
	<div id="footer_2" class="footer_right">
		<p>
		<a href="http://nehilp.prp.usp.br">NEHiLP</a><br />
		Núcleo de Apoio à Pesquisa<br />
		Universidade de São Paulo<br />
		<br />
		nehilp@usp.br
		<br />
		<br />
		Av. Prof. Luciano Gualberto, 403<br />
		DLCV - FFLCH<br />
		Prédio de Letras, Sala 01<br />
		Cidade Universitária<br />
		CEP 05508-900<br />
		São Paulo - SP - Brasil<br />
		+55 (11) 3091-4294</p>
	</div>
</div><!--#Footer-->

  </body>
  </html>

</xsl:template>

<!--////////////////////////////////////////////////////////-->
<!--/////            BASE TEMPLATE: END                /////-->
<!--////////////////////////////////////////////////////////-->


<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////        TEMPLATES FOR SPECIFIC FILES          /////-->
<!--/////                                              /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->  

<xsl:template match="name"></xsl:template>
<xsl:template match="description"></xsl:template>
<xsl:template match="Style"></xsl:template>
<xsl:template match="StyleMap"></xsl:template>


<xsl:template match="Folder[@name='Ephemerae']"></xsl:template>
<xsl:template match="Folder[@name='Trajetórias de correspondência']"></xsl:template>


<xsl:template match="Folder[@name='Nomeadas em documento primário']">

        <xsl:apply-templates/>
  
</xsl:template>

<xsl:template match="Folder[@name='Autoras']">
  
 
        <xsl:apply-templates/>
  
</xsl:template>

<xsl:template match="Placemark">

      <br/>
      <br/>
      <xsl:for-each select="ExtendedData">
      <xsl:sort select="preceding-sibling::name"/>
      
  
  <div id="Ficha">
    
      <p style="font-size: 0.9rem; color: #666666;">
      <xsl:element name="a">
        <xsl:attribute name="name">
          <xsl:value-of select="normalize-space(Data[@name='Código'])"/>
        </xsl:attribute>
        <xsl:value-of select="normalize-space(Data[@name='Código'])"/>
      </xsl:element>
      </p>
      
      <p align="right"><a href="#Top" class="simple">[voltar para a lista]</a></p>

      <h1 style="color: #ffffff; font-size: 2.50rem;"><xsl:value-of select="preceding-sibling::name"/></h1>
      <p style="color: #ffffff;"><xsl:value-of select="Data[@name='Descrição']"/></p>
      
      
      
  <table class="CatalogTable-Ficha" style="border: 1px solid #cccccc; padding: 15px; width: 80vw; background: #ffffff;">
  <tbody>
    
  <tr>
    <td style="vertical-align: text-top; width: 40%;">

      <xsl:choose><!--haver ou não imagem-->
          <xsl:when test="Data[@name='Imagem']/value[text()='Sem imagem']"><!--Se não houver imagem-->
          <div style="color: #999999; text-align: center; height: 250px; padding-top: 150px; border: 1px solid #cccccc;"><em>(documento sem imagem)</em></div>
          </xsl:when>
      
          <xsl:otherwise><!--Se houver imagem-->
    
            <xsl:element name="img">
            <xsl:attribute name="src">
              <xsl:value-of select="normalize-space(Data[@name='Imagem'])"/>
            </xsl:attribute>
            <xsl:attribute name="width">
              400vw
            </xsl:attribute>
            </xsl:element>
        
        </xsl:otherwise><!--Se houver imagem-->
      </xsl:choose><!--haver ou não imagem-->

    </td> 

    <td style="padding: 5px 5px 5px 35px; width: auto; min-height: 300px; vertical-align: top;">
      
    <xsl:choose><!--Se autora-->
          
    <xsl:when test="Data[@name='Perfil']/value[text()='Autora']">  
 
    <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Voz']"/></em></span>
    <br/>
    <br/>
    <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Nomeação']"/></em></span>
    <br/>
    (<xsl:value-of select="Data[@name='Ano do documento']"/>)
      
        
        <xsl:choose><!--Se houver dois documentos-->
          <xsl:when test="Data[@name='Número de documentos']/value[text()='2']">
        <br/>
        <br/>
        <br/>
        <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Voz no segundo documento']"/></em></span>
        <br/>
        <br/>
        <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Nomeação no segundo documento']"/></em></span>
        <br/>
        (<xsl:value-of select="Data[@name='Ano do documento, segundo documento']"/>)
        </xsl:when>
          <xsl:otherwise>
           
          </xsl:otherwise>
        </xsl:choose><!--Se houver dois documentos-->
        
        
        <xsl:choose><!--Se houver três documentos-->
          <xsl:when test="Data[@name='Número de documentos']/value[text()='3']">
        <br/>
        <br/>
        <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Voz no segundo documento']"/></em></span>
        <br/>
        <br/>
        <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Nomeação no segundo documento']"/></em></span>
        <br/>
        (<xsl:value-of select="Data[@name='Ano do documento, segundo documento']"/>)
        <br/>
        <br/>
        <br/>
        <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Voz no terceiro documento']"/></em></span>
        <br/>
        <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Nomeação no terceiro documento']"/></em></span>
        <br/>
        (<xsl:value-of select="Data[@name='Ano do documento, terceiro documento']"/>)
    
          </xsl:when>
          <xsl:otherwise>
        
           </xsl:otherwise>
        </xsl:choose><!--Se houver três documentos-->
 
  </xsl:when>
  <xsl:otherwise><!--Se não autora -->
  
        <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Nomeação']"/></em></span>
        <br/>
        <br/>
        <xsl:text>- </xsl:text><xsl:value-of select="Data[@name='Autoria do documento']"/><xsl:text>, </xsl:text><xsl:value-of select="Data[@name='Ano do documento']"/>
        
        <xsl:choose><!--Se houver dois documentos-->
          <xsl:when test="Data[@name='Número de documentos']/value[text()='2']">
        <br/>
        <br/>
        <br/>
        <span style="font-size: 1.20rem;"><em><xsl:value-of select="Data[@name='Nomeação no segundo documento']"/></em></span>
        <br/>
        <xsl:text>- </xsl:text><xsl:value-of select="Data[@name='Autoria do documento, segundo documento']"/><xsl:text>, </xsl:text><xsl:value-of select="Data[@name='Ano do documento, segundo documento']"/>
        </xsl:when>
          <xsl:otherwise>
           
          </xsl:otherwise>
        </xsl:choose><!--Se houver dois documentos-->
        
        <xsl:choose><!--Se houver três documentos-->
          <xsl:when test="Data[@name='Número de documentos']/value[text()='3']">
        <br/>
        <br/>
        <em><xsl:value-of select="Data[@name='Nomeação no segundo documento']"/></em>
        <br/>
        <xsl:text>- </xsl:text><xsl:value-of select="Data[@name='Autoria do documento, segundo documento']"/><xsl:text>, </xsl:text><xsl:value-of select="Data[@name='Ano do documento, segundo documento']"/>
        <br/>
        <br/>
        <em><xsl:value-of select="Data[@name='Nomeação no terceiro documento']"/></em>
        <br/>
        <xsl:text>- </xsl:text><xsl:value-of select="Data[@name='Autoria do documento, terceiro documento']"/><xsl:text>, </xsl:text><xsl:value-of select="Data[@name='Ano do documento, terceiro documento']"/>
        </xsl:when>
          <xsl:otherwise>
           
          </xsl:otherwise>
        </xsl:choose><!--Se houver três documentos-->

  </xsl:otherwise><!--Se não autora -->
  </xsl:choose><!--Se autora-->   
    
    </td>
  </tr>
  
  <tr>
     <td style="padding: 5px 5px 5px 15px; width: auto; min-height: 300px; vertical-align: top;">

      
        <h2>Transcrição parcial:</h2>
        <div style="font-size: 0.9rem; padding-left: 15px;">
        
        <xsl:choose><!--haver ou não transcrição-->
          <xsl:when test="Data[@name='Transcrição parcial']/value[not(text ())]"><!--Se não houver transcrição"-->
          <em>(nenhuma transcrição conhecida)</em>
          </xsl:when>
      
          <xsl:otherwise><!--Se houver transcrição-->
          
          <xsl:value-of select="Data[@name='Transcrição parcial']"/>
        <br/>
        <br/>
        (Transcrito por: <xsl:value-of select="Data[@name='Autoria da transcrição']"/>)
        
        </xsl:otherwise><!--Se houver transcrição-->
      </xsl:choose><!--haver ou não transcrição-->
       </div>
      </td>

     <td style="padding: 5px 5px 5px 35px; width: auto; min-height: 300px; vertical-align: top;">    
        <h2>Menção em documentos secundários:</h2>
        <div style="font-size: 0.9rem; padding-left: 15px;">
        
        <xsl:choose><!--haver ou não menção-->
          <xsl:when test="Data[@name='Trecho de menção na bibliografia']/value[not(text ())]"><!--Se não houver menção value[text()=null]"-->
          <em>(nenhuma menção conhecida)</em>
          </xsl:when>
      
          <xsl:otherwise><!--Se houver menção-->
          
          "<xsl:value-of select="Data[@name='Trecho de menção na bibliografia']"/>"
        <br/>
        <br/>
        (Citado em: <xsl:value-of select="Data[@name='Fonte da menção na bibliografia']"/>)
        
        </xsl:otherwise><!--Se houver menção-->
      </xsl:choose><!--haver ou não menção-->
       </div>
      
      <br/>
      <br/>
      
     </td>
  </tr>
  <tr>
    <td colspan="2" style="padding: 5px 5px 5px 35px; width: auto; min-height: 300px; vertical-align: top; border-top: 1px solid #cccccc;">
        
      <h2>Dados biográficos conhecidos:</h2>
      
      <div style="font-size: 0.9rem; padding-left: 15px;">
       <span style="color: #999999;">Idade: </span><xsl:value-of select="Data[@name='Idade']"/><br/>
        <span style="color: #999999;">Estatuto social: </span><xsl:value-of select="Data[@name='Estatuto social']"/><br/>
        <span style="color: #999999;">Estado civil: </span><xsl:value-of select="Data[@name='Estado civil']"/><br/>
        <span style="color: #999999;">Morada: </span><xsl:value-of select="Data[@name='Morada']"/><br/>
        <span style="color: #999999;">Naturalidade: </span><xsl:value-of select="Data[@name='Naturalidade']"/><br/>
      </div>
      <br/>


   
    </td>
  
  </tr>
  <tr>
      
    <td style="vertical-align: text-top; 5px 5px 5px 35px; border-top: 1px solid #666666;">
        
        <h2><xsl:text>Documentos:</xsl:text></h2>
        
          <xsl:value-of select="Data[@name='Autoria do documento']"/>
          <xsl:text> </xsl:text>.
          <xsl:value-of select="Data[@name='Tipo de documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Local do documento']"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Ano do documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Arquivo']"/> <xsl:text> - </xsl:text>
          <xsl:value-of select="Data[@name='Indexador na fonte']"/>. <xsl:text> </xsl:text>
        
        <xsl:choose><!--haver ou não documento digitalizado-->
          <xsl:when test="Data[@name='URL da fonte']/value[text()='Documento não digitalizado']"><!--Se não houver digitalização-->
          <span style="color: #999999;"><em>Documento não disponível em repositórios digitais</em></span>. <span style="color: #999999;"><xsl:value-of select="Data[@name='Código']"/></span>.
          </xsl:when>
      
          <xsl:otherwise><!--Se houver digitalização-->
    
          <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="normalize-space(Data[@name='URL da fonte'])"/></xsl:attribute>
            <xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir no repositório original</xsl:attribute>
            <xsl:value-of select="Data[@name='URL da fonte']"/>
          </xsl:element>. <span style="color: #999999;"><xsl:value-of select="Data[@name='Código']"/></span>.
        
        </xsl:otherwise><!--Se houver digitalização-->
      </xsl:choose><!--haver ou não documento digitalizado-->

          <br/>
          
        
        <xsl:choose><!--Haver ou não dois documentos: -->
          
          <xsl:when test="Data[@name='Número de documentos']/value[text()='2']"><!--Se houver dois documentos --> 
        
        <br/>
        <br/>
          <xsl:value-of select="Data[@name='Autoria do documento, segundo documento']"/>
          <xsl:text> </xsl:text>.
          <xsl:value-of select="Data[@name='Tipo de documento, segundo documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Local do documento, segundo documento']"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Ano do documento, segundo documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Arquivo, segundo documento']"/> <xsl:text> - </xsl:text>
          <xsl:value-of select="Data[@name='Indexador na fonte, segundo documento']"/>. <xsl:text> </xsl:text>
          <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="normalize-space(Data[@name='URL da fonte, segundo documento'])"/></xsl:attribute><xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir segundo documento no repositório original</xsl:attribute>
        <xsl:value-of select="Data[@name='URL da fonte, segundo documento']"/>
</xsl:element>. <span style="color: #999999;"><xsl:value-of select="Data[@name='Código, segundo documento']"/></span>
          </xsl:when>
          
          <xsl:otherwise><!--Se não houver dois documentos-->
           
          </xsl:otherwise><!--Se não houver dois documentos-->
          </xsl:choose><!--Haver ou não dois documentos-->
        
        
         
        
         <xsl:choose><!--Haver ou não 3 documentos -->
          
          <xsl:when test="Data[@name='Número de documentos']/value[text()='3']"><!--Se houver três documentos: -->
            
          <!--Segundo documento -->
          <br/>
          <br/>
          <xsl:value-of select="Data[@name='Autoria do documento, segundo documento']"/>
          <xsl:text> </xsl:text>.
          <xsl:value-of select="Data[@name='Tipo de documento, segundo documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Local do documento, segundo documento']"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Ano do documento, segundo documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Arquivo, segundo documento']"/> <xsl:text> - </xsl:text>
          <xsl:value-of select="Data[@name='Indexador na fonte, segundo documento']"/>. <xsl:text> </xsl:text>
          <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="normalize-space(Data[@name='URL da fonte, segundo documento'])"/></xsl:attribute><xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir segundo documento no repositório original</xsl:attribute>
        <xsl:value-of select="Data[@name='URL da fonte, segundo documento']"/>
</xsl:element>. <span style="color: #999999;"><xsl:value-of select="Data[@name='Código, segundo documento']"/></span>.
          <br/>
          <br/>

          <!--Terceiro documento -->

          <xsl:value-of select="Data[@name='Autoria do documento, terceiro documento']"/>
          <xsl:text> </xsl:text>.
          <xsl:value-of select="Data[@name='Tipo de documento, terceiro documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Local do documento, terceiro documento']"/>, <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Ano do documento, terceiro documento']"/>. <xsl:text> </xsl:text>
          <xsl:value-of select="Data[@name='Arquivo, terceiro documento']"/> <xsl:text> - </xsl:text>
          <xsl:value-of select="Data[@name='Indexador na fonte, terceiro documento']"/>. <xsl:text> </xsl:text>
          <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="normalize-space(Data[@name='URL da fonte, terceiro documento'])"/></xsl:attribute><xsl:attribute name="Target">_blank</xsl:attribute><xsl:attribute name="title">Abrir terceiro documento no repositório original</xsl:attribute>
        <xsl:value-of select="Data[@name='URL da fonte, terceiro documento']"/>
</xsl:element>. <span style="color: #999999;"><xsl:value-of select="Data[@name='Código, terceiro documento']"/></span>.
          </xsl:when><!-- Se houver 3 documentos-->
          
          <xsl:otherwise><!-- Se não houver 3 documentos-->
           
          </xsl:otherwise>
          </xsl:choose><!-- Haver ou não 3 documentos-->
        
    </td>
    
    


    
    <td style="vertical-align: text-top; 5px 5px 5px 35px; border-top: 1px solid #666666; text-align: right;">
      


        
        
        <h2 style="text-align: right;">Dados internos:</h2>
          
        <xsl:value-of select="preceding-sibling::name"/>:
        <br/>
        <xsl:value-of select="Data[@name='Perfil']"/><xsl:text> </xsl:text>
        <span style="color: #999999;"><xsl:value-of select="Data[@name='Código']"/></span>
        
          <xsl:choose><!--Haver ou não dois documentos: -->
            <xsl:when test="Data[@name='Número de documentos']/value[text()='2']"><!--Se houver dois documentos -->
            
            <br/>
            <xsl:value-of select="Data[@name='Perfil, segundo documento']"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="Data[@name='Documento primário, segundo documento']"/>
            <xsl:text> </xsl:text>
            <span style="color: #999999;"><xsl:value-of select="Data[@name='Código, segundo documento']"/></span>
          
   
            </xsl:when>
          
            <xsl:otherwise><!--Se não houver dois documentos-->
             
            </xsl:otherwise><!--Se não houver dois documentos-->
            
          </xsl:choose><!--Haver ou não dois documentos-->
          
          <xsl:choose><!--Haver ou não 3 documentos: -->
            <xsl:when test="Data[@name='Número de documentos']/value[text()='3']"><!--Se houver 3 documentos -->
            <br/>
            <xsl:value-of select="Data[@name='Perfil, segundo documento']"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="Data[@name='Documento primário, segundo documento']"/>
            <xsl:text> </xsl:text>
            <span style="color: #999999;"><xsl:value-of select="Data[@name='Código, segundo documento']"/></span>
            <br/>
            <xsl:value-of select="Data[@name='Perfil, terceiro documento']"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="Data[@name='Documento primário, terceiro documento']"/>
            <xsl:text> </xsl:text>
            <span style="color: #999999;"><xsl:value-of select="Data[@name='Código, terceiro documento']"/></span>
          
            </xsl:when><!--Se houver 3 documentos-->
          
            <xsl:otherwise><!--Se não houver 3 documentos-->
             
            </xsl:otherwise><!--Se não houver 3 documentos-->
          </xsl:choose><!--Haver ou não 3 documentos-->


        <br/>
        <br/>       
        <span style="color: #999999;">Chave de pesquisa: </span><xsl:value-of select="Data[@name='Chave de pesquisa']"/><br/>
        <span style="color: #999999;">Catalogado por: </span><xsl:value-of select="Data[@name='Catalogadora']"/> <xsl:text> </xsl:text> <xsl:value-of select="Data[@name='Catalogadora, segundo documento']"/>


    </td>  
  </tr>

  </tbody>
  </table>
</div><!--Ficha-->  

</xsl:for-each>
      



  
  </xsl:template>

</xsl:stylesheet>  


<!--////////////////////////////////////////////////////////-->
<!--/////                                              /////-->
<!--/////            TEMPLATES: END                    /////-->
<!--/////                                              /////-->
<!--////////////////////////////////////////////////////////-->
