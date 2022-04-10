# Common

This Package contains different Helper or convenience extensions to simplify your life.

currently contains:
- String-extension:
    - adds 'stripHTML(activeFallback : Bool)'
    This function will try to remove all HTML-Tags in the String.
    If possible the 'String' is modified to represent the HTML-Tags free version of itself
    If NOT possible, you have a choice to pass along 'activeFallback:Bool
    ActiveFallback == true will add 'CONFLICT: ' to itself
    ActiveFallback == false will return an empty 'String'

- Collection-extension:
    - adds a possibility to get any object at a certain index, without crashing.
    The returned Value is an optional Value.
