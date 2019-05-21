.class public final Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "TransparencyShader.java"


# instance fields
.field private alphaFactorIndex:I

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
    .line 18
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->alphaFactorIndex:I

    .line 49
    const-string v0, "precision highp float;                            \nuniform float uAlphaFactor;                         \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  vec4 texcolor;                                    \n  texcolor = texture2D( sTexture, vTexCoord );      \n  texcolor.a = uAlphaFactor;                        \n  gl_FragColor = texcolor;                          \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->fragmentShader:Ljava/lang/String;

    .line 19
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->fragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->program:I

    .line 20
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->program:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->vertexIndex:I

    .line 21
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->program:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->textureCoordIndex:I

    .line 22
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->program:I

    const-string v1, "uMvpMatrix"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->transformIndex:I

    .line 23
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->program:I

    const-string v1, "uAlphaFactor"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->alphaFactorIndex:I

    .line 1088
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 27
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->alphaFactorIndex:I

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 28
    return-void
.end method


# virtual methods
.method public final setAlpha(F)V
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->alphaFactorIndex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 34
    return-void
.end method
