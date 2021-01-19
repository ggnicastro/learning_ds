#!/bin/bash

# O analista de dados, quer trabalhe em bioinformatica, informatica
# medica ou outro campo, normalmente usa uma combinacao de comandos
# da shell e sua ferramenta de analise preferida, como R Studio ou
# Jupyter

# Nesse arquivo, mostramos alguns dos comandos de shell que
# executamos ao preparar o material da aula de ferramentas de analise

# Atalhos para a lista de genes de resistencia, que foi preparada
# manualmente (Excel) para a aula de similaridade
ln -s /databases/courses/bmp0216/data/genes.txt .

# Atalho para os contigs construidos na aula de montagem de genomas
ln -s /databases/courses/bmp0216/data/kpneu-contigs.fa .

# Converter primeira coluna do arquivo genes.txt em uma lista separada por virgulas
# A lista sera armazenada na variaval $input para ser usada duas vezes
input=$(cut -f 1 genes.txt | xargs | sed 's/ /,/g')

# Baixar tabela de proteinas identicas do Identical Protein Groups do NCBI
efetch -db protein -format ipg -id $input > ipg.tsv

# Baixar sequencias dos proteinas de resistencia
efetch -db protein -format fasta -id $input > genes.fa

# Calcular comprimentos das proteinas de resistencia
seqlen genes.fa > genes.tsv

# Comprimento dos contigs da montagem feita no curso (Klebsiella pneumoniae KPNIH39)
seqlen kpneu-contigs.fa > kpneu-contigs.tsv

# Procurando genes de proteinas de resistencia no genoma de KPNIH39
# Veja explicacao na aula de similaridade
tblastn -evalue 1e-20 -db kpneu-contigs.fa -query genes.fa -out kpneu.tblastn.tsv -outfmt 6

# Parte 3
# Criar atalhos
ln -s /databases/courses/bmp0216/data/CP014762.1.gbk .
