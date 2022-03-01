## Web scraping for Job Application
Reference:
- [Coursera-Basics in web scraping and filter](https://www.coursera.org/learn/python-for-applied-data-science-ai/ungradedLti/rjC6B/hands-on-lab-webscraping) ([Download its Notebook](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-PY0220EN-SkillsNetwork/labs/project/WebScraping_Review_Lab.ipynb))
- [Real Python-Enter a real webpage to scrap](https://realpython.com/python-web-scraping-practical-introduction/#create-a-beautifulsoup-object)

```python
from bs4 import BeautifulSoup # this module helps in web scrapping.
import requests 
from urllib.request import urlopen
import re #for finding position of \n in string 

#Detect which web source first

url = str(input('The job description page address: '))
for a in ['linkedin', 'targetjobs']:
    if a in url:
        #conduct corresponding codes as below
        break
        
            
```   

```python
#LinkedIn
url = str(input('The job description page address: '))
page = urlopen(url)
html = page.read().decode("utf-8")
soup = BeautifulSoup(html, "html.parser")
#start to pick info
h=soup.title.string.find('hiring')
i=soup.title.string.find(' in')
print('company: ', soup.title.string[:h-1])
print('job: ', soup.title.string[h+7:i])
print('location: ', soup.title.string[i+4:-10])
print('web: ', soup.title.string[-8:])
```
```python
#Target job
url = str(input('The job description page address: '))
page = urlopen(url)
html = page.read().decode("utf-8")
soup = BeautifulSoup(html, "html.parser")
#start to pick info
scheme_location = soup.find_all('div', {"class":["pt-7","text-gray-700","font-medium","md:pt-5"]})[0] #ref:https://stackoverflow.com/a/22284921
scheme_location.p #only the first <p>
scheme_location.select('p') #all <p>'s in this <div> #ref: https://stackoverflow.com/a/49679586

#level :grad, entry-level, etc
scheme = scheme_location.select('p')[0].string
result = [_.start() for _ in re.finditer('\n', scheme)] #ref: https://www.delftstack.com/howto/python/python-find-all-occurrences-in-string/
for l in range(len(scheme)):
    if scheme[l] not in ['\n', ' ']:
        level = scheme[l:result[1]]
        break

#location: GBR, City of London, etc.
location = scheme_location.select('p')[1].string
result2 = [_.start() for _ in re.finditer('\n', location)]
for l in range(len(location)):
    if location[l] not in ['\n', ' ']:
        loc = location[l:result2[1]]
        break

soup.find_all('a', {"href":"/organisations/pa-consulting"})
co_ddl = soup.find_all('p', {"class":["text-gray",'text-base','line-clamp-1','mb-1']})

#company
co=co_ddl[0].a.string
result3 = [_.start() for _ in re.finditer('\n', co)]
for l in range(len(co)):
    if co[l] not in ['\n', ' ']:
        company = co[l:result3[1]]
        break

#deadline
try:
    ddl=co_ddl[1].text
    result4 = [_.start() for _ in re.finditer('\n', ddl)]
    for l in range(len(ddl)):
        if ddl[l] in '0123456789':
            ddl_ = ddl[l:result4[-1]]
            break
except IndexError:
    ddl_ = 'No stated deadline'


#job (from title)
title = soup.title.string
result5 = [_.start() for _ in re.finditer('\n',title)]
for l in range(len(title)):
    if title[l] not in ['\n', ' ']:
        job = title[l:result5[-1]]
        break

print('company: ', company)
print('deadline: ', ddl_)
print('job: ', job)        
print('level: ', level)
print('location: ', loc)
```
