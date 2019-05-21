.class public interface abstract Lcom/android/camera/one/OneCamera;
.super Ljava/lang/Object;
.source "OneCamera.java"

# interfaces
.implements Lcom/android/camera/one/AutoFocusTrigger;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OneCamera$PictureSaverCallback;,
        Lcom/android/camera/one/OneCamera$PictureCallback;,
        Lcom/android/camera/one/OneCamera$Facing;
    }
.end annotation


# virtual methods
.method public abstract getOneCameraState$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ1ADQ62T357C______()Lcom/google/android/gms/internal/zzaih;
.end method

.method public abstract start()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O94A1K6UT3F8DGN0T3LE9IL0OBIC5MMAT35E9PJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKKOORFDKNMERRFCTM6ABR3DTMMQRRE5TQN8QBC5THMURJ3ELP74PBEEGNKOQBJEHIMSOB2DHIKCTBKELP6AEO_(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/googlehelp/internal/common/zzd;",
            "Lcom/android/camera/session/StackableSession;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end method
