#!/usr/bin/env python
import views

app = views.app

if __name__=="__main__":
    app.run(host="0.0.0.0",debug=True)
