import pywapi
import pprintpp
 
kalamata = pywapi.get_weather_from_weather_com('UKXX1087')
 
pprintpp.pprint(kalamata)
