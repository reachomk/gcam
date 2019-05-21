.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$3;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderRecordingSession.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->stopRecording(Z)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/google/common/base/Optional",
        "<",
        "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
        ">;",
        "Lcom/google/android/gms/common/internal/zzf$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$3;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 139
    check-cast p1, Lcom/google/common/base/Optional;

    .line 1144
    new-instance v0, Lcom/google/android/gms/common/internal/zzf$zza;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$3;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    .line 1145
    invoke-static {v1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$700(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/zzf$zza;-><init>(Lcom/google/common/base/Optional;Ljava/util/List;)V

    .line 139
    return-object v0
.end method
