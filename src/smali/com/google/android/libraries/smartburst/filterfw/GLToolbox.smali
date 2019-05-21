.class public Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;
.super Ljava/lang/Object;
.source "GLToolbox.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateTexturePixels(IIII)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->setTexturePixels(IILjava/nio/ByteBuffer;II)V

    .line 111
    return-void
.end method

.method private static assertNonUiThread(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attempting to perform GL operation \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' on UI thread!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    return-void
.end method

.method public static attachTextureToFbo(II)V
    .locals 4

    .prologue
    const v3, 0x8d40

    .line 100
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 101
    const v0, 0x8ce0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v3, v0, v1, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 106
    const-string v0, "glFramebufferTexture2D"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static attachedTexture(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 90
    const v1, 0x8d40

    const v2, 0x8ce0

    const v3, 0x8cd1

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetFramebufferAttachmentParameteriv(III[II)V

    .line 95
    const-string v1, "glGetFramebufferAttachmentParameteriv"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 96
    aget v0, v0, v4

    return v0
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 183
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    :goto_0
    if-eqz v0, :cond_0

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    goto :goto_0

    .line 189
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GL Operation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' caused error(s) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 193
    throw v0

    .line 196
    :cond_1
    return-void
.end method

.method public static deleteFbo(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [I

    aput p0, v0, v2

    .line 53
    const-string v1, "glDeleteFramebuffers"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->assertNonUiThread(Ljava/lang/String;)V

    .line 54
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 55
    const-string v0, "glDeleteFramebuffers"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static deleteTexture(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-array v0, v3, [I

    aput p0, v0, v2

    .line 46
    const-string v1, "glDeleteTextures"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->assertNonUiThread(Ljava/lang/String;)V

    .line 47
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 48
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static deleteVbo(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    new-array v0, v2, [I

    aput p0, v0, v1

    .line 178
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 179
    const-string v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static generateFbo()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    new-array v0, v1, [I

    .line 67
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 68
    const-string v1, "glGenFramebuffers"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 69
    aget v0, v0, v2

    return v0
.end method

.method public static generateTexture()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    new-array v0, v1, [I

    .line 60
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 61
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 62
    aget v0, v0, v2

    return v0
.end method

.method public static generateVbo()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    new-array v0, v1, [I

    .line 155
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 156
    const-string v1, "glGenBuffers"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 157
    aget v0, v0, v2

    return v0
.end method

.method public static isTexture(I)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    return v0
.end method

.method public static isVbo(I)Z
    .locals 1

    .prologue
    .line 173
    invoke-static {p0}, Landroid/opengl/GLES20;->glIsBuffer(I)Z

    move-result v0

    return v0
.end method

.method public static readFbo(ILjava/nio/ByteBuffer;II)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 73
    const-string v1, "readFbo"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 74
    const v1, 0x8d40

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 75
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 76
    const-string v0, "glReadPixels"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/util/Trace;->endSection()V

    .line 78
    return-void
.end method

.method public static readTarget(Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;Ljava/nio/ByteBuffer;II)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 81
    const-string v1, "readTarget"

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focus()V

    .line 83
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 84
    const-string v0, "glReadPixels"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/util/Trace;->endSection()V

    .line 86
    return-void
.end method

.method public static setDefaultTexParams()V
    .locals 4

    .prologue
    const v3, 0x812f

    const/16 v2, 0x2601

    const/16 v1, 0xde1

    .line 138
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 140
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 142
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 144
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 146
    const-string v0, "glTexParameteri"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static setTexturePixels(IILandroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 115
    invoke-static {p1, v0, p2, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 116
    const-string v0, "glTexImage2D"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->setDefaultTexParams()V

    .line 118
    return-void
.end method

.method public static setTexturePixels(IILjava/nio/ByteBuffer;II)V
    .locals 9

    .prologue
    const/16 v2, 0x1908

    const/4 v1, 0x0

    .line 122
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 131
    const/16 v7, 0x1401

    move v0, p1

    move v3, p3

    move v4, p4

    move v5, v1

    move v6, v2

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 133
    const-string v0, "glTexImage2D"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->setDefaultTexParams()V

    .line 135
    return-void
.end method

.method public static setVboData(ILjava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    const v2, 0x8892

    .line 161
    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 162
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const v1, 0x88e4

    invoke-static {v2, v0, p1, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 163
    const-string v0, "glBufferData"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static setVboFloats(I[F)V
    .locals 2

    .prologue
    .line 167
    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    .line 168
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    invoke-static {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->setVboData(ILjava/nio/ByteBuffer;)V

    .line 170
    return-void
.end method

.method public static textureNone()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static vboNone()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method
