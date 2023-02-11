DROP DATABASE IF EXISTS financials;

CREATE DATABASE financials;

\c financials;

CREATE TABLE public.tickers
(
  id STR PRIMARY KEY,
  ticker STR,
)

CREATE TABLE public.sentiment_scores
(
  id STR PRIMARY KEY,
  ticker_id STR NOT NULL,
  score FLOAT,
  date DATE,
  price FLOAT,
);

ALTER TABLE public.sentiment_scores ADD CONSTRAINT fk_sentiment_scores FOREIGN KEY (ticker_id) REFERENCES public.tickers(id);
