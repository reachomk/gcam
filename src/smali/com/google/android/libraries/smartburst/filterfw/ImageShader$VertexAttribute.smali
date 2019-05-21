.class Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;
.super Ljava/lang/Object;
.source "ImageShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VertexAttribute"
.end annotation


# instance fields
.field private mComponents:I

.field private mIndex:I

.field private mIsConst:Z

.field private mLength:I

.field private mName:Ljava/lang/String;

.field private mOffset:I

.field private mShouldNormalize:Z

.field private mStride:I

.field private mType:I

.field private mValues:Ljava/nio/FloatBuffer;

.field private mVbo:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mName:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mLength:I

    .line 103
    return-void
.end method

.method private copyValues([F)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    return-void
.end method

.method private initBuffer([F)V
    .locals 2

    .prologue
    .line 183
    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    .line 185
    return-void
.end method


# virtual methods
.method public push()Z
    .locals 6

    .prologue
    const v2, 0x8892

    const/4 v0, 0x0

    .line 132
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIsConst:Z

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mComponents:I

    packed-switch v1, :pswitch_data_0

    .line 174
    :goto_0
    return v0

    .line 135
    :pswitch_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    .line 149
    :goto_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 173
    :goto_2
    const-string v0, "Set vertex-attribute values"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :pswitch_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    goto :goto_1

    .line 141
    :pswitch_2
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    goto :goto_1

    .line 144
    :pswitch_3
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    goto :goto_1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    .line 155
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 156
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mComponents:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mType:I

    iget-boolean v3, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mShouldNormalize:Z

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mStride:I

    iget-object v5, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 171
    :goto_3
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_2

    .line 163
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mVbo:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 164
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIndex:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mComponents:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mType:I

    iget-boolean v3, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mShouldNormalize:Z

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mStride:I

    iget v5, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mOffset:I

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    goto :goto_3

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public set(ZIIIII)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIsConst:Z

    .line 122
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mShouldNormalize:Z

    .line 123
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mOffset:I

    .line 124
    iput p3, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mStride:I

    .line 125
    iput p4, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mComponents:I

    .line 126
    iput p5, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mType:I

    .line 127
    iput p6, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mVbo:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mValues:Ljava/nio/FloatBuffer;

    .line 129
    return-void
.end method

.method public set(ZIII[F)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mIsConst:Z

    .line 107
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mShouldNormalize:Z

    .line 108
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mStride:I

    .line 109
    iput p3, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mComponents:I

    .line 110
    iput p4, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mType:I

    .line 111
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mVbo:I

    .line 112
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mLength:I

    array-length v1, p5

    if-eq v0, v1, :cond_0

    .line 113
    invoke-direct {p0, p5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->initBuffer([F)V

    .line 114
    array-length v0, p5

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mLength:I

    .line 116
    :cond_0
    invoke-direct {p0, p5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->copyValues([F)V

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader$VertexAttribute;->mName:Ljava/lang/String;

    return-object v0
.end method
