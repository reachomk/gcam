.class public Lcom/google/android/vision/face/Detector$DetectionSettings;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vision/face/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectionSettings"
.end annotation


# static fields
.field static final FRONTAL_DETECTOR:I = 0x0

.field static final FRONTAL_EYE_LANDMARKS:I = 0x2

.field static final FRONTAL_LANDMARKS:I = 0x1

.field static final MAX_FAST_DETECTOR_AGGRESSIVENESS_LEVEL:I = 0x4

.field static final MIN_FAST_DETECTOR_AGGRESSIVENESS_LEVEL:I = 0x0

.field static final MULTI_POSE_DETECTOR:I = 0x1

.field static final MULTI_POSE_LANDMARKS:I = 0x3

.field static final NO_LANDMARKS:I


# instance fields
.field private mConfidenceThreshold:F

.field private mDetectorType:I

.field private mFastDetectorAggressiveness:I

.field private mLandmarkDetectorType:I

.field private mMaxEyeDistancePixels:I

.field private mMaxNumFaces:I

.field private mMinEyeDistancePixels:I

.field private mNumThreads:I

.field private mProportionalMaxFaceSize:F

.field private mProportionalMinFaceSize:F

.field private mSearchRegion:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mDetectorType:I

    .line 61
    iput v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mLandmarkDetectorType:I

    .line 62
    iput v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mFastDetectorAggressiveness:I

    .line 63
    const/16 v0, 0x18

    iput v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMinEyeDistancePixels:I

    .line 64
    iput v1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMaxEyeDistancePixels:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mProportionalMinFaceSize:F

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mProportionalMaxFaceSize:F

    .line 67
    iput v1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMaxNumFaces:I

    .line 68
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mConfidenceThreshold:F

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mSearchRegion:Landroid/graphics/Rect;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mNumThreads:I

    return-void
.end method


# virtual methods
.method getConfidenceThreshold()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mConfidenceThreshold:F

    return v0
.end method

.method getDetectorType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mDetectorType:I

    return v0
.end method

.method getFastDetectorAggressiveness()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mFastDetectorAggressiveness:I

    return v0
.end method

.method getLandmarkDetectorType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mLandmarkDetectorType:I

    return v0
.end method

.method getMaxEyeDistancePixels()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMaxEyeDistancePixels:I

    return v0
.end method

.method getMaxNumFaces()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMaxNumFaces:I

    return v0
.end method

.method getMinEyeDistancePixels()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMinEyeDistancePixels:I

    return v0
.end method

.method getNumThreads()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mNumThreads:I

    return v0
.end method

.method getProportionalMaxFaceSize()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mProportionalMaxFaceSize:F

    return v0
.end method

.method getProportionalMinFaceSize()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mProportionalMinFaceSize:F

    return v0
.end method

.method getSearchRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mSearchRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method setConfidenceThreshold(F)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mConfidenceThreshold:F

    .line 169
    return-void
.end method

.method setDetectorType(I)V
    .locals 2

    .prologue
    .line 73
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detector type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mDetectorType:I

    .line 77
    return-void
.end method

.method setFastDetectorAggressiveness(I)V
    .locals 2

    .prologue
    .line 101
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detector aggressiveness level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mFastDetectorAggressiveness:I

    .line 106
    return-void
.end method

.method setLandmarkDetectorType(I)V
    .locals 2

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid landmark detector type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_0
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mLandmarkDetectorType:I

    .line 90
    return-void

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setMaxEyeDistancePixels(I)V
    .locals 2

    .prologue
    .line 124
    if-gez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid maximum eye distance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMaxEyeDistancePixels:I

    .line 128
    return-void
.end method

.method setMaxNumFaces(I)V
    .locals 2

    .prologue
    .line 157
    if-gtz p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid maximum number of faces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMaxNumFaces:I

    .line 161
    return-void
.end method

.method setMinEyeDistancePixels(I)V
    .locals 2

    .prologue
    .line 113
    if-gez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid minimum eye distance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mMinEyeDistancePixels:I

    .line 117
    return-void
.end method

.method setNumThreads(I)V
    .locals 2

    .prologue
    .line 189
    if-gtz p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of threads."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mNumThreads:I

    .line 193
    return-void
.end method

.method setProportionalMaxFaceSize(F)V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid proportional maximum face size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mProportionalMaxFaceSize:F

    .line 150
    return-void
.end method

.method setProportionalMinFaceSize(F)V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid proportional minimum face size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    iput p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mProportionalMinFaceSize:F

    .line 139
    return-void
.end method

.method setSearchRegion(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 176
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid search region."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    iput-object p1, p0, Lcom/google/android/vision/face/Detector$DetectionSettings;->mSearchRegion:Landroid/graphics/Rect;

    .line 182
    return-void
.end method
