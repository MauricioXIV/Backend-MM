echo "=== LISTADO DE ARCHIVOS ==="
ls -l
echo "=== CONTENIDO DE SETTINGS.PY ==="
cat ecommerce/settings.py
echo "=== FIN ==="
exec gunicorn ecommerce.wsgi:application --bind 0.0.0.0:$PORT
