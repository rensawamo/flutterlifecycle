# Check the above sample program as you run it.

# App lifecycle

![image](https://github.com/rensawamo/flutterlifecycle/assets/106803080/b80c4dda-f906-4019-aa2e-6ea7437ecba7)


- inactive : The application is displayed but is not in focus.

- paused :  App transitions to background (not in the forefront) and is paused with no input possible.

- resumed :  The app transitions to the foreground (returns from paused state) and the state for return processing

- detached : State for exit processing that is passed when the application exits.




# Stateful widget lifecycle
![image](https://github.com/rensawamo/flutterlifecycle/assets/106803080/16ad8c15-ce1d-4106-a1f5-7056ed263a9f)


### Initial screen construction
- initState
  
- didChangeDependencies
  
- call build


### When changing the state with State{}
- setState
  
- build


### Discard screen at screen transition
-  deactivate
-  dispose


### Change and save the source code in VSCode on the main screen and reload it hot
- didUpdateWidget
- build



# Navigation Lifecycle

The following is an example of a call from Screen A to Screen B.

- didPush : Method called on the screen specified by Navigator.push() on screen A, i.e., the screen side (screen B) from which the call is made

- didPop : Method called on Screen B when Navigator.pop() is executed from Screen B.

- didPushNext : Method called on Screen A when Navigator.push() is executed from Screen A.

- didPopNext : Method called on Screen A when Navigator.pop() is executed on Screen B.
