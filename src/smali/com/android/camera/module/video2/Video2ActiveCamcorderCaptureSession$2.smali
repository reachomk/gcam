.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$2;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderCaptureSession.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->onMaxDurationReached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
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
    .line 181
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$2;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 181
    .line 1184
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession$2;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->access$100(Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->onMaxDurationReached()V

    .line 181
    return-void
.end method
