<?php
require 'vendor/autoload.php';

use GuzzleHttp\Client;

$client = new Client();

// Replace this URL with the URL of your library web
$url = 'https://example.com/library';

// Get user input for the filter
$filter = [
    'author' => 'John Doe',
    'category' => 'Novel',
];

// Send a GET request to the library web with the filter
$response = $client->request('GET', $url, [
    'query' => $filter,
]);

// Parse the HTML content
$html = $response->getBody()->getContents();
$dom = new DOMDocument();
libxml_use_internal_errors(true);
$dom->loadHTML($html);
libxml_clear_errors();

// Filter the data based on the user input
$books = $dom->getElementsByTagName('div'); // Replace 'div' with the tag name of the book element in your library web
foreach ($books as $book) {
    $title = $book->getElementsByTagName('h3')->item(0)->nodeValue;
    $author = $book->getElementsByTagName('p')->item(0)->nodeValue;
    $category = $book->getElementsByTagName('p')->item(1)->nodeValue;

    if (strpos(strtolower($author), strtolower($filter['author'])) !== false && strpos(strtolower($category), strtolower($filter['category'])) !== false) {
        echo "Title: {$title}\n";
        echo "Author: {$author}\n";
        echo "Category: {$category}\n\n";
    }
}