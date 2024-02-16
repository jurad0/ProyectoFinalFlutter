import 'package:flutter/material.dart';
import '../widgets/widget1.dart';
import '../widgets/widget4.dart';
import '../widgets/menu.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            // Utiliza Expanded para que ocupe el 50% de la pantalla
            child: CustomImageBox(
              imageUrl: 'https://s3-alpha-sig.figma.com/img/adfb/e0b6/a0a0479ec1fe1ce0c8b0d3827a021fe3?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Nb5FZvlqT~B-eo0ocBrWGrBEuBGU4qN5cwZrgaNtYPMX1ixfpqW3jloJPVMvG8AXhors0tdSy1rzW-mxZkteRoN9G0lbDieZ53XshqR1oXqho0ahGVxmCZhX1kY7F7id3uA6CdlXmn05FP7NCQ-wryC2huXDClGcoZf3~fpCOKpjPmtzsVxF28OdyqtnwzJ2IATG7-Zh7zhl9UBl7iPAwSGA5x2V~PBn1FmbywqkLnHV7Ir10agow02o8oAA~9Bp~SiG8jEkVXRoF6aiOqmypZJKnv2uF71ybq6lNvnkgNpm9McEHaISIGeHHUn1eorwNy4Q7647n2R5odDxXhu~QA__',
              text: 'MUJER',
              navigateToRoute: '/mujer',
            ),
          ),
          Expanded(
            // Utiliza Expanded para que ocupe el 50% de la pantalla
            child: CustomImageBox(
              imageUrl: 'https://s3-alpha-sig.figma.com/img/7a74/82ba/f40a30c1b76a1f79c510787c860e6dca?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FPdU0psFNdjo4VNGNTVTzEXvfHo0XEo-YW4V4-tfIyuZwluQAlZzEYG71XBtzjvQbyDM27iz4JifZ-2C7-dDLvLzlMwYxQg5GfbEDNZ7pCepIgxOhrBEhbfNplkDxGqUcJ4CLjTVoCgNkpiLDJoueehGgiuIoBQKaSX7VOY1EeBrNfHkR4v3aQyWkMLe1Qs8FvmH9EuaTZEESaUL87NjOJALPb5CKI9x~5wq4-tKcZfLInsz5XFM3Nz7Y0dbhcSDaTGSUQGvYL8rT-24fX95oeLbb3KkoQJ1cDZmNL11eAsetCMCMv-T6PJZr3-qYH3tjchFyjexGu3beAQCSODhHQ__',
              text: 'HOMBRE',
              navigateToRoute: '/hombre',
            ),
          ),
        ],
      ),
    );
  }
}
