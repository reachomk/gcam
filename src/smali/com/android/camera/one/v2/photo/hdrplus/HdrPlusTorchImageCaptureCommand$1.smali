.class final Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;
.super Ljava/lang/Object;
.source "HdrPlusTorchImageCaptureCommand.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$lock3A:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

.field private synthetic val$meteringLock:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private synthetic val$session:Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;

.field private synthetic val$torchLock:Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;Lcom/google/android/apps/camera/async/SafeCloseable;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$lock3A:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$torchLock:Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;

    iput-object p3, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$session:Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;

    iput-object p4, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$meteringLock:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$lock3A:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V

    .line 265
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$torchLock:Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;->close()V

    .line 266
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$session:Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V

    .line 267
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$meteringLock:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;->val$meteringLock:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 270
    :cond_0
    return-void
.end method
