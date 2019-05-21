.class public interface abstract Lcom/android/camera/one/v2/photo/PictureTaker;
.super Ljava/lang/Object;
.source "PictureTaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;,
        Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;
    }
.end annotation


# virtual methods
.method public abstract getAvailability()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end method
