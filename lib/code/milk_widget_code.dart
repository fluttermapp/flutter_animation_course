/* showCupertinoModalPopup<void>(
                      context: context,
                      builder: (BuildContext context) => CupertinoActionSheet(
                        title: const Text('Are you sure?'),
                        actions: <CupertinoActionSheetAction>[
                          CupertinoActionSheetAction(
                            isDestructiveAction: true,
                            onPressed: () {
                              Navigator.pop(context);
                              onResetCurrentMilk();
                            },
                            child: const Text('Remove the milk'),
                          ),
                          CupertinoActionSheetAction(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ); */

/* GestureDetector(
          onTapDown: (_) => controller.forward(),
          onTapUp: (_) {
            if (controller.status == AnimationStatus.forward) {
              controller.reverse();
            }
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              if (currentMilk == 0) ...[
                const Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.black54,
                ),
              ] else ...[
                const ClipOval(
                  child: WaveWidget(
                    size: Size(120, 120),
                    yOffset: 60,
                    color: Colors.white,
                  ),
                ),
              ],
              SizedBox(
                height: 135,
                width: 135,
                child: CircularProgressIndicator(
                  value: 1.0,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black.withOpacity(0.1),
                  ),
                ),
              ),
              SizedBox(
                height: 135,
                width: 135,
                child: CircularProgressIndicator(
                  value: controller.value,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.white,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: AnimatedOpacity(
                  opacity: currentMilk > 0 ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 31, 31, 31),
                    radius: 12,
                    child: FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          currentMilk.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ), */
