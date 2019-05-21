.class public Lcom/google/android/vision/face/Face;
.super Ljava/lang/Object;
.source "Face.java"


# static fields
.field private static final EYE_DISTANCE_DIVISOR:F = 2.69f

.field public static final UNCOMPUTED_PROBABILITY:F = -1.0f

.field public static final UNTRACKED:I = -0x1


# instance fields
.field private mConfidence:F

.field private mCoreFeaturesBoundingBox:Landroid/graphics/RectF;

.field private mFrameNumber:I

.field private mHeight:F

.field private mIsLeftEyeOpenScore:F

.field private mIsRightEyeOpenScore:F

.field private mIsSmilingScore:F

.field private mLandmarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Landmark;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:Landroid/graphics/PointF;

.field private mRollDegrees:F

.field private mTrackId:I

.field private mVisualizationPolygon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:F

.field private mYawDegrees:F


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;FF[Landroid/graphics/PointF;FFF[Lcom/google/android/vision/face/Landmark;IIFFF)V
    .locals 2

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/google/android/vision/face/Face;->mPosition:Landroid/graphics/PointF;

    .line 247
    iput p2, p0, Lcom/google/android/vision/face/Face;->mWidth:F

    .line 248
    iput p3, p0, Lcom/google/android/vision/face/Face;->mHeight:F

    .line 249
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vision/face/Face;->mVisualizationPolygon:Ljava/util/List;

    .line 250
    iput p5, p0, Lcom/google/android/vision/face/Face;->mYawDegrees:F

    .line 251
    iput p6, p0, Lcom/google/android/vision/face/Face;->mRollDegrees:F

    .line 252
    iput p7, p0, Lcom/google/android/vision/face/Face;->mConfidence:F

    .line 253
    invoke-static {p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vision/face/Face;->mLandmarks:Ljava/util/List;

    .line 255
    if-ltz p9, :cond_1

    .line 256
    iput p9, p0, Lcom/google/android/vision/face/Face;->mTrackId:I

    .line 261
    :goto_0
    if-ltz p10, :cond_2

    .line 262
    iput p10, p0, Lcom/google/android/vision/face/Face;->mFrameNumber:I

    .line 267
    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, p11, v0

    if-ltz v0, :cond_3

    .line 268
    iput p11, p0, Lcom/google/android/vision/face/Face;->mIsLeftEyeOpenScore:F

    .line 273
    :goto_2
    const/4 v0, 0x0

    cmpl-float v0, p12, v0

    if-ltz v0, :cond_4

    .line 274
    iput p12, p0, Lcom/google/android/vision/face/Face;->mIsRightEyeOpenScore:F

    .line 279
    :goto_3
    iget v0, p0, Lcom/google/android/vision/face/Face;->mIsSmilingScore:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 280
    iput p13, p0, Lcom/google/android/vision/face/Face;->mIsSmilingScore:F

    .line 285
    :goto_4
    invoke-direct {p0, p8}, Lcom/google/android/vision/face/Face;->computeLandmarksBoundingBox([Lcom/google/android/vision/face/Landmark;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vision/face/Face;->mCoreFeaturesBoundingBox:Landroid/graphics/RectF;

    .line 286
    iget-object v0, p0, Lcom/google/android/vision/face/Face;->mCoreFeaturesBoundingBox:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vision/face/Face;->computeApproximateBoundingBox(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vision/face/Face;->mCoreFeaturesBoundingBox:Landroid/graphics/RectF;

    .line 289
    :cond_0
    return-void

    .line 258
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vision/face/Face;->mTrackId:I

    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vision/face/Face;->mFrameNumber:I

    goto :goto_1

    .line 270
    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/vision/face/Face;->mIsLeftEyeOpenScore:F

    goto :goto_2

    .line 276
    :cond_4
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/vision/face/Face;->mIsRightEyeOpenScore:F

    goto :goto_3

    .line 282
    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/vision/face/Face;->mIsSmilingScore:F

    goto :goto_4
.end method

.method private computeApproximateBoundingBox(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 334
    const v0, 0x402c28f6    # 2.69f

    div-float v0, p2, v0

    .line 335
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 336
    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float v3, v0, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 337
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 338
    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 339
    iget v0, p1, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, p3, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 340
    return-object v1
.end method

.method private computeLandmarksBoundingBox([Lcom/google/android/vision/face/Landmark;)Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x1

    .line 292
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 293
    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 294
    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 295
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 296
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 299
    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    .line 300
    invoke-static {v4}, Lcom/google/android/vision/face/Face;->isBoundingBoxLandmark(Lcom/google/android/vision/face/Landmark;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    invoke-virtual {v4}, Lcom/google/android/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 302
    invoke-virtual {v4}, Lcom/google/android/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 303
    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 304
    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 305
    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 306
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 307
    add-int/lit8 v0, v0, 0x1

    .line 299
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    move-object v0, v1

    .line 315
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isBoundingBoxLandmark(Lcom/google/android/vision/face/Landmark;)Z
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/android/vision/face/Landmark;->getCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 329
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 327
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/android/vision/face/Face;->mConfidence:F

    return v0
.end method

.method public getCoreFeaturesBoundingBox()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/vision/face/Face;->mCoreFeaturesBoundingBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFrameNumber()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/vision/face/Face;->mFrameNumber:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/vision/face/Face;->mHeight:F

    return v0
.end method

.method public getIsLeftEyeOpenScore()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/google/android/vision/face/Face;->mIsLeftEyeOpenScore:F

    return v0
.end method

.method public getIsRightEyeOpenScore()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/vision/face/Face;->mIsRightEyeOpenScore:F

    return v0
.end method

.method public getIsSmilingScore()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/android/vision/face/Face;->mIsSmilingScore:F

    return v0
.end method

.method public getLandmarks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Landmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/vision/face/Face;->mLandmarks:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/vision/face/Face;->mPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getRollDegrees()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/vision/face/Face;->mRollDegrees:F

    return v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/vision/face/Face;->mTrackId:I

    return v0
.end method

.method public getVisualizationPolygon()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/vision/face/Face;->mVisualizationPolygon:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/vision/face/Face;->mWidth:F

    return v0
.end method

.method public getYawDegrees()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/vision/face/Face;->mYawDegrees:F

    return v0
.end method
