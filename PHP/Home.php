<?php

$title = 'Home';
require_once './header.php';



?>

<body>
    <div id="map"></div>

    <script>
        mapboxgl.accessToken = 'pk.eyJ1IjoiamF3YWQ1MjkyMyIsImEiOiJjbGJzZHY4YTIwd2VuM29zMzJvc2QwdXE4In0.c5iuNnLPPnk22YSTY47Ahw';

        const geojson = {
            'type': 'FeatureCollection',
            'features': [
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.40874895549243, 23.729211164246585]
                    },
                    'properties': {
                        'title': '77.36% Completed ',
                        'description': 'JICA Support Program 3 for Strengthening Mathematics and Science Education in Primary Education Project'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.35700996898726, 23.801862310944188]
                    },
                    'properties': {
                        'title': '77.36% Completed ',
                        'description': 'JICA Support Program 3 for Strengthening Mathematics and Science Education in Primary Education Project'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.37269632665758, 23.768773179764562]
                    },
                    'properties': {
                        'title': '22.15% Completed',
                        'description': 'Project for Capacity Building of Nursing Services Phase 2'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.40993638432778, 23.733211657612223]
                    },
                    'properties': {
                        'title': '22.15% Completed ',
                        'description': 'Project for Capacity Building of Nursing Services Phase 2'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.40888399782175, 23.728881264793493]
                    },
                    'properties': {
                        'title': '[3 Projects] 97.15% ,100% 100 % Completed',
                        'description': 'The Project for Strengthening Health Systems through Organizing Communities, Safe Motherhood Promotion Project 1,2'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.40956388277749, 23.728917093659554]
                    },
                    'properties': {
                        'title': '[2 Projects Here] 58.87% & 99.43% Completed',
                        'description': 'The Integrated Energy and Power Master Plan Project in Bangladesh & The Project for Gas Network System Digitalization and Improvement of Operational Efficiency in Gas Sector in Bangladesh'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.38098892695923, 23.7708680271343]
                    },
                    'properties': {
                        'title': '80.48% Completed',
                        'description': 'Strengthening Public Investment Management System (SPIMS) Project Phase 2'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.40910864263893, 23.7284766533655]
                    },
                    'properties': {
                        'title': '[3 Projects Here] 100%,100% & 99.50% Completed',
                        'description': 'Strengthening Paurashava Governance Project (SPGP),Upazila Integrated Capacity Development Project (UICDP) & Project for Capacity Development of City Corporations (C4C)'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.40787482665709, 23.728407931193587]
                    },
                    'properties': {
                        'title': '100% Completed',
                        'description': 'National Integrity Strategy Support Project Phase 2'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.39417243785537, 23.75363622259384]
                    },
                    'properties': {
                        'title': '100% & 100% Completed',
                        'description': 'Safe Motherhood Promotion Project 1 & 2'
                    }
                },
                {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Point',
                        'coordinates': [90.40895332665768, 23.780215725696586]
                    },
                    'properties': {
                        'title': '100% & 100% Completed',
                        'description': 'Safe Motherhood Promotion Project 1 & 2'
                    }
                }


            ]
        };

        const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/light-v11',
            center: [90.40874895549243, 23.729211164246585],
            zoom: 6
        });

        // add markers to map
        for (const feature of geojson.features) {
            // create a HTML element for each feature
            const el = document.createElement('div');
            el.className = 'marker';

            // make a marker for each feature and add it to the map
            new mapboxgl.Marker(el)
                .setLngLat(feature.geometry.coordinates)
                .setPopup(
                    new mapboxgl.Popup({ offset: 25 }) // add popups
                        .setHTML(
                            `<h3>${feature.properties.title}</h3><p>${feature.properties.description}</p>`
                        )
                )
                .addTo(map);
        }

    </script>
</body>