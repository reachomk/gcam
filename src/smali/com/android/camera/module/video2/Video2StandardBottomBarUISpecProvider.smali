.class public final Lcom/android/camera/module/video2/Video2StandardBottomBarUISpecProvider;
.super Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;
.source "Video2StandardBottomBarUISpecProvider.java"


# instance fields
.field private final isVideoSnapshotSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "Vid2StdBtmBarSpec"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/BottomBarUICallback;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/inject/app/SystemServicesModule;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/util/flags/Flags;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;-><init>(Lcom/android/camera/module/BottomBarUICallback;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/inject/app/SystemServicesModule;Lcom/android/camera/module/video2/Video2Settings;)V

    .line 39
    iput-boolean p8, p0, Lcom/android/camera/module/video2/Video2StandardBottomBarUISpecProvider;->isVideoSnapshotSupported:Z

    .line 40
    return-void
.end method


# virtual methods
.method public final provideBottomBarUISpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/camera/module/video2/Video2BottomBarUISpecProviderBase;->provideBottomBarUISpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/android/camera/module/video2/Video2StandardBottomBarUISpecProvider;->isVideoSnapshotSupported:Z

    iput-boolean v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->isVideoSnapshotSupported:Z

    .line 48
    return-object v0
.end method
