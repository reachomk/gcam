.class public interface abstract Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;
.super Ljava/lang/Object;
.source "PictureTaker.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/PictureTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessingProgress"
.end annotation


# virtual methods
.method public abstract setCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract setFinalResult$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I54PBJELM78EP9AO______(Lcom/google/common/collect/Multimaps;)V
.end method

.method public abstract setRemoteThumbnail([B)V
.end method

.method public abstract setThumbnail(Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateProgress(F)V
.end method

.method public abstract updateProgressMessage(Lcom/android/camera/ui/UiString;)V
.end method
