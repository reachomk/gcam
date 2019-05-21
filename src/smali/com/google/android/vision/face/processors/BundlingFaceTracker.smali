.class public Lcom/google/android/vision/face/processors/BundlingFaceTracker;
.super Lcom/google/android/vision/face/processors/FaceTracker;
.source "BundlingFaceTracker.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/vision/face/processors/FaceTracker;",
        ">",
        "Lcom/google/android/vision/face/processors/FaceTracker;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final onFaceCreate(I)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/processors/FaceTracker;

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceCreate(I)V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final onFaceDone()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/processors/FaceTracker;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceDone()V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public final onFaceMissing(Lcom/google/android/vision/face/DetectionResults;)V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/processors/FaceTracker;

    .line 67
    invoke-virtual {v0, p1}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceMissing(Lcom/google/android/vision/face/DetectionResults;)V

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public final onFaceUpdate(Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/Face;)V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/processors/FaceTracker;

    .line 55
    invoke-virtual {v0, p1, p2}, Lcom/google/android/vision/face/processors/FaceTracker;->onFaceUpdate(Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/Face;)V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
