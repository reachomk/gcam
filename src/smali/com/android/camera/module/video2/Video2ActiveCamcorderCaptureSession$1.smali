.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$1;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderCaptureSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

.field private synthetic val$recordingArtifacts$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPIA9IM6RRICHKMSPQ1E9Q6IPJ1CDQ76EO_:Lcom/google/android/gms/common/internal/zzf$zza;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/google/android/gms/common/internal/zzf$zza;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    iput-object p2, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$1;->val$recordingArtifacts$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPIA9IM6RRICHKMSPQ1E9Q6IPJ1CDQ76EO_:Lcom/google/android/gms/common/internal/zzf$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$1;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$1;->val$recordingArtifacts$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPIA9IM6RRICHKMSPQ1E9Q6IPJ1CDQ76EO_:Lcom/google/android/gms/common/internal/zzf$zza;

    invoke-static {v0, v1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF690M6T39EPIK6OBDCDNN4P35E91M2S3KELP6AKR5EDPMIRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF6996AORFE9I6IRJ785P78QB6C5HN8SPR55B0____(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;Lcom/google/android/gms/common/internal/zzf$zza;)V

    .line 162
    return-void
.end method
