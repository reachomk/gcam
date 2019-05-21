.class public final Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "PhotoCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    }
.end annotation


# instance fields
.field private frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private intrinsicsToCamera:[F

.field private mvp:[F

.field private panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

.field private slerpAlpha:D

.field private tempQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

.field private tempRotation:[F

.field private tempTransform:[F

.field private textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x10

    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 31
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempTransform:[F

    .line 32
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    .line 33
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->intrinsicsToCamera:[F

    .line 34
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    .line 35
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Quaternion;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    .line 39
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .line 74
    :try_start_0
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    .line 75
    const-string v0, "photo collection"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->intrinsicsToCamera:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->intrinsicsToCamera:[F

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 84
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final addNewPhoto([F)I
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 94
    new-instance v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    invoke-direct {v6, p0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;-><init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;)V

    .line 95
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    .line 98
    iget-object v0, v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    iget-object v7, v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    .line 1235
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    .line 2175
    aget v3, v0, v1

    aput v3, v2, v1

    .line 2176
    aget v3, v0, v4

    aput v3, v2, v4

    .line 2177
    aget v3, v0, v5

    aput v3, v2, v5

    .line 2178
    aput v8, v2, v9

    .line 2179
    const/4 v3, 0x4

    aget v4, v0, v9

    aput v4, v2, v3

    .line 2180
    const/4 v3, 0x5

    const/4 v4, 0x4

    aget v4, v0, v4

    aput v4, v2, v3

    .line 2181
    const/4 v3, 0x6

    const/4 v4, 0x5

    aget v4, v0, v4

    aput v4, v2, v3

    .line 2182
    const/4 v3, 0x7

    aput v8, v2, v3

    .line 2183
    const/16 v3, 0x8

    const/4 v4, 0x6

    aget v4, v0, v4

    aput v4, v2, v3

    .line 2184
    const/16 v3, 0x9

    const/4 v4, 0x7

    aget v4, v0, v4

    aput v4, v2, v3

    .line 2185
    const/16 v3, 0xa

    const/16 v4, 0x8

    aget v0, v0, v4

    aput v0, v2, v3

    .line 2186
    const/16 v0, 0xb

    const/16 v3, 0xc

    const/16 v4, 0xd

    const/16 v5, 0xe

    aput v8, v2, v5

    aput v8, v2, v4

    aput v8, v2, v3

    aput v8, v2, v0

    .line 2187
    const/16 v0, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    .line 1238
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempTransform:[F

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->intrinsicsToCamera:[F

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1241
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempTransform:[F

    invoke-static {v7, v1, v0, v1}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    .line 101
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    .line 105
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    sget v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TNN0PBECTM2UHQCAHINGT3LE9II8L35F1Q7ASJ5AHSN0P9R:I

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>(I)V

    iput-object v0, v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 108
    iget-object v0, v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->createFrameTexture(I)V

    .line 110
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    sget v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TNN0PBECTM2UHQCAHINGT3LE9II8L35F1Q7ASJ5AHSN0P9R:I

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>(I)V

    iput-object v0, v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, v6, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v0

    return v0
.end method

.method public final drawObject([F)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .line 3071
    iget-object v10, v2, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getDrawOutline()Z

    move-result v11

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getDrawTextured()Z

    move-result v12

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getTextureId()I

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutline(Z)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawTextured(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    .line 3082
    iput-object v3, v2, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 267
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    sub-double/2addr v4, v6

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    .line 269
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 270
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    .line 276
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    monitor-enter v13

    .line 277
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v9, v2, :cond_b

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    move-object v8, v0

    .line 281
    iget-boolean v2, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->visible:Z

    if-eqz v2, :cond_6

    .line 285
    iget v14, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    .line 286
    iget v15, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    .line 295
    iget-object v6, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    .line 296
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    .line 297
    iget-object v6, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->startQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    iget-object v7, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->endQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    move-object/from16 v18, v0

    .line 4117
    iget-wide v2, v6, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    iget-wide v4, v7, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    mul-double/2addr v2, v4

    iget-wide v4, v6, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    iget-wide v0, v7, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    move-wide/from16 v20, v0

    mul-double v4, v4, v20

    add-double/2addr v2, v4

    iget-wide v4, v6, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    iget-wide v0, v7, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    move-wide/from16 v20, v0

    mul-double v4, v4, v20

    add-double/2addr v2, v4

    iget-wide v4, v6, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    iget-wide v0, v7, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    move-wide/from16 v20, v0

    mul-double v4, v4, v20

    add-double/2addr v4, v2

    .line 3149
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v4, v2

    if-gtz v2, :cond_1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_2

    .line 3150
    :cond_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/google/android/apps/lightcycle/math/Quaternion;->set(Lcom/google/android/apps/lightcycle/math/Quaternion;)V

    .line 3158
    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 3159
    const-wide/16 v20, 0x0

    cmpg-double v19, v4, v20

    if-gez v19, :cond_3

    .line 3160
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 3161
    neg-double v4, v4

    .line 3166
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    .line 3167
    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v19, v4, v20

    if-gtz v19, :cond_7

    .line 3168
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/google/android/apps/lightcycle/math/Quaternion;->set(Lcom/google/android/apps/lightcycle/math/Quaternion;)V

    .line 299
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    .line 5074
    iget-wide v4, v2, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    double-to-float v4, v4

    .line 5075
    iget-wide v6, v2, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    double-to-float v5, v6

    .line 5076
    iget-wide v6, v2, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    double-to-float v6, v6

    .line 5077
    iget-wide v0, v2, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 5078
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v4

    .line 5079
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v5

    .line 5080
    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, v6

    .line 5081
    mul-float v18, v7, v2

    .line 5082
    mul-float v19, v16, v2

    .line 5083
    mul-float v2, v2, v17

    .line 5084
    mul-float/2addr v7, v4

    .line 5085
    mul-float v20, v16, v4

    .line 5086
    mul-float v4, v4, v17

    .line 5087
    mul-float v16, v16, v5

    .line 5088
    mul-float v5, v5, v17

    .line 5089
    mul-float v6, v6, v17

    .line 5091
    const/16 v17, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v22, v16, v6

    sub-float v21, v21, v22

    aput v21, v3, v17

    .line 5092
    const/16 v17, 0x1

    add-float v21, v20, v2

    aput v21, v3, v17

    .line 5093
    const/16 v17, 0x2

    sub-float v21, v4, v19

    aput v21, v3, v17

    .line 5094
    const/16 v17, 0x3

    const/16 v21, 0x0

    aput v21, v3, v17

    .line 5095
    const/16 v17, 0x4

    sub-float v2, v20, v2

    aput v2, v3, v17

    .line 5096
    const/4 v2, 0x5

    const/high16 v17, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    sub-float v6, v17, v6

    aput v6, v3, v2

    .line 5097
    const/4 v2, 0x6

    add-float v6, v5, v18

    aput v6, v3, v2

    .line 5098
    const/4 v2, 0x7

    const/4 v6, 0x0

    aput v6, v3, v2

    .line 5099
    const/16 v2, 0x8

    add-float v4, v4, v19

    aput v4, v3, v2

    .line 5100
    const/16 v2, 0x9

    sub-float v4, v5, v18

    aput v4, v3, v2

    .line 5101
    const/16 v2, 0xa

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v5, v7, v16

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 5102
    const/16 v2, 0xb

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 5103
    const/16 v2, 0xc

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 5104
    const/16 v2, 0xd

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 5105
    const/16 v2, 0xe

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 5106
    const/16 v2, 0xf

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    .line 300
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    .line 302
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 308
    iget-object v2, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v2

    .line 309
    iget-object v3, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v3

    .line 312
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2, v14}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    .line 335
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_5

    .line 336
    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v2, v14, v2

    if-lez v2, :cond_a

    .line 337
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    .line 343
    :cond_5
    :goto_3
    const/16 v2, 0x1f4

    if-ge v15, v2, :cond_6

    .line 344
    iget v2, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    .line 277
    :cond_6
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    .line 3171
    :cond_7
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    div-double v20, v20, v22

    .line 3172
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v16

    mul-double v22, v22, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v22, v22, v20

    .line 3173
    mul-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    mul-double v2, v2, v20

    .line 3175
    iget-wide v4, v6, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    mul-double v4, v4, v22

    iget-wide v0, v7, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v4, v4, v16

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 3176
    iget-wide v4, v6, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    mul-double v4, v4, v22

    iget-wide v0, v7, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v4, v4, v16

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 3177
    iget-wide v4, v6, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    mul-double v4, v4, v22

    iget-wide v0, v7, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v4, v4, v16

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 3178
    iget-wide v4, v6, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    mul-double v4, v4, v22

    iget-wide v6, v7, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    goto/16 :goto_1

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 316
    :cond_8
    const/4 v4, -0x1

    if-ne v2, v4, :cond_9

    .line 318
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    goto/16 :goto_2

    .line 323
    :cond_9
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    double-to-float v4, v4

    .line 324
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v5, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    invoke-virtual {v2, v5}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    invoke-virtual {v2, v5}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    goto/16 :goto_2

    .line 339
    :cond_a
    iget v2, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v14

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v8, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    goto/16 :goto_3

    .line 347
    :cond_b
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v11}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutline(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v12}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawTextured(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .line 6082
    iput-object v10, v2, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->shader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 353
    return-void
.end method

.method public final freeGLMemory()V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 366
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    .line 360
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->freeGLMemory()V

    .line 375
    :cond_3
    return-void
.end method

.method public final getNumFrames()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final setPhotoVisibility(IZ)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    iput-boolean p2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->visible:Z

    .line 128
    :cond_0
    return-void
.end method

.method public final undoAddPhoto()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 138
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
