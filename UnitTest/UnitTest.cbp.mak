#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -I../dependencies/glm/include -I../Engine
CFLAGS = -Wall -fexceptions
RESINC = 
LIBDIR = 
LIB = ../Engine/bin/Release/Engine.so -lGL -lglut
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR) -L../Engine/bin/Debug
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/UnitTest

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR) -L../Engine/bin/Release
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/UnitTest

OBJ_DEBUG = $(OBJDIR_DEBUG)/CameraTest.o $(OBJDIR_DEBUG)/FakeShadowTest.o $(OBJDIR_DEBUG)/FileReaderTest.o $(OBJDIR_DEBUG)/LightTest.o $(OBJDIR_DEBUG)/ListTest.o $(OBJDIR_DEBUG)/MaterialTest.o $(OBJDIR_DEBUG)/MeshTest.o $(OBJDIR_DEBUG)/NodeTest.o $(OBJDIR_DEBUG)/ObjectTest.o $(OBJDIR_DEBUG)/ProjectionTest.o $(OBJDIR_DEBUG)/VertexTest.o $(OBJDIR_DEBUG)/main.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/CameraTest.o $(OBJDIR_RELEASE)/FakeShadowTest.o $(OBJDIR_RELEASE)/FileReaderTest.o $(OBJDIR_RELEASE)/LightTest.o $(OBJDIR_RELEASE)/ListTest.o $(OBJDIR_RELEASE)/MaterialTest.o $(OBJDIR_RELEASE)/MeshTest.o $(OBJDIR_RELEASE)/NodeTest.o $(OBJDIR_RELEASE)/ObjectTest.o $(OBJDIR_RELEASE)/ProjectionTest.o $(OBJDIR_RELEASE)/VertexTest.o $(OBJDIR_RELEASE)/main.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LDFLAGS_DEBUG) $(LIBDIR_DEBUG) $(OBJ_DEBUG) $(LIB_DEBUG) -o $(OUT_DEBUG)

$(OBJDIR_DEBUG)/CameraTest.o: CameraTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c CameraTest.cpp -o $(OBJDIR_DEBUG)/CameraTest.o

$(OBJDIR_DEBUG)/FakeShadowTest.o: FakeShadowTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c FakeShadowTest.cpp -o $(OBJDIR_DEBUG)/FakeShadowTest.o

$(OBJDIR_DEBUG)/FileReaderTest.o: FileReaderTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c FileReaderTest.cpp -o $(OBJDIR_DEBUG)/FileReaderTest.o

$(OBJDIR_DEBUG)/LightTest.o: LightTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c LightTest.cpp -o $(OBJDIR_DEBUG)/LightTest.o

$(OBJDIR_DEBUG)/ListTest.o: ListTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c ListTest.cpp -o $(OBJDIR_DEBUG)/ListTest.o

$(OBJDIR_DEBUG)/MaterialTest.o: MaterialTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c MaterialTest.cpp -o $(OBJDIR_DEBUG)/MaterialTest.o

$(OBJDIR_DEBUG)/MeshTest.o: MeshTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c MeshTest.cpp -o $(OBJDIR_DEBUG)/MeshTest.o

$(OBJDIR_DEBUG)/NodeTest.o: NodeTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c NodeTest.cpp -o $(OBJDIR_DEBUG)/NodeTest.o

$(OBJDIR_DEBUG)/ObjectTest.o: ObjectTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c ObjectTest.cpp -o $(OBJDIR_DEBUG)/ObjectTest.o

$(OBJDIR_DEBUG)/ProjectionTest.o: ProjectionTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c ProjectionTest.cpp -o $(OBJDIR_DEBUG)/ProjectionTest.o

$(OBJDIR_DEBUG)/VertexTest.o: VertexTest.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c VertexTest.cpp -o $(OBJDIR_DEBUG)/VertexTest.o

$(OBJDIR_DEBUG)/main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)/main.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LDFLAGS_RELEASE) $(LIBDIR_RELEASE) $(OBJ_RELEASE) $(LIB_RELEASE) -o $(OUT_RELEASE)

$(OBJDIR_RELEASE)/CameraTest.o: CameraTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c CameraTest.cpp -o $(OBJDIR_RELEASE)/CameraTest.o

$(OBJDIR_RELEASE)/FakeShadowTest.o: FakeShadowTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c FakeShadowTest.cpp -o $(OBJDIR_RELEASE)/FakeShadowTest.o

$(OBJDIR_RELEASE)/FileReaderTest.o: FileReaderTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c FileReaderTest.cpp -o $(OBJDIR_RELEASE)/FileReaderTest.o

$(OBJDIR_RELEASE)/LightTest.o: LightTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c LightTest.cpp -o $(OBJDIR_RELEASE)/LightTest.o

$(OBJDIR_RELEASE)/ListTest.o: ListTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c ListTest.cpp -o $(OBJDIR_RELEASE)/ListTest.o

$(OBJDIR_RELEASE)/MaterialTest.o: MaterialTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c MaterialTest.cpp -o $(OBJDIR_RELEASE)/MaterialTest.o

$(OBJDIR_RELEASE)/MeshTest.o: MeshTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c MeshTest.cpp -o $(OBJDIR_RELEASE)/MeshTest.o

$(OBJDIR_RELEASE)/NodeTest.o: NodeTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c NodeTest.cpp -o $(OBJDIR_RELEASE)/NodeTest.o

$(OBJDIR_RELEASE)/ObjectTest.o: ObjectTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c ObjectTest.cpp -o $(OBJDIR_RELEASE)/ObjectTest.o

$(OBJDIR_RELEASE)/ProjectionTest.o: ProjectionTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c ProjectionTest.cpp -o $(OBJDIR_RELEASE)/ProjectionTest.o

$(OBJDIR_RELEASE)/VertexTest.o: VertexTest.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c VertexTest.cpp -o $(OBJDIR_RELEASE)/VertexTest.o

$(OBJDIR_RELEASE)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)/main.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

