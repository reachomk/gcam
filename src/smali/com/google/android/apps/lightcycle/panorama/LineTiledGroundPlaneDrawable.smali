.class public final Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "LineTiledGroundPlaneDrawable.java"


# instance fields
.field private numIndices:I

.field private planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;


# direct methods
.method public constructor <init>()V
    .locals 15

    .prologue
    const v14, 0x3e99999a    # 0.3f

    const v6, -0x3f5ccccc    # -5.1000004f

    const v13, 0x3cf5c290    # 0.030000001f

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 17
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->numIndices:I

    .line 40
    :try_start_0
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_WHITE:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 1153
    const v0, 0xe5b0

    .line 1154
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1155
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->vertices:Ljava/nio/FloatBuffer;

    .line 1158
    const/16 v0, 0x2648

    .line 1159
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->indices:Ljava/nio/ShortBuffer;

    .line 1163
    const v0, 0x9920

    .line 1164
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1165
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->texCoords:Ljava/nio/FloatBuffer;

    move v9, v1

    move v0, v1

    move v2, v1

    move v10, v6

    .line 1076
    :goto_0
    const/16 v3, 0x23

    if-ge v9, v3, :cond_2

    move v4, v1

    move v5, v6

    move v7, v2

    .line 1078
    :goto_1
    const/16 v2, 0x23

    if-ge v4, v2, :cond_1

    .line 1082
    add-int/lit8 v2, v7, 0x1

    int-to-short v2, v2

    sub-float v3, v10, v13

    const v8, -0x40266666    # -1.7f

    invoke-virtual {p0, v7, v3, v8, v5}, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->putVertex(IFFF)V

    .line 1083
    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    add-float v8, v10, v13

    const v11, -0x40266666    # -1.7f

    invoke-virtual {p0, v2, v8, v11, v5}, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->putVertex(IFFF)V

    .line 1084
    add-int/lit8 v2, v3, 0x1

    int-to-short v2, v2

    const v8, -0x40266666    # -1.7f

    sub-float v11, v5, v13

    invoke-virtual {p0, v3, v10, v8, v11}, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->putVertex(IFFF)V

    .line 1085
    add-int/lit8 v3, v2, 0x1

    int-to-short v8, v3

    const v3, -0x40266666    # -1.7f

    add-float v11, v5, v13

    invoke-virtual {p0, v2, v10, v3, v11}, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->putVertex(IFFF)V

    move v2, v0

    move v0, v1

    .line 1088
    :goto_2
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 1089
    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    add-int v11, v7, v0

    int-to-short v11, v11

    .line 1207
    iget-object v12, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v12, v2, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 1088
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    .line 1091
    :cond_0
    add-float v3, v5, v14

    .line 1078
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v3

    move v7, v8

    move v0, v2

    goto :goto_1

    .line 1093
    :cond_1
    add-float v3, v10, v14

    .line 1076
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v10, v3

    move v2, v7

    goto :goto_0

    .line 1095
    :cond_2
    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->numIndices:I
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_3
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public final drawObject([F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->bind()V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v1, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_WHITE:[F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setTransform([F)V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->indices:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->numIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->indices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 58
    return-void
.end method

.method public final freeGLMemory()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;->planeShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->freeGLMemory()V

    .line 105
    return-void
.end method
