.class public final Lcom/google/android/apps/lightcycle/opengl/GLTexture;
.super Ljava/lang/Object;
.source "GLTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;
    }
.end annotation


# instance fields
.field private textureIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    .line 33
    add-int/lit8 v0, p1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    .line 46
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createNNTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createNNTexture()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const/high16 v4, 0x46180000    # 9728.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 113
    new-array v0, v1, [I

    .line 114
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 116
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 122
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 125
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 126
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 127
    aget v0, v0, v3

    return v0
.end method

.method public static createStandardTexture()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 94
    new-array v0, v1, [I

    .line 95
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 97
    aget v1, v0, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 103
    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 106
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 107
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 108
    aget v0, v0, v4

    return v0
.end method


# virtual methods
.method public final bind$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNMUS35DPJMOBQJD1GM8PBI7CKLC___()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    if-gez v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v1, "Trying to bind without a loaded texture"

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/16 v0, 0xde1

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 67
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    return v0
.end method

.method public final loadBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const v4, 0x812f

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 72
    new-array v0, v1, [I

    .line 73
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 74
    aget v0, v0, v3

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    .line 75
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 78
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 81
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 84
    const/16 v0, 0x2802

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 85
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 87
    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 88
    const-string v0, "Texture : loadBitmap"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    return-void
.end method

.method public final recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v3, [I

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    aput v1, v0, v2

    .line 56
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    .line 58
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->textureIndex:I

    .line 133
    return-void
.end method
