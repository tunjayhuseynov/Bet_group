part of betaz;

class MainMenuState extends State<MainMenu> {
  Widget callButton(String text) {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Coupon()),
        )
      },
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.transparent)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "",
          style: GoogleFonts.openSans(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.9],
              colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
            ),
          ),
        ),
      ),
      drawer: Drawer(
          child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
                height: 150,
                padding: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 0.9],
                    colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Center(
                        child: Text("BetAz",
                            style: GoogleFonts.robotoSlab(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ))),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Center(
                      child: Text(
                        "example@google.com",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20))
                  ],
                )),
          ),
          Center(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                CupertinoButton(
                  onPressed: () => {},
                  child: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
                CupertinoButton(
                  onPressed: () => {},
                  child: Text(
                    "Privacy",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.9],
              colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  "BetAz",
                  style: GoogleFonts.robotoSlab(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                Container(
                  height: 500,
                  width: 300,
                  child: ListView(
                    children: <Widget>[
                      this.callButton("Coupon Of The Day"),
                      this.callButton("Combo Ticks"),
                      this.callButton("Single Game"),
                      this.callButton("Over/Under 2.5"),
                      this.callButton("Over/Under 1.5"),
                      this.callButton("Half/Time Over/Under 1.5"),
                      this.callButton("Half Time Over/Under 0.5"),
                      this.callButton("Both Team To Score"),
                      this.callButton("Football 3+ Odds"),
                      this.callButton("Basketball"),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
