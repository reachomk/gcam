.class final Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;
.super Ljava/lang/Object;
.source "ImageShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProgramUniform"
.end annotation


# instance fields
.field private mLocation:I

.field private mName:Ljava/lang/String;

.field private mSize:I

.field private mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-array v0, v2, [I

    .line 201
    const v1, 0x8b87

    invoke-static {p1, v1, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 203
    new-array v7, v2, [I

    .line 204
    new-array v5, v2, [I

    .line 205
    aget v1, v0, v4

    new-array v9, v1, [B

    .line 206
    new-array v3, v2, [I

    .line 208
    aget v2, v0, v4

    move v0, p1

    move v1, p2

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 209
    new-instance v0, Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->access$000([B)I

    move-result v1

    invoke-direct {v0, v9, v4, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mName:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mLocation:I

    .line 211
    aget v0, v7, v4

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mType:I

    .line 212
    aget v0, v5, v4

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mSize:I

    .line 213
    const-string v0, "Initializing uniform"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 214
    return-void
.end method


# virtual methods
.method public final getLocation()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mLocation:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mSize:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$ProgramUniform;->mType:I

    return v0
.end method
