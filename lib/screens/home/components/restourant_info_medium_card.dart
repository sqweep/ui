import 'package:flutter/material.dart';
import '../../../constants.dart';

class RestourantInfoMediumCard extends StatelessWidget {
  const RestourantInfoMediumCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.hp,
      required this.power,
      required this.stamina,
      required this.press,
      required this.ultimate})
      : super(key: key);
  final String title, image, ultimate;
  final double hp, power, stamina;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      onTap: () {},
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: kMainColor),
            ),
            Row(
              children: [
                Image.asset("assets/images/ultimate.png"),
                Text(
                  ultimate,
                  maxLines: 1,
                  style: TextStyle(color: kBodyTextColor),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/hp.png"),
                          Text(hp.toString()),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8),
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/power.png"),
                          Text(power.toString()),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/stamina.png"),
                          Text(stamina.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
