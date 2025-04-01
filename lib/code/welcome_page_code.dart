/* AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen ? size.height / 10 : size.height / 5,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 4,
              color: Colors.white,
            ),
          ), */

/* AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: keyboardOpen ? Colors.white : Colors.transparent,
            ),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Spacer(),
                Text(
                  "Welcome to Coffee Cup!",
                  style: textStyle,
                ),
                const SizedBox(height: 30),
                AnimatedCrossFade(
                  firstChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isTextField = true;
                            isSignIn = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Sign In',
                          style: textStyle2,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isTextField = true;
                            isSignIn = false;
                          });
                        },
                        style: TextButton.styleFrom(
                          minimumSize: const Size(300, 40),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Create an account',
                        ),
                      ),
                    ],
                  ),
                  secondChild: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: kPadding10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFieldWidget(
                          controller: emailController,
                          hintText: 'Email',
                          prefixIconData: Icons.email,
                        ),
                        const SizedBox(height: 10),
                        TextFieldWidget(
                          controller: passwordController,
                          hintText: 'Password',
                          prefixIconData: Icons.password,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CloseButton(onPressed: () {
                              setState(() {
                                isTextField = false;
                              });
                            }),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(double.infinity, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: isSignIn
                                    ? Text(
                                        'Sign In',
                                        style: textStyle2,
                                      )
                                    : Text(
                                        'Create an account',
                                        style: textStyle2,
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  crossFadeState: isTextField
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ), */