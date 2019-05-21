.class public interface abstract Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;
.super Ljava/lang/Object;
.source "PictureTaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/PictureTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureProgress"
.end annotation


# virtual methods
.method public abstract cancelProgress()V
.end method

.method public abstract createExposureIndicator()Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createExposureIndicator(I)Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
