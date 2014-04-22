<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}
  <meta property="og:url" content="{{ site.url }}">
  <meta property="og:title" content="{{ site.name }}">
  <meta property="og:description" content="{{ page.description }}">
  <meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fbimage }}"><!-- TODO: Add image location data tag -->

  <link rel="stylesheet" href="/assets/admin/tools/0.1.0/edicy-tools.css">
</head>

<body class="common-page js-bgpicker-body-image" style="background-image: url('{{ page.data.body_image}}');">
  <a class="js-bgpicker-body-settings" data-bg-image="{{ page.data.body_image }}" data-bg-color="{{ page.data.body_color }}"></a>
  <div class="background-color fixed js-bgpicker-body-color" {% if page.data.body_color %}style="background-color: {{ page.data.body_color }};{% if page.data.body_image %} opacity: 0.5;{% endif %}"{% endif %}></div>

  <div class="container">
    {% include "header" %}
    {% include "sub-menu" %}

    <main class="content two-columns" role="main">
      <div class="content-left">
        <section class="content-formatted">
          {% content %}
        </section>
      </div>
      <div class="content-right">
        <section class="content-formatted">
          {% content name="content_right" %}
        </section>
      </div>
    </main>

    {% include "footer" %}
  </div>

  {% include "javascripts" %}
  <script>site.initCommonPage();</script>
  <script src="{{ javascripts_path }}/autogrow.js"></script>
  <script src="{{ javascripts_path }}/ajaxForm.js"></script>
  <script>$('.form_field_textarea').autogrow();</script>
  {% include "bgpicker" %}
</body>
</html>
