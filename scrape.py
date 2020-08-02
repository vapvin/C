from urllib2 import urlopen
import time

def scrape(url, term):

    response = urlopen(url)

    html = response.read()

    ts = time.time()

    filename = "scrape" + str(ts) + ".html"

    f = open(filename, "w")

    if term in s.read():
        return "Fount" + term + "in" + url

    return term + "was not found in" + url

scraoe(url, term)