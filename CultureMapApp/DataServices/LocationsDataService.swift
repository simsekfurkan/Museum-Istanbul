//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "The Basilica Cistern",
            cityName: "History",
            coordinates: CLLocationCoordinate2D(latitude: 41.00834, longitude: 28.9756893),
            description: "One of Istanbul's splendid historical buildings is the Basilica Cistern located in the southwest of Hagia Sophia. This large underground cistern built by Byzantine Emperor Justinian I (527-565) was named as Yerebatan Palace ere among the people due to the marble columns rising from the water and countless seemingly like. It is also known as Basilica Cistern since there is a Basilica in the place where the cistern is located.",
            imageNames: [
                "yerebatan3",
                "yerebatan2",
                "yerebatan1",
            ],
            link: "https://www.yerebatan.com/en",
            ticketLink: "https://www.passo.com.tr/en/event-group/yerebatan-sarnici-istanbul-muze-biletleri/247613"),
        Location(
                    name: "İSTANBUL ARCHAEOLOGICAL MUSEUMS",
                    cityName: "ARCHAEOLOGICAL",
                    coordinates: CLLocationCoordinate2D(latitude: 41.0116805, longitude: 28.9791237),
                    description: "Istanbul Archaeological Museums are a complex of museums consisting of three main units. The Archaeological Museum, The Museum of Ancient Oriental Works, The Tiled Kiosk Museum. Istanbul Archaeological Museum, the first museum in Turkey, has about a million artifacts from a variety of cultures, brought from the imperial lands.",
                    imageNames: [
                        "istanbularch1",
                        "istanbularch2",
                        "istanbularch3",
                    ],
                    link: "https://muze.gov.tr/muze-detay?SectionId=IAR01&DistId=IAR",
                    ticketLink: "https://muze.gov.tr/urun-ekle?catalogNo=WEB-IAR01-01-008"),
        Location(
            name: "GALATA TOWER",
            cityName: "History",
            coordinates: CLLocationCoordinate2D(latitude: 41.0256998, longitude: 28.9719201),
            description: "The Galata Tower was built by the Genoese in mid-fourteenth century as part of the Galata Walls when Galata quarter was a Genoese colony in the Byzantine Era. After it was used as a dungeon for some time in the Ottoman Era, it was converted to a fire lookout tower. The tower which suffered damages due to earthquakes and fires from time to time underwent several renovations during the Ottoman Era. The tower that had fallen into ruins by 1960s was restored by Istanbul Municipality and opened for visitors. The Galata Tower was restored by the General Directorate of Foundations in 2020, and the reinforced concrete elements which were added later, and the cafeteria were removed, and the Tower reopened its gates to visitors as a museum.",
            imageNames: [
                "galata1",
                "galata2",
                "galata3",
            ],
            link: "https://muze.gov.tr/muze-detay?SectionId=GLT04&DistId=MRK",
            ticketLink: "https://muze.gov.tr/urun-ekle?catalogNo=WEB-GLT04-01-008"),

        Location(
            name: "MUSEUM OF THE HISTORY OF SCIENCE AND TECHNOLOGY IN ISLAM",
            cityName: "Islam",
            coordinates: CLLocationCoordinate2D(latitude: 41.0138231, longitude: 28.9775067),
            description: "Was opened in 2008 with a concept prepared by Prof. Dr. Fuat Sezgin, an Islamic science historian. Exhibiting works, devices and tools invented and developed by Islamic scientists between the 9th and 16th centuries, the museum consists of 12 sections including astronomy, clocks and marine, war technology, medicine, mining, physics, maths and geometry, architecture and city planning, chemistry and optics, geography and cinevision screening room.",
            imageNames: [
                "islam",
                
            ],
            link: "https://muze.gov.tr/muze-detay?SectionId=IBT01&DistId=MRK",
            ticketLink: "https://muze.gov.tr/urun-ekle?catalogNo=WEB-IBT01-01-008"),

        Location(
            name: "RUMELI FORTRESS ",
            cityName: "History",
            coordinates: CLLocationCoordinate2D(latitude: 41.0848224, longitude: 29.0545092),
            description: "The Fortress Museum incorporates Rumeli, Yedikule and Anadolu Fortresses. Among all, Rumeli Fortress however clearly stands out. The Fortress covering a 30-acre area in Sarıyer, also gives its name to the location. It was built in a short period of four months. By Mehmet the Conqueror in 1452 before the conquest of Istanbul in order to prevent attacks and block aids from the north of Bosphorus. This monument is located opposite the Anadolu Fortress, built by Sultan I. Beyazıt in 1394, and is located in the narrowest part of the Bosphorus.",
            imageNames: [
                "rumeli1",
                "rumeli2",
                "rumeli3",
            ],
            link: "https://muze.gov.tr/muze-detay?SectionId=HIS01&DistId=MRK",
            ticketLink: "https://muze.gov.tr/urun-ekle?catalogNo=WEB-HIS01-01-008"),
        Location(
            name: "MUSEUM OF TURKISH AND ISLAMIC ARTS ",
            cityName: "Islam",
            coordinates: CLLocationCoordinate2D(latitude: 41.0062236, longitude: 28.9725314),
            description: "Turkish and Islamic Art Museum is the first museum in our country to include Turkish - Islamic art works together. It opened its doors for the first time in 1914 in the imaret building of Suleymaniye Mosque Social Complex, one of the most important structures of Mimar Sinan (Sinan the Architect) by the name of 'Evkaf-ı Islamiye Museum' (Islamic Foundations Museum). It was moved to Ibrahim Pasha Palace to the west of Blue Mosque Square, in 1983. Apart from the Sultan palaces, the museum building is one of the earliest surviving palace buildings to the present day, dates back to the late 15th century.",
            imageNames: [
                "turkislam1",
                "turkislam2",
                "turkislam3",
            ],
            link: "https://muze.gov.tr/muze-detay?SectionId=TIE01&DistId=TIE",
            ticketLink: "https://muze.gov.tr/urun-ekle?catalogNo=WEB-TIE01-01-008"),
        Location(
            name: "İSTANBUL AIRPORT MUSEUM",
            cityName: "History",
            coordinates: CLLocationCoordinate2D(latitude: 41.2620906, longitude: 28.7378726),
            description: "This museum, which opened its doors on the 17th of July 2020, is the largest airport museum in the World, with an area covering 1000m². The museum plans to welcome visitors with a new, temporary exhibition every year. The first exhibition is called ‘Treasures of Turkey: Faces of the Throne’. The objective of the exhibition is to display twelve thousand years of Anatolian history through the concept of ‘Rule and Ruler’. The museum’s first exhibition serves as a miniature ‘Anatolian Civilisations Museum’ with over 300 artefacts from the prehistoric, Hittite, Urartu, Phyrgian, Lydian, Roman, Byzantine, Seljuk, Ottoman and modern Turkish periods. With the help of this exhibition, which features 316 artefacts from 29 museums, you will witness thousands of years of Turkish history.",
            imageNames: [
                "airport1",
                "airport2",
                "airport3",
            ],
            link: "https://muze.gov.tr/muze-detay?SectionId=IHM01&DistId=MRK",
            ticketLink: "https://muze.gov.tr/urun-ekle?catalogNo=WEB-IHM01-01-008"),
        Location(
            name: "Topkapı Palace",
            cityName: "Palace",
            coordinates: CLLocationCoordinate2D(latitude: 41.0115195, longitude: 28.9811902),
            description: "Topkapı Palace was built by Sultan Mehmed II (1444-1445 and 1451-1481) during the years 1460-1478, following the conquest of Istanbul. New buildings and annexes were added by other sultans over the centuries, creating the palace complex as we know it today. The site on a headland at the southern mouth of the Bosphorus was originally known as Zeytinlik (Olive Grove), and here work began with laying out gardens and building pavilions, after which the site was surrounded by walls known as the Sûr-ı Sultânî or Kal‘a-i Sultânî. For many years this palace was called the New Royal Palace, to distinguish it from the earlier palace in the district of Beyazıt, but later on it became known as Top Kapısı Palace after a pavilion known as Toplu Kapı (Cannon Gate). The palace remained the sultan’s main residence and centre of government until the mid-19th century. By the 1840s, the palace had become inadequate for the needs of state protocol, and Dolmabahçe Palace was built in 1843-1856 as the new official residence and administrative centre of the empire.",
            imageNames: [
                "topkapi-1",
                
            ],
            link: "https://www.millisaraylar.gov.tr/en/saray-kosk-ve-kasirlar/topkapi-sarayi",
            ticketLink: "https://istanbulepass.com/istanbul-attractions/topkapi-palace-museum-istanbul.html"),
        Location(
            name: "Dolmabahçe Palace",
            cityName: "Palace",
            coordinates: CLLocationCoordinate2D(latitude: 41.0391643, longitude: 28.9982707),
            description: "The area where Dolmabahçe Palace is located was originally a bay that had served as a natural harbour since antiquity. It is thought to be from here that Sultan Mehmed II (The Conqueror) had his ships hauled over a wooden ramp so as to launch them into the Golden Horn. The Ottoman naval fleet used to anchor in the bay and naval ceremonies were held here. The bay was filled in from the 17th century onwards, and so given the name “Dolmabahçe” (filled garden) and was used as an Imperial Garden. All the buildings in the complex prior to the 19th century were named “Beşiktaş Waterfront Palace”.",
            imageNames: [
                "dolmabahce",
               
            ],
            link: "https://www.millisaraylar.gov.tr/en/saray-kosk-ve-kasirlar/dolmabahce-sarayi",
            ticketLink: "https://www.tiqets.com/en/dolmabahce-palace-tickets-l143994/?utm_source=google&utm_medium=cpc_ola&utm_campaign=14222863367&utm_content=142196850671&utm_source=google&utm_medium=cpc_ola&utm_campaign=14222863367&utm_content=142196850671&gclid=CjwKCAjw3qGYBhBSEiwAcnTRLkGr8kAlmY3hscxcfsmnhyl6BP-bDv2rsChguGCySJ7DK6clP7-C8BoC8RAQAvD_BwE"),
        Location(
            name: "Beylerbeyi Palace",
            cityName: "Palace",
            coordinates: CLLocationCoordinate2D(latitude: 41.0426688, longitude: 29.0354993),
            description: "Beylerbeyi and its environs have been a residential area since Byzantine period. Sultan Mahmud II (1808 -1839) ordered to built a wooden palace on the site of some earlier buildings constructed in the area at various periods. When this burned down, a new palace and additional buildings were built between the years 1863-1865 by the order of Sultan Abdülaziz. The main palace building consisting of the Mabeyn and Harem sections can be visited. The Yellow Kiosk located beside the big pool on the upper terrace garden, the Marble Kiosk, the Stable Kiosk, where the royal horses were kept, and the Marine Kiosks are closed to visitors.",
            imageNames: [
                "beylerbeyi",
                
            ],
            link: "https://www.millisaraylar.gov.tr/en/saray-kosk-ve-kasirlar/beylerbeyi-sarayi",
            ticketLink: "https://www.millisaraylar.gov.tr/en/saray-kosk-ve-kasirlar/beylerbeyi-sarayi"),
        Location(
            name: "Beykoz Glass and Crystal Museum",
            cityName: "Art",
            coordinates: CLLocationCoordinate2D(latitude: 41.1386871, longitude: 29.1004266),
            description: "Beykoz Glass and Crystal Museum is named after Beykoz Imperial Glass and Crystal Factory which was the most prominent glass factory of the Ottoman period and established in this neighborhood. The historical building of the museum was constructed by Abraham Pasha who was the chamberlain of the Khedive of Egypt, İsmail Pasha, and promoted to the rank of Vizier by Sultan Abdülaziz. In the 19th century, Abraham Pasha ordered pavilions, aviaries, pools, a theatre and stables to be built on his land in Beykoz. One of these, the stable building has been restored and transformed into a museum by the National Palaces Administration. This magnificent U-plan stone building, which is in typical 19th century architectural style, provides distinctive museum spaces.",
            imageNames: [
                "beykozcam",
                
            ],
            link: "https://www.millisaraylar.gov.tr/en/muzeler-ve-fabrikalar/beykoz-cam-muzesi",
            ticketLink: "https://www.millisaraylar.gov.tr/en/muzeler-ve-fabrikalar/beykoz-cam-muzesi"),
        Location(
            name: "The Museum of Innocence",
            cityName: "Art",
            coordinates: CLLocationCoordinate2D(latitude: 41.030849, longitude: 28.9776653),
            description: "The Museum of Innocence is both a novel by Orhan Pamuk and a museum he has set up. From the very beginnings of the project, since the 1990s, Pamuk has conceived of novel and museum together. The novel, which is about love, is set between 1974 and the early ’00s, and describes life in Istanbul between 1950 and 2000 through memories and flashbacks centred around two families – one wealthy, the other lower middle class. The museum presents what the novel’s characters used, wore, heard, saw, collected and dreamed of, all meticulously arranged in boxes and display cabinets. It is not essential to have read the book in order to enjoy the museum, just as it is not necessary to have visited the museum in order to fully enjoy the book. But those who have read the novel will better grasp the many connotations of the museum, and those who have visited the museum will discover many nuances they had missed when reading the book. The novel was published in 2008, the museum opened in Spring 2012.",
            imageNames: [
                "masumiyet",
              
            ],
            link: "https://www.masumiyetmuzesi.org/en",
            ticketLink: "https://www.masumiyetmuzesi.org/en/zi-yaret-gün-ve-saatleri"),
        Location(
            name: "Madame Tussauds Istanbul",
            cityName: "Art",
            coordinates: CLLocationCoordinate2D(latitude: 41.0346928, longitude: 28.9776073),
            description: "Millions and millions of people have flocked through the doors of Madame Tussauds since they first opened over 250 years ago and it remains just as popular as it ever was. There are many reasons for this enduring success, but at the heart of it all is good, old-fashioned curiosity. World's most famous wax museum Madame Tussauds with its glorious history of 250 years is now open in Istanbul! Madame Tussauds Istanbul features approximately 60 popular figures from history, culture, art, sport, science and politics of Turkey and the world, such as Mustafa Kemal Atatürk, Rumi, Suleiman the Magnificent, Messi, Rihanna and Muhammad Ali. You can buy your tickets now to enjoy this unique, interactive experience that gives you a chance to see your favorite celebrities together, touch and hug them, or take photos with them!",
            imageNames: [
                "madame",
                
            ],
            link: "https://www.madametussauds.com/istanbul/en/",
            ticketLink: "https://www.madametussauds.com/istanbul/en/tickets-prices/"),
        Location(
            name: "Istanbul Toy Museum",
            cityName: "Art",
            coordinates: CLLocationCoordinate2D(latitude: 40.9759725, longitude: 29.0685236),
            description: "Sunay Akın had noticed a toy museum in Nürnberg-Germany in 1990 and laid the foundations of the Istanbul Toy Museum with a toy horse he purchased from an antique shop in Germany. He expanded his collection for over 15 years and has collected 7000 antique toys. Meanwhile he has made serious efforts to convert the historical villa, belonging to his family, into a cozy museum. 4000 toys are on display in this four-floor museum located in Göztepe, Istanbul. The oldest is a miniature violin manufactured in France in the year 1817. A doll made in the United States in the 1820’s, a set of marbles also from United States dating back to the 1860’s, tin toys from Germany, plus porcelain dolls are amongst other items of the extensive collection.The interior décor and displays were arranged by a professional stage designer. Each room resembles a different theater stage.  For instance, when you enter the gallery of space toys, you encounter hining stars overhead, whereas miniature train sets are exhibited in a genuine train compartment. ",
            imageNames: [
                "oyuncak",
              
            ],
            link: "https://istanbuloyuncakmuzesi.com/pages/en",
            ticketLink: "https://istanbuloyuncakmuzesi.com/pages/i̇om-magaza"),
        Location(
            name: "GALATA MEVLEVI HOUSE MUSEUM",
            cityName: "History",
            coordinates: CLLocationCoordinate2D(latitude: 41.027969, longitude: 28.9728509),
            description: "With its historical Main Door, Galata Mevlevi Lodge (Galata Mevlevihanesi) awaits you at one end of İstiklal Street of Beyoğlu, and to the left at the beginning of Galip Dede Street. This lodge would be referred to as Galata or Kulekapısı Mevlevi Lodge or Galip Dede Tekke, during the Ottoman era. It was established in 1491 and represents the most important Ottoman works in Beyoğlu along with Galata Palace School. In 1975, it was opened to visitors as Divan Literature Museum before it was reorganized as Galata Mevlevi Lodge Museum in 2011.",
            imageNames: [
                "galatamevlevi",
               
            ],
            link: "https://muze.gen.tr/muze-detay/galatamevlevi",
            ticketLink: "https://muze.gen.tr/MuseumPasses"),
        Location(
            name: "Panorama 1453 Museum ",
            cityName: "History",
            coordinates: CLLocationCoordinate2D(latitude: 41.0182772, longitude: 28.9182023),
            description: "Panorama 1453 Museum of History, established by Istanbul Metropolitan Municipality in 2009, holds the title of ‘the world’s first full-panoramic museum’. As one of the most popular spots in Istanbul, the museum gives its visitors a chance to relive the conquest of Istanbul.",
            imageNames: [
                "panoroma",
                
            ],
            link: "https://www.panoramikmuze.com/en",
            ticketLink: "https://www.passo.com.tr/en/event-group/panorama1453-tarih-muzesi-istanbul/138613"),
        Location(
            name: "Pera Museum ",
            cityName: "Art",
            coordinates: CLLocationCoordinate2D(latitude: 41.031816, longitude: 28.9730116),
            description: "Inaugurated on 8 June 2005, Pera Museum is a private museum founded by the Suna and İnan Kıraç Foundation. The aim of offering an outstanding range of diverse high quality culture and art services is as important today as when the Museum first opened its doors to the public. Couched in the historic quarter of Tepebaşı, the impressive building was originally conceived as the Bristol Hotel, designed by architect Achille Manoussos. Restorer and architect Sinan Genim was given the daunting renovation operation in 2003; the triumph of transforming the interior into a modern and fully equipped museum is only matched by the architect’s mastery in simultaneously preserving the exterior façade, safeguarding an integral part of Istanbul’s architectural flavour.",
            imageNames: [
                "pera",
               
            ],
            link: "https://www.peramuseum.org",
            ticketLink: "https://www.biletix.com/performance/SPMXX/001/ISTANBUL/en"),

    ]
    
}

