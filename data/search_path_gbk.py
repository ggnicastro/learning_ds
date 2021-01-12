# coding: utf-8
#I still need to improvre it
from Bio import Entrez
Entrez.email = "ggnicastro@gmail.com"
def search(query, email,retmax='20'):
    Entrez.email = email
    handle = Entrez.esearch(db='assembly',  
                            retmax=retmax,
                            retmode='xml', 
                            term=query)
    results = Entrez.read(handle)
    return results
    
handle = Entrez.efetch(db="assembly", id=",".join(id_list), rettype='docsum')
record = Entrez.read(handle)
