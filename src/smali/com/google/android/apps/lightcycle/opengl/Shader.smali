.class public Lcom/google/android/apps/lightcycle/opengl/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# instance fields
.field protected program:I

.field protected textureCoordIndex:I

.field protected transformIndex:I

.field protected vertexIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->vertexIndex:I

    .line 21
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->textureCoordIndex:I

    .line 22
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->transformIndex:I

    .line 23
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 102
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 104
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 105
    if-nez v2, :cond_0

    .line 106
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v1, "Unable to create program"

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 109
    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 110
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 111
    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 112
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 113
    new-array v3, v6, [I

    .line 114
    const v4, 0x8b82

    invoke-static {v2, v4, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 116
    aget v3, v3, v5

    if-eq v3, v6, :cond_1

    .line 117
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 118
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v1, "Could not link program"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 121
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 122
    return v2
.end method

.method protected static getAttribute(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 147
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 148
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in shader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    const-string v2, "glGetAttribLocation "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 151
    return v1

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getUniform(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 157
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 158
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in shader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    const-string v2, "glGetUniformLocation "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 161
    return v1

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 128
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v1, "Unable to create shader"

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 133
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 134
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 135
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 136
    aget v1, v1, v3

    if-nez v1, :cond_1

    .line 137
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 139
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    return v0
.end method


# virtual methods
.method public final bind()V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 89
    return-void
.end method

.method public final freeGLMemory()V
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 177
    return-void
.end method

.method public final setTexCoords(Ljava/nio/FloatBuffer;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 61
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->textureCoordIndex:I

    if-gez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->textureCoordIndex:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 67
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->textureCoordIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public final setTransform([F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->transformIndex:I

    if-gez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->transformIndex:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0
.end method

.method public final setVertices(Ljava/nio/FloatBuffer;)V
    .locals 6

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->vertexIndex:I

    if-gez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->vertexIndex:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 56
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->vertexIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method
