.class final Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$3;
.super Ljava/lang/Object;
.source "CaptureProgressImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->cancelProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$3;->this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$3;->this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->access$000(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$3;->this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;->access$500$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T1M2S3KELP6AK3IDTJN4PBJED4MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;)Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureProgressCanceled()V

    .line 108
    :cond_0
    return-void
.end method
