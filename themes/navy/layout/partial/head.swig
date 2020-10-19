<head prefix="og: http://ogp.me/ns#">
  <meta charset="utf-8">
  <title>{% if page.title %}{{ page.title }} | {% endif %}{{ config.title }}</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Canonical links -->
  <link rel="canonical" href="{{ url }}">
  <!-- Alternative links -->
  {% if page.layout == 'page' or page.layout == 'index' %}
    {% for lang in site.data.languages %}
      <link rel="alternative" hreflang="{{ loop.key }}" href="{{ canonical_url(loop.key) }}">
    {% endfor %}
  {% endif %}
  <!-- Javascript -->
  <script type="text/javascript" src="{{ url_for('js/display_papers.js') }}"></script>
  <script type="text/javascript" src="{{ url_for('js/papers.js') }}"></script>
  <!-- Icon -->
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-192x192.png') }}" sizes="192x192">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-96x96.png') }}" sizes="96x96">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-76x76.png') }}" sizes="76x76">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-72x72.png') }}" sizes="72x72">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-60x60.png') }}" sizes="60x60">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-57x57.png') }}" sizes="57x57">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-48x48.png') }}" sizes="48x48">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-36x36.png') }}" sizes="36x36">
  <!-- CSS -->
  <!-- build:css build/css/navy.css -->
  {{ css('css/navy') }}
  <!-- endbuild -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/typeface-lato@0.0.75/index.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.3.0/css/font-awesome.min.css">
  <!-- Google Analytics -->
  {{ partial('google_analytics') }}
</head>
