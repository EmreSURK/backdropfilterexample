SizedBox(
      width: 90,
      height: 90,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ClipOval(
            child: Image.file(
              File(diskfilePath),
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: ClipOval(
              // borderRadius: BorderRadius.circular(24),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: isProfileVisible ? 0.0 : 10.0,
                  sigmaY: isProfileVisible ? 0.0 : 10.0,
                ),
                child: Container(
                  padding: EdgeInsets.all(24),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
