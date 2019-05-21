.class public Lcom/google/android/apps/lightcycle/opengl/Sprite;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "Sprite.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allocatedTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/lightcycle/opengl/GLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private depth:F

.field private halfX:F

.field private halfY:F

.field private imageDim:Landroid/graphics/Point;

.field private initialized:Z

.field private numIndices:I

.field private numVertices:I

.field private objectTransform:[F

.field private transform:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "Sprite"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 23
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->depth:F

    .line 25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->imageDim:Landroid/graphics/Point;

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->transform:[F

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->objectTransform:[F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initialized:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->allocatedTextures:Ljava/util/ArrayList;

    return-void
.end method

.method private final createRenderData()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v5, 0x6

    const/4 v1, 0x0

    .line 58
    iput v5, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->numIndices:I

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->numVertices:I

    .line 62
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->numVertices:I

    mul-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x2

    .line 63
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->vertices:Ljava/nio/FloatBuffer;

    .line 66
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->numVertices:I

    shl-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x2

    .line 67
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->texCoords:Ljava/nio/FloatBuffer;

    .line 70
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->numIndices:I

    shl-int/lit8 v0, v0, 0x1

    .line 71
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->indices:Ljava/nio/ShortBuffer;

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->imageDim:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfX:F

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->imageDim:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfY:F

    .line 81
    new-array v2, v6, [F

    fill-array-data v2, :array_0

    move v0, v1

    .line 83
    :goto_0
    if-ge v0, v6, :cond_0

    .line 84
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->texCoords:Ljava/nio/FloatBuffer;

    aget v4, v2, v0

    invoke-virtual {v3, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-array v2, v5, [S

    fill-array-data v2, :array_1

    move v0, v1

    .line 89
    :goto_1
    if-ge v0, v5, :cond_1

    .line 90
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->indices:Ljava/nio/ShortBuffer;

    aget-short v4, v2, v0

    invoke-virtual {v3, v0, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->objectTransform:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 95
    return-void

    .line 81
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 88
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method private final initFromDrawable(Landroid/content/Context;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 100
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->textures:Ljava/util/Vector;

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 101
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->allocatedTextures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    if-nez v1, :cond_0

    .line 123
    :goto_0
    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->imageDim:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->textures:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->loadBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->createRenderData()V

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final drawObject([F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 316
    return-void
.end method

.method public final drawRotated([FFFFF)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 372
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initialized:Z

    if-nez v0, :cond_1

    .line 373
    sget-object v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->TAG:Ljava/lang/String;

    const-string v1, "Sprite not initialized."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 1088
    iget v0, v0, Lcom/google/android/apps/lightcycle/opengl/Shader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 385
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 387
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->transform:[F

    move-object v2, p1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 390
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->transform:[F

    move v5, v1

    move v7, v6

    move v8, v6

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 391
    cmpl-float v0, p5, v9

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->transform:[F

    invoke-static {v0, v1, p5, p5, p5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->transform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->textures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->textures:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNMUS35DPJMOBQJD1GM8PBI7CKLC___()V

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->numIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->indices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public final drawRotatedCentered([FFFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 422
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initialized:Z

    if-nez v0, :cond_1

    .line 423
    sget-object v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->TAG:Ljava/lang/String;

    const-string v1, "Sprite not initialized."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 2088
    iget v0, v0, Lcom/google/android/apps/lightcycle/opengl/Shader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 435
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 436
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->transform:[F

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfX:F

    add-float v4, p2, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfY:F

    add-float v5, p3, v2

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 440
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->transform:[F

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, v6

    move v3, v6

    move v4, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 441
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->transform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->textures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->textures:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNMUS35DPJMOBQJD1GM8PBI7CKLC___()V

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 451
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->numIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->indices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public final freeGLMemory()V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->allocatedTextures:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->allocatedTextures:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 534
    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->allocatedTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    :cond_2
    return-void
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->imageDim:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->imageDim:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public final init2D(Landroid/content/Context;IFF)Z
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initFromDrawable(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    :goto_0
    return v0

    .line 169
    :cond_0
    iput p3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->depth:F

    .line 170
    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfX:F

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfX:F

    .line 171
    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfY:F

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfY:F

    .line 172
    new-array v2, v5, [F

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfX:F

    neg-float v3, v3

    aput v3, v2, v0

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfY:F

    aput v3, v2, v1

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->depth:F

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfX:F

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfY:F

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->depth:F

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfX:F

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfY:F

    neg-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->depth:F

    aput v4, v2, v3

    const/16 v3, 0x9

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfX:F

    neg-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->halfY:F

    neg-float v4, v4

    aput v4, v2, v3

    const/16 v3, 0xb

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->depth:F

    aput v4, v2, v3

    .line 187
    :goto_1
    if-ge v0, v5, :cond_1

    .line 188
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->vertices:Ljava/nio/FloatBuffer;

    aget v4, v2, v0

    invoke-virtual {v3, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initialized:Z

    move v0, v1

    .line 191
    goto :goto_0
.end method
