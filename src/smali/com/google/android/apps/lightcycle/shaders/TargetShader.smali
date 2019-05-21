.class public final Lcom/google/android/apps/lightcycle/shaders/TargetShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "TargetShader.java"


# instance fields
.field private alphaIndex:I

.field private contrastFactorIndex:I

.field private fragmentShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 51
    const-string v0, "precision mediump float;                            \nuniform float uBrightness;                          \nuniform float uAlpha;                               \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  gl_FragColor = texture2D( sTexture, vTexCoord);   \n  gl_FragColor.rgb *= uBrightness * uAlpha;         \n  gl_FragColor.a = gl_FragColor.a * uAlpha;         \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->fragmentShader:Ljava/lang/String;

    .line 18
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->fragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->program:I

    .line 20
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->program:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->vertexIndex:I

    .line 21
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->program:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->textureCoordIndex:I

    .line 22
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->program:I

    const-string v1, "uMvpMatrix"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->transformIndex:I

    .line 23
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->program:I

    const-string v1, "uBrightness"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->contrastFactorIndex:I

    .line 24
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->program:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->alphaIndex:I

    .line 1088
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 28
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->contrastFactorIndex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 29
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->alphaIndex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 30
    return-void
.end method


# virtual methods
.method public final setAlpha(F)V
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->alphaIndex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 38
    return-void
.end method

.method public final setContrastFactor(F)V
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->contrastFactorIndex:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 34
    return-void
.end method
