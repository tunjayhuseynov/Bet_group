part of betaz;

class CouponState extends State<Coupon> {
  Widget card() {
    return Container(
      height: 120,
      child: Card(
          color: Colors.blue[900],
          child: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: 200,
                      height: 25,
                      color: Colors.orange[600],
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 5,
                            top: 1,
                            child: Text(
                              "Spain League",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Positioned(
                            right: 5,
                            top: 1,
                            child: Text(
                              "23:00",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      "Barcelona",
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "R. Madrid",
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 60, top: 5),
                    child: Text(
                      "0",
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 60, top: 5),
                    child: Text(
                      "0",
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.timer,
                    color: Colors.orange,
                    size: 28,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 25,
                  width: 200,
                  //padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.blueAccent,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 0,
                        top: 2.5,
                        child: Container(
                            width: 150,
                            child: Center(
                              child: Text(
                                "Barcelona Wins",
                                style: GoogleFonts.robotoSlab(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 25,
                          width: 50,
                          color: Colors.orange[600],
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "1.67",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
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
          elevation: 0,
          title: Text(
            "",
            style: GoogleFonts.openSans(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.9],
            colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
          ),
        ),
        child: ListView(
          children: <Widget>[card()],
        ),
      ),
    );
  }
}
