import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketCard extends StatelessWidget {
  const MarketCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 22),
      decoration: BoxDecoration(
        color: Color(0xffEEF6FC),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: Color(0xffF28251),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Makassara, Jl. Sunu' no.24",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color(0xffF28251),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  Text(
                    "RUMAH POTONG",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff3A4256),
                    ),
                  ),
                  Text(
                    "Jenis: Boiler, Kampung",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(0xff3A4256).withOpacity(0.4),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "08219549271",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color(0xff3A4256),
                        ),
                      ),
                      // SizedBox(
                      //   width: SizeConfig.screenWidth / 5,
                      // ),
                      GestureDetector(
                        onTap: () async {
                          // NOTE : direct ke aplikasi google maps
                          final Uri emailLaunchUri = Uri(
                            path: 'smith@example.com',
                          );
                        },
                        child: Text(
                          "Lihat Map",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xff39A2DB),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 130,
            width: 130,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xff39A2DB),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(
                "24.000 - 30.000 / KG",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
