.class public Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
.super Ljava/lang/Object;
.source "ImageShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;,
        Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;
    }
.end annotation


# static fields
.field private static final FLOAT_SIZE:I = 0x4

.field private static final mDefaultVertexShader:Ljava/lang/String; = "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

.field private static final mExternalIdentityShader:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

.field private static final mIdentityShader:Ljava/lang/String; = "precision lowp float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseTexUnit:I

.field private mBlendEnabled:Z

.field private mClearBuffers:I

.field private mClearColor:[F

.field private mClearsOutput:Z

.field private mDFactor:I

.field private mDrawMode:I

.field private mProgram:I

.field private mSFactor:I

.field private mSourceCoords:[F

.field private mTargetCoords:[F

.field private mUniforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;",
            ">;"
        }
    .end annotation
.end field

.field private mVertexCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    .line 43
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearsOutput:Z

    .line 44
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    .line 45
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBlendEnabled:Z

    .line 46
    const/16 v0, 0x302

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSFactor:I

    .line 47
    const/16 v0, 0x303

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDFactor:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDrawMode:I

    .line 49
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mVertexCount:I

    .line 50
    const v0, 0x84c0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBaseTexUnit:I

    .line 51
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearBuffers:I

    .line 52
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSourceCoords:[F

    .line 53
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mTargetCoords:[F

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mAttributes:Ljava/util/HashMap;

    .line 244
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid program"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    .line 248
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->scanUniforms()V

    .line 249
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 53
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    .line 43
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearsOutput:Z

    .line 44
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    .line 45
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBlendEnabled:Z

    .line 46
    const/16 v0, 0x302

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSFactor:I

    .line 47
    const/16 v0, 0x303

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDFactor:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDrawMode:I

    .line 49
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mVertexCount:I

    .line 50
    const v0, 0x84c0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBaseTexUnit:I

    .line 51
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearBuffers:I

    .line 52
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSourceCoords:[F

    .line 53
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mTargetCoords:[F

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mAttributes:Ljava/util/HashMap;

    .line 234
    const-string v0, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    invoke-static {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    .line 235
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->scanUniforms()V

    .line 236
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 53
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    .line 43
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearsOutput:Z

    .line 44
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    .line 45
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBlendEnabled:Z

    .line 46
    const/16 v0, 0x302

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSFactor:I

    .line 47
    const/16 v0, 0x303

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDFactor:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDrawMode:I

    .line 49
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mVertexCount:I

    .line 50
    const v0, 0x84c0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBaseTexUnit:I

    .line 51
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearBuffers:I

    .line 52
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSourceCoords:[F

    .line 53
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mTargetCoords:[F

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mAttributes:Ljava/util/HashMap;

    .line 239
    invoke-static {p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    .line 240
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->scanUniforms()V

    .line 241
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 53
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000([B)I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->strlen([B)I

    move-result v0

    return v0
.end method

.method private bindInputTextures([Lcom/google/android/libraries/smartburst/filterfw/TextureSource;)V
    .locals 5

    .prologue
    .line 642
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->baseTextureUnit()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 647
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->bind()V

    .line 650
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->inputTextureUniformName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 651
    if-ltz v1, :cond_0

    .line 652
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Binding input texture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    array-length v2, p1

    .line 655
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->inputTextureUniformName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x57

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Shader does not seem to support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number of input textures! Missing uniform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_1
    return-void
.end method

.method private checkExecutable()V
    .locals 2

    .prologue
    .line 703
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to execute invalid shader-program!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    return-void
.end method

.method private static checkTexCount(I)V
    .locals 4

    .prologue
    .line 714
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->maxTextureUnits()I

    move-result v0

    if-le p0, v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/RuntimeException;

    .line 716
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->maxTextureUnits()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x6a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Number of textures passed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeds the maximum number of allowed texture units ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    return-void
.end method

.method private checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V
    .locals 4

    .prologue
    .line 807
    rem-int v0, p2, p3

    if-eqz v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/RuntimeException;

    .line 809
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Size mismatch: Attempting to assign values of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to uniform \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (must be multiple of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getSize()I

    move-result v0

    div-int v1, p2, p3

    if-eq v0, v1, :cond_1

    .line 812
    new-instance v0, Ljava/lang/RuntimeException;

    .line 813
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Size mismatch: Cannot assign "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values to uniform \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_1
    return-void
.end method

.method public static createExternalIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision lowp float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createIdentity(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision lowp float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 738
    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 739
    if-nez v0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create shader-program as vertex shader could not be compiled!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 744
    if-nez v1, :cond_1

    .line 745
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create shader-program as fragment shader could not be compiled!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 750
    if-eqz v2, :cond_3

    .line 751
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 752
    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 753
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 754
    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 755
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 756
    new-array v3, v6, [I

    .line 757
    const v4, 0x8b82

    invoke-static {v2, v4, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 758
    aget v3, v3, v5

    if-eq v3, v6, :cond_3

    .line 759
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 762
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not link program: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 767
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 769
    return v2
.end method

.method private focusTarget(Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 636
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focus()V

    .line 637
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 638
    const-string v0, "glViewport"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method private getProgramAttribute(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;
    .locals 3

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;

    .line 794
    if-nez v0, :cond_0

    .line 795
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 796
    if-ltz v1, :cond_1

    .line 797
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;-><init>(Ljava/lang/String;I)V

    .line 798
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :cond_0
    return-object v0

    .line 799
    :cond_1
    if-eqz p2, :cond_0

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProgramUniform(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mUniforms:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;

    .line 786
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 787
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown uniform \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_0
    return-object v0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 721
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 722
    if-eqz v0, :cond_0

    .line 723
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 724
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 725
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 726
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 727
    aget v1, v1, v3

    if-nez v1, :cond_0

    .line 728
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 731
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    return v0
.end method

.method public static maxTextureUnits()I
    .locals 1

    .prologue
    .line 614
    const v0, 0x8b4d

    return v0
.end method

.method private pushAttributes()V
    .locals 4

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;

    .line 664
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->push()Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to assign attribute value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :cond_1
    const-string v0, "Push Attributes"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method private render()V
    .locals 3

    .prologue
    .line 696
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 697
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDrawMode:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mVertexCount:I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 698
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/util/Trace;->endSection()V

    .line 700
    return-void
.end method

.method public static renderTextureToTarget(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getIdentityShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 275
    return-void
.end method

.method private scanUniforms()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 773
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 774
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    const v3, 0x8b86

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 775
    aget v0, v2, v1

    if-lez v0, :cond_0

    .line 776
    new-instance v0, Ljava/util/HashMap;

    aget v3, v2, v1

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mUniforms:Ljava/util/HashMap;

    move v0, v1

    .line 777
    :goto_0
    aget v3, v2, v1

    if-ge v0, v3, :cond_0

    .line 778
    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    invoke-direct {v3, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;-><init>(II)V

    .line 779
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mUniforms:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_0
    return-void
.end method

.method private static strlen([B)I
    .locals 2

    .prologue
    .line 818
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 819
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 823
    :goto_1
    return v0

    .line 818
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 823
    :cond_1
    array-length v0, p0

    goto :goto_1
.end method

.method private updateSourceCoordAttribute()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->texCoordAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getProgramAttribute(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;

    move-result-object v0

    .line 675
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSourceCoords:[F

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 677
    const/16 v2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSourceCoords:[F

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->set(ZIII[F)V

    .line 680
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSourceCoords:[F

    .line 681
    return-void
.end method

.method private updateTargetCoordAttribute()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->positionAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getProgramAttribute(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;

    move-result-object v0

    .line 687
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mTargetCoords:[F

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 689
    const/16 v2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mTargetCoords:[F

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->set(ZIII[F)V

    .line 692
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mTargetCoords:[F

    .line 693
    return-void
.end method

.method private useProgram()V
    .locals 3

    .prologue
    .line 709
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 710
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "glUseProgram "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 711
    return-void
.end method


# virtual methods
.method public baseTextureUnit()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBaseTexUnit:I

    return v0
.end method

.method public getAttributeLocation(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->positionAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->texCoordAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    const-string v0, "ImageShader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attempting to access internal attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' directly!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 338
    if-gez v0, :cond_2

    .line 339
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in shader program!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_2
    return v0
.end method

.method public getBlendEnabled()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBlendEnabled:Z

    return v0
.end method

.method public getClearBufferMask()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearBuffers:I

    return v0
.end method

.method public getClearColor()[F
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    return-object v0
.end method

.method public getClearsOutput()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearsOutput:Z

    return v0
.end method

.method public getDrawMode()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDrawMode:I

    return v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getProgramUniform(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    return v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mVertexCount:I

    return v0
.end method

.method public inputTextureUniformName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "tex_sampler_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public positionAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    const-string v0, "a_position"

    return-object v0
.end method

.method public process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockTextureSource()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    .line 279
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v1

    .line 280
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 282
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v0

    .line 283
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v3

    .line 280
    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 284
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 285
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 286
    return-void
.end method

.method public process(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V
    .locals 2

    .prologue
    .line 305
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 306
    return-void
.end method

.method public processMulti([Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 289
    array-length v0, p1

    new-array v2, v0, [Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move v0, v1

    .line 290
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 291
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockTextureSource()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v3

    aput-object v3, v2, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    .line 296
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v3

    .line 297
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v4

    .line 294
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 298
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 299
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 302
    return-void
.end method

.method public processMulti([Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V
    .locals 1

    .prologue
    .line 309
    const-string v0, "Unknown Operation"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkExecutable()V

    .line 311
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkTexCount(I)V

    .line 312
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->focusTarget(Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->pushShaderState()V

    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->bindInputTextures([Lcom/google/android/libraries/smartburst/filterfw/TextureSource;)V

    .line 315
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->render()V

    .line 316
    return-void
.end method

.method public processNoInput(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processNoInput(Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 321
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 322
    return-void
.end method

.method public processNoInput(Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 326
    return-void
.end method

.method protected pushShaderState()V
    .locals 6

    .prologue
    const/16 v5, 0xbe2

    .line 618
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->useProgram()V

    .line 619
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->updateSourceCoordAttribute()V

    .line 620
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->updateTargetCoordAttribute()V

    .line 621
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->pushAttributes()V

    .line 622
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearsOutput:Z

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 624
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearBuffers:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 626
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    .line 627
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 628
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSFactor:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDFactor:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 632
    :goto_0
    const-string v0, "Set render variables"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 633
    return-void

    .line 630
    :cond_1
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public setAttributeValues(Ljava/lang/String;IIIIIZ)V
    .locals 7

    .prologue
    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getProgramAttribute(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;

    move-result-object v0

    move v1, p7

    move v2, p6

    move v3, p5

    move v4, p4

    move v5, p3

    move v6, p2

    .line 444
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->set(ZIIIII)V

    .line 445
    return-void
.end method

.method public setAttributeValues(Ljava/lang/String;[FI)V
    .locals 6

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getProgramAttribute(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;

    move-result-object v0

    .line 438
    const/4 v1, 0x0

    mul-int/lit8 v2, p3, 0x4

    const/16 v4, 0x1406

    move v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->set(ZIII[F)V

    .line 439
    return-void
.end method

.method public setBaseTextureUnit(I)V
    .locals 0

    .prologue
    .line 594
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBaseTexUnit:I

    .line 595
    return-void
.end method

.method public setBlendEnabled(Z)V
    .locals 0

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mBlendEnabled:Z

    .line 566
    return-void
.end method

.method public setBlendFunc(II)V
    .locals 0

    .prologue
    .line 573
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSFactor:I

    .line 574
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDFactor:I

    .line 575
    return-void
.end method

.method public setClearBufferMask(I)V
    .locals 0

    .prologue
    .line 557
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearBuffers:I

    .line 558
    return-void
.end method

.method public setClearColor([F)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearColor:[F

    .line 550
    return-void
.end method

.method public setClearsOutput(Z)V
    .locals 0

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mClearsOutput:Z

    .line 542
    return-void
.end method

.method public setDrawMode(I)V
    .locals 0

    .prologue
    .line 578
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mDrawMode:I

    .line 579
    return-void
.end method

.method public setSourceCoords([F)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 463
    array-length v0, p1

    if-eq v0, v1, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected 8 coordinates as source coordinates but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coordinates!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mSourceCoords:[F

    .line 468
    return-void
.end method

.method public setSourceQuad(Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)V
    .locals 3

    .prologue
    .line 456
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->topLeft()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->topLeft()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 457
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->topRight()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->topRight()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 458
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->bottomLeft()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->bottomLeft()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 459
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->bottomRight()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->bottomRight()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    .line 456
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceCoords([F)V

    .line 460
    return-void
.end method

.method public setSourceRect(FFFF)V
    .locals 3

    .prologue
    .line 448
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    add-float v2, p1, p3

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    add-float v2, p2, p4

    aput v2, v0, v1

    const/4 v1, 0x6

    add-float v2, p1, p3

    aput v2, v0, v1

    const/4 v1, 0x7

    add-float v2, p2, p4

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceCoords([F)V

    .line 449
    return-void
.end method

.method public setSourceRect(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    .line 452
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceRect(FFFF)V

    .line 453
    return-void
.end method

.method public setSourceTransform([F)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xd

    const/16 v4, 0xc

    .line 471
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected 4x4 matrix for source transform!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    aget v1, p1, v4

    aput v1, v0, v6

    aget v1, p1, v5

    aput v1, v0, v7

    const/4 v1, 0x2

    aget v2, p1, v6

    aget v3, p1, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    aget v2, p1, v7

    aget v3, p1, v5

    add-float/2addr v2, v3

    aput v2, v0, v1

    aget v1, p1, v8

    aget v2, p1, v4

    add-float/2addr v1, v2

    aput v1, v0, v8

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p1, v2

    aget v3, p1, v5

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    aget v2, p1, v6

    aget v3, p1, v8

    add-float/2addr v2, v3

    aget v3, p1, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    aget v2, p1, v7

    const/4 v3, 0x5

    aget v3, p1, v3

    add-float/2addr v2, v3

    aget v3, p1, v5

    add-float/2addr v2, v3

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceCoords([F)V

    .line 487
    return-void
.end method

.method public setTargetCoords([F)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 511
    array-length v0, p1

    if-eq v0, v4, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected 8 coordinates as target coordinates but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coordinates!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mTargetCoords:[F

    .line 516
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    .line 517
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mTargetCoords:[F

    aget v2, p1, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_1
    return-void
.end method

.method public setTargetQuad(Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)V
    .locals 3

    .prologue
    .line 504
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->topLeft()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->topLeft()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 505
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->topRight()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->topRight()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 506
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->bottomLeft()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->bottomLeft()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 507
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->bottomRight()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->bottomRight()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    .line 504
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setTargetCoords([F)V

    .line 508
    return-void
.end method

.method public setTargetRect(FFFF)V
    .locals 3

    .prologue
    .line 490
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    add-float v2, p1, p3

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    add-float v2, p2, p4

    aput v2, v0, v1

    const/4 v1, 0x6

    add-float v2, p1, p3

    aput v2, v0, v1

    const/4 v1, 0x7

    add-float v2, p2, p4

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setTargetCoords([F)V

    .line 494
    return-void
.end method

.method public setTargetRect(Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    .line 497
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setTargetCoords([F)V

    .line 501
    return-void
.end method

.method public setTargetTransform([F)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xd

    const/16 v4, 0xc

    .line 522
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected 4x4 matrix for target transform!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    aget v1, p1, v4

    aput v1, v0, v6

    aget v1, p1, v5

    aput v1, v0, v7

    const/4 v1, 0x2

    aget v2, p1, v6

    aget v3, p1, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    aget v2, p1, v7

    aget v3, p1, v5

    add-float/2addr v2, v3

    aput v2, v0, v1

    aget v1, p1, v8

    aget v2, p1, v4

    add-float/2addr v1, v2

    aput v1, v0, v8

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p1, v2

    aget v3, p1, v5

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    aget v2, p1, v6

    aget v3, p1, v8

    add-float/2addr v2, v3

    aget v3, p1, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    aget v2, p1, v7

    const/4 v3, 0x5

    aget v3, p1, v3

    add-float/2addr v2, v3

    aget v3, p1, v5

    add-float/2addr v2, v3

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setTargetCoords([F)V

    .line 538
    return-void
.end method

.method public setUniformUnsignedIntValue(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->useProgram()V

    .line 354
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 355
    invoke-static {v0, p2}, Landroid/opengl/GLES31;->glUniform1ui(II)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set uniform value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public setUniformValue(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->useProgram()V

    .line 362
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 363
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set uniform value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public setUniformValue(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->useProgram()V

    .line 346
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 347
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set uniform value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public setUniformValue(Ljava/lang/String;[F)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    invoke-direct {p0, p1, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getProgramUniform(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;

    move-result-object v0

    .line 398
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->useProgram()V

    .line 399
    array-length v1, p2

    .line 400
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 430
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot assign float-array to incompatible uniform type for uniform \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :sswitch_0
    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 403
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    invoke-static {v0, v1, p2, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 433
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set uniform value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 434
    return-void

    .line 406
    :sswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 407
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    goto :goto_0

    .line 410
    :sswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 411
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1, p2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    goto :goto_0

    .line 414
    :sswitch_3
    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 415
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    goto :goto_0

    .line 418
    :sswitch_4
    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 419
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    goto :goto_0

    .line 422
    :sswitch_5
    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 423
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x9

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    goto :goto_0

    .line 426
    :sswitch_6
    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 427
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x1406 -> :sswitch_0
        0x8b50 -> :sswitch_1
        0x8b51 -> :sswitch_2
        0x8b52 -> :sswitch_3
        0x8b5a -> :sswitch_4
        0x8b5b -> :sswitch_5
        0x8b5c -> :sswitch_6
    .end sparse-switch
.end method

.method public setUniformValue(Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 368
    invoke-direct {p0, p1, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->getProgramUniform(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;

    move-result-object v0

    .line 369
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->useProgram()V

    .line 370
    array-length v1, p2

    .line 371
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 389
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x44

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot assign int-array to incompatible uniform type for uniform \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :sswitch_0
    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 374
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    invoke-static {v0, v1, p2, v3}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 392
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set uniform value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 393
    return-void

    .line 377
    :sswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 378
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p2, v3}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    goto :goto_0

    .line 381
    :sswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 382
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1, p2, v3}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    goto :goto_0

    .line 385
    :sswitch_3
    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->checkUniformAssignment(Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;II)V

    .line 386
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->getLocation()I

    move-result v0

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p2, v3}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    goto :goto_0

    .line 371
    nop

    :sswitch_data_0
    .sparse-switch
        0x1404 -> :sswitch_0
        0x8b53 -> :sswitch_1
        0x8b54 -> :sswitch_2
        0x8b55 -> :sswitch_3
    .end sparse-switch
.end method

.method public setVertexCount(I)V
    .locals 0

    .prologue
    .line 586
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->mVertexCount:I

    .line 587
    return-void
.end method

.method public texCoordAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    const-string v0, "a_texcoord"

    return-object v0
.end method
