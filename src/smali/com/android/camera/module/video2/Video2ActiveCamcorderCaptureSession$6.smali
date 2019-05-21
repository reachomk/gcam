.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$6;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderCaptureSession.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/gms/common/internal/zzf$zza;",
        "Lcom/google/android/gms/common/internal/zzf$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$6;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    check-cast p1, Lcom/google/android/gms/common/internal/zzf$zza;

    .line 1381
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$6;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0, p1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E91M2S3KELP6AKR5EDPMIRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF6996AORFE9I6IRJ785P78QB6C5HN8SPR55B0____(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/google/android/gms/common/internal/zzf$zza;)V

    .line 375
    return-object p1
.end method
