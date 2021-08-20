Feature: Linktree alternative

    Scenario: Check root path
        Given I make a GET request to "http://localhost:3000"
        When I receive a response
        Then response should have a status 200
        And response should have a body "{\"name\":\"hello world!\"}"

    Scenario: Get socials
        Given I make a GET request to "http://localhost:3000/events"
        When I receive a response
        Then response should have a status 200
        And response in item 5 should have object
            """
            {
                "name": "Talk: Setting up your NodeJS project like a pro",
                "speaker": "Kaiwalya Koparkar",
                "speaker_link": "https://github.com/kaiwalyakoparkar"
            }
            """
        And response in item 4 should have object
            """
            {
                "name": "Talk: Intro to design: from Figma to Webflow",
                "speaker": "Claudia Cafeo",
                "speaker_link": "https://floxiescommunity.webflow.io/"
            }
            """
        And response in item 3 should have object
            """
            {
                "name": "Talk: React Native",
                "speaker": "Cedric Kisema",
                "speaker_link": "https://github.com/cnak"
            }
            """
        And response in item 2 should have object
            """
            {
                "name": "Workshop: How to create an API with a cloud hosted NoSQL database",
                "speaker": "Eddie Jaoude",
                "speaker_link": "http://github.com/eddiejaoude"
            }
            """
        And response in item 1 should have object
            """
            {
                "name": "Workshop: Introduction to Containers",
                "speaker": "Kunal Kushwaha",
                "link": "http://github.com/kunalkushwaha"
            }
            """
        And response in item 0 should have object
             """
            {
                "name": "Introduction",
                "speaker": "Eddie Jaoude",
                "speaker_link": "http://github.com/eddiejaoude"
            }
            """

