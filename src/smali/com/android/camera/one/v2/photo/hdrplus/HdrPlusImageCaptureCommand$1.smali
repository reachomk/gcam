.class final Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;
.super Ljava/lang/Object;
.source "HdrPlusImageCaptureCommand.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$lock3A:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

.field private synthetic val$meteringLock:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private synthetic val$session:Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;Lcom/google/android/apps/camera/async/SafeCloseable;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;->val$lock3A:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;->val$session:Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;

    iput-object p3, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;->val$meteringLock:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;->val$lock3A:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V

    .line 256
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;->val$session:Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V

    .line 257
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;->val$meteringLock:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;->val$meteringLock:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 260
    :cond_0
    return-void
.end method
