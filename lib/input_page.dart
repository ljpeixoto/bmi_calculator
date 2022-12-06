import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = 0xFFEB1555;
const cardColor = 0xFF1D1E33;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(colour: Color(cardColor)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(cardColor)),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(colour: Color(cardColor)),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(child: ReusableCard(colour: Color(cardColor))),
                Expanded(child: ReusableCard(colour: Color(cardColor))),
              ],
            ),
          ),
          Container(
            color: const Color(bottomContainerColor),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;

  const ReusableCard({
    super.key,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
