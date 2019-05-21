.class public final Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "SimpleTextureShader.java"


# instance fields
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
    .line 13
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 32
    const-string v0, "precision mediump float;                            \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  gl_FragColor = texture2D( sTexture, vTexCoord );  \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->fragmentShader:Ljava/lang/String;

    .line 14
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->fragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->program:I

    .line 16
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->program:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->vertexIndex:I

    .line 17
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->program:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->textureCoordIndex:I

    .line 18
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->program:I

    const-string v1, "uMvpMatrix"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->transformIndex:I

    .line 19
    return-void
.end method
