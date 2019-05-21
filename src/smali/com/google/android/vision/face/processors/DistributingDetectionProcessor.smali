.class public Lcom/google/android/vision/face/processors/DistributingDetectionProcessor;
.super Lcom/google/android/vision/face/processors/DetectionProcessor;
.source "DistributingDetectionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vision/face/processors/DistributingDetectionProcessor$Factory;
    }
.end annotation


# direct methods
.method private final updateFaces(Lcom/google/android/vision/face/DetectionResults;)V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/google/android/vision/face/DetectionResults;->getFaces()Landroid/util/SparseArray;

    move-result-object v3

    .line 125
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 126
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 127
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 128
    const/4 v4, 0x0

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vision/face/processors/FaceTracker;

    .line 129
    invoke-virtual {v1, p1, v0}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceUpdate(Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/Face;)V

    .line 125
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public final onDetection(Lcom/google/android/vision/face/DetectionResults;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 73
    .line 1082
    invoke-virtual {p1}, Lcom/google/android/vision/face/DetectionResults;->getFaces()Landroid/util/SparseArray;

    move-result-object v2

    move v0, v1

    .line 1083
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1084
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1085
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1086
    invoke-interface {v5}, Lcom/google/android/vision/face/processors/DistributingDetectionProcessor$Factory;->createFaceTracker()Lcom/google/android/vision/face/processors/FaceTracker;

    move-result-object v4

    .line 1087
    invoke-virtual {v4, v3}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceCreate(I)V

    .line 1088
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1083
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1100
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/vision/face/DetectionResults;->getFaces()Landroid/util/SparseArray;

    move-result-object v2

    .line 1101
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1102
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1103
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1104
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1105
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/processors/FaceTracker;

    .line 1106
    invoke-virtual {v0}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceDone()V

    .line 1107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1113
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_2

    .line 75
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/vision/face/processors/DistributingDetectionProcessor;->updateFaces(Lcom/google/android/vision/face/DetectionResults;)V

    .line 76
    return-void
.end method
