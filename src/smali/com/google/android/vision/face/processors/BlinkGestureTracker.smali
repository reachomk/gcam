.class public Lcom/google/android/vision/face/processors/BlinkGestureTracker;
.super Lcom/google/android/vision/face/processors/GestureTracker;
.source "BlinkGestureTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vision/face/processors/BlinkGestureTracker$1;,
        Lcom/google/android/vision/face/processors/BlinkGestureTracker$BlinkEntry;
    }
.end annotation


# virtual methods
.method public final onFaceUpdate(Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/Face;)V
    .locals 10

    .prologue
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    .line 75
    monitor-enter v0

    .line 76
    :try_start_0
    new-instance v0, Lcom/google/android/vision/face/processors/BlinkGestureTracker$BlinkEntry;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/google/android/vision/face/processors/BlinkGestureTracker$BlinkEntry;-><init>(Lcom/google/android/vision/face/processors/BlinkGestureTracker;B)V

    .line 77
    invoke-virtual {p2}, Lcom/google/android/vision/face/Face;->getIsLeftEyeOpenScore()F

    move-result v3

    iput v3, v0, Lcom/google/android/vision/face/processors/BlinkGestureTracker$BlinkEntry;->mIsLeftEyeOpenScore:F

    .line 78
    invoke-virtual {p2}, Lcom/google/android/vision/face/Face;->getIsRightEyeOpenScore()F

    move-result v3

    iput v3, v0, Lcom/google/android/vision/face/processors/BlinkGestureTracker$BlinkEntry;->mIsRightEyeOpenScore:F

    .line 79
    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-static {v3, p1, v0, v4, v5}, Lcom/google/android/vision/face/processors/BlinkGestureTracker;->addHistoryEntry(Ljava/util/Deque;Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;J)V

    .line 1096
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/processors/BlinkGestureTracker$BlinkEntry;

    .line 1097
    iget v6, v0, Lcom/google/android/vision/face/processors/BlinkGestureTracker$BlinkEntry;->mIsLeftEyeOpenScore:F

    .line 1098
    iget v0, v0, Lcom/google/android/vision/face/processors/BlinkGestureTracker$BlinkEntry;->mIsRightEyeOpenScore:F

    .line 1099
    cmpl-float v7, v6, v9

    if-eqz v7, :cond_0

    cmpl-float v7, v0, v9

    if-eqz v7, :cond_0

    .line 1104
    if-nez v4, :cond_1

    .line 1105
    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_0

    move v4, v1

    .line 1106
    goto :goto_0

    .line 1108
    :cond_1
    if-nez v3, :cond_2

    .line 1109
    cmpg-float v6, v6, v8

    if-gez v6, :cond_0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    move v3, v1

    .line 1110
    goto :goto_0

    .line 1113
    :cond_2
    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_0

    move v0, v1

    .line 81
    :goto_1
    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 87
    :cond_3
    const/4 v0, 0x0

    monitor-exit v0

    return-void

    :cond_4
    move v0, v2

    .line 1119
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
