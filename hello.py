import pywapi
import pprint
pp = pprint.PrettyPrinter(indent=4)
 
kalamata = pywapi.get_weather_from_weather_com('UKXX1087')
 
pp.pprint(kalamata)
