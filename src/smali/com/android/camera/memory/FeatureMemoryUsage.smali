.class public interface abstract Lcom/android/camera/memory/FeatureMemoryUsage;
.super Ljava/lang/Object;
.source "FeatureMemoryUsage.java"


# virtual methods
.method public abstract getAdditionalMemoryForShot()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentPeakMemory()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeature()Lcom/android/camera/memory/Feature;
.end method
