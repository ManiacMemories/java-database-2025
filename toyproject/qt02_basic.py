## PyQt5 첫 윈도우앱 개발
import sys
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *

# PyQt의 모든 컨트롤은 Widget(위젯)이라고 부름.
class DevWindow(QMainWindow):   
    def __init__(self): 
        super().__init__() 

        self.setWindowTitle("My First App") # 윈도우 타이틀 지정
        self.setWindowIcon(QIcon("./image/database.png")) # 윈도우 아이콘 지정
        # self.setGeometry(300, 200, 600, 350) # 윈도우의 위치(x,y), 크기(w,h) 지정
        self.resize(600, 350) # 윈도우 크기만 지정

        # 윈도우 바탕화면 정중앙에 위치
        qr = self.frameGeometry() # 현재 만들어진 Qt앱 위치와 크기를 받아옴
        cp = QDesktopWidget().availableGeometry().center()
        qr.moveCenter(cp)
        self.move(qr.topLeft())

app = QApplication(sys.argv)
win = DevWindow()
win.show()
app.exec_()