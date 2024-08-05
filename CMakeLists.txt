cmake_minimum_required(VERSION 3.16)

project(Qt_QML_SwipeView VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appQt_QML_SwipeView
    main.cpp
)

qt_add_qml_module(appQt_QML_SwipeView
    URI Qt_QML_SwipeView
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES Page_1.qml
    QML_FILES Page_2.qml
    QML_FILES Page_3.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQt_QML_SwipeView PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQt_QML_SwipeView
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQt_QML_SwipeView
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appQt_QML_SwipeView
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
