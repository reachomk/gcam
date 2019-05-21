.class public final Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "SingleColorShader.java"


# instance fields
.field private colorIndex:I

.field private fragmentShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 42
    const-string v0, "precision mediump float;                       \nuniform vec4 uDrawColor;                       \nvoid main()                                    \n{                                              \n  gl_FragColor = uDrawColor;                   \n}                                              \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->fragmentShader:Ljava/lang/String;

    .line 16
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   gl_PointSize = 5.5;                      \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->fragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->program:I

    .line 18
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->program:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->vertexIndex:I

    .line 19
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->program:I

    const-string v1, "uMvpMatrix"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->transformIndex:I

    .line 20
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->program:I

    const-string v1, "uDrawColor"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->colorIndex:I

    .line 21
    return-void
.end method


# virtual methods
.method public final setColor([F)V
    .locals 5

    .prologue
    .line 29
    .line 1088
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 30
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->colorIndex:I

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 31
    return-void
.end method
