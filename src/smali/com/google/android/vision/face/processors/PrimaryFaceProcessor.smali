.class public Lcom/google/android/vision/face/processors/PrimaryFaceProcessor;
.super Lcom/google/android/vision/face/processors/DetectionProcessor;
.source "PrimaryFaceProcessor.java"


# instance fields
.field private mCurrentFaceId:I


# virtual methods
.method public final onDetection(Lcom/google/android/vision/face/DetectionResults;)V
    .locals 10

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 76
    invoke-virtual {p1}, Lcom/google/android/vision/face/DetectionResults;->getFaces()Landroid/util/SparseArray;

    move-result-object v6

    .line 77
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {v9, p1}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceMissing(Lcom/google/android/vision/face/DetectionResults;)V

    .line 107
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 83
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 84
    invoke-virtual {v9}, Lcom/google/android/vision/face/Detector;->isTrackingSingleFace()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1117
    const/4 v0, 0x1

    move v2, v0

    move v3, v4

    .line 1118
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1119
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1120
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 1121
    invoke-virtual {v0}, Lcom/google/android/vision/face/Face;->getConfidence()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    .line 1125
    invoke-virtual {v0}, Lcom/google/android/vision/face/Face;->getWidth()F

    move-result v0

    .line 1126
    cmpl-float v7, v0, v2

    if-lez v7, :cond_1

    move v2, v0

    move v3, v5

    .line 1118
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 86
    :cond_2
    if-ltz v3, :cond_6

    .line 88
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 89
    invoke-virtual {v9, v3}, Lcom/google/android/vision/face/Detector;->trackSingleFace(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    const-string v1, "PrimaryFaceProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Could not set trackSingleFace to "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    iget v1, p0, Lcom/google/android/vision/face/processors/PrimaryFaceProcessor;->mCurrentFaceId:I

    if-eq v3, v1, :cond_5

    .line 99
    iget v1, p0, Lcom/google/android/vision/face/processors/PrimaryFaceProcessor;->mCurrentFaceId:I

    if-eq v1, v4, :cond_4

    .line 100
    invoke-virtual {v9}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceDone()V

    .line 102
    :cond_4
    invoke-virtual {v9, v3}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceCreate(I)V

    .line 103
    iput v3, p0, Lcom/google/android/vision/face/processors/PrimaryFaceProcessor;->mCurrentFaceId:I

    .line 106
    :cond_5
    invoke-virtual {v9, p1, v0}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceUpdate(Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/Face;)V

    goto :goto_0

    .line 93
    :cond_6
    invoke-virtual {v9, p1}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceMissing(Lcom/google/android/vision/face/DetectionResults;)V

    goto :goto_0
.end method
