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
