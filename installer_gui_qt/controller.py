import os
import sys
from PyQt5 import QtWidgets, QtGui, QtCore
from UI import Ui_MainWindow

class MainWindow_controller(QtWidgets.QMainWindow):
    def __init__(self):
        super().__init__() # in python3, super(Class, self).xxx = super().xxx
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.ui.pushButton.clicked.connect(self.clickButton)
        self.ui.pushButton_2.clicked.connect(self.clickButton)
        self.ui.pushButton_3.clicked.connect(self.clickButton)
        self.ui.pushButton_4.clicked.connect(self.clickButton)
        self.ui.pushButton_5.clicked.connect(self.clickButton)
        self.ui.pushButton_6.clicked.connect(self.clickButton)
        self.show()

    def clickButton(self):
        sender=self.sender()
        self.statusBar().showMessage(sender.text() + ' was pressed')
    
