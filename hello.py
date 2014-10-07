import pywapi
import pprintpp
pp = pprintpp.pprint()
 
kalamata = pywapi.get_weather_from_weather_com('UKXX1087')
 
pp.pprint(kalamata)
