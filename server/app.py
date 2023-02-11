import requests
from enum import Enum

from config import API_KEY


# https://www.alphavantage.co/documentation/

class SecuritiesParams(str, Enum):
    function: str
    tickers: str
    topics: str

function = "NEWS_SENTIMENT"
tickers = "GOOG"
sentiment_url = f"https://www.alphavantage.co/query?function={function}&tickers={tickers}&apikey={API_KEY}"

sentiment_response = requests.get(sentiment_url).json()

print(sentiment_response)
