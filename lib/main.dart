import 'package:deliverzler/src/domain/binary_list.dart';
import 'package:deliverzler/src/domain/canvas_element.dart';
import 'package:deliverzler/src/domain/movable_canvas_element.dart';
import 'package:deliverzler/src/widget_canvas.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: key,
      title: 'Deliverzler',
      home: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final elements = ValueNotifier(WidgetCanvasElements<int>.fromList([]));

  final snap = ValueNotifier(false);

  @override
  void initState() {
    super.initState();

    elements.value = WidgetCanvasElements.fromList([
      for (int i = 0; i < 20; i += 1) CanvasElement(Offset(i * 100, i * 100), id: i, data: i),
    ]);

    elements.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    elements.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('App'),
      // ),
      body: Column(
        children: [
          Expanded(
            child: WidgetCanvas(
              clipBehavior: Clip.none,
              diagonalDragBehavior: DiagonalDragBehavior.weightedEvent,
              delegate: WidgetCanvasChildDelegate<int>(
                showGrid: true,
                elements: elements.value,
                builder: (context, element) => ListenableBuilder(
                  listenable: snap,
                  builder: (context, __) => MovableCanvasElement<int>(
                    snap: snap.value,
                    element: element,
                    elements: elements,
                    child: ElementCard(element),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () => snap.value = !snap.value,
                  child: Text(snap.value ? 'snap' : 'Unsnap'),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Add new element'),
                ),
                Image(
                  image: AssetImage(''),
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  centerSlice: Rect.largest,
                  colorBlendMode: BlendMode.srcIn,
                  errorBuilder: (context,object,stackTrack){
                    return Text('');
                  },
                  excludeFromSemantics: false,
                  filterQuality: FilterQuality.low,
                  fit: BoxFit.scaleDown,

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ElementCard<T> extends StatefulWidget {
  const ElementCard(
    this.element, {
    super.key,
  });

  final CanvasElement<T> element;

  @override
  State<ElementCard<T>> createState() => _ElementCardState<T>();
}

class _ElementCardState<T> extends State<ElementCard<T>> {
  bool hovered = false;

  void onUpdate() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    widget.element.addListener(onUpdate);
  }

  @override
  void dispose() {
    widget.element.removeListener(onUpdate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() => hovered = true);
      },
      onExit: (event) {
        setState(() => hovered = false);
      },
      child: Card(
        color: hovered ? Colors.amber : null,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              '${widget.element.id} \n Coor: ${widget.element.coordinate} \n Data: ${widget.element.data}'),
        ),
      ),
    );
  }
}
